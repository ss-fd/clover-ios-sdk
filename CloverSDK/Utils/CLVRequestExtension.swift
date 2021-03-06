//
//  CLVRequestExtension.swift
//  CloverSDK
//
//  Created by Yusuf on 3/15/16.
//  Copyright © 2016 Clover Network, Inc. All rights reserved.
//

import Foundation

import Alamofire
import SwiftyJSON
import ObjectMapper

extension CLVRequest {
  
  // MARK: - Make Request methods:
  
  /// Get a single Clover object using a RETRIEVE endpoint
  public func makeRequestObj<T: Mappable>(success: (T?) -> Void, _ failure: ErrorHandler) {
    makeRequestAndGetResponseValidation() { validation in
      switch validation {
      case .SUCCESS(let value): success(self.mapObject(value))
      case .FAILURE(let error): failure(error)
      case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
      case .TOO_MANY_REQUESTS_EXCEPTION_429:
        if CLVRequest.retryFailedRequestsWith429 { self.makeRequestObj(0, success, failure) }
        else { failure(CLVError.TooManyRequestsException) }
      }
    }
  }
  
  private func makeRequestObj<T: Mappable>(retryCount: Int, _ success: (T?) -> Void, _ failure: ErrorHandler) {
    log429(retryCount)
    do_after(seconds: (2**retryCount) + 0.1) {
      self.makeRequestAndGetResponseValidation() { validation in
        switch validation {
        case .SUCCESS(let value): success(self.mapObject(value)); self.log429Success(retryCount)
        case .FAILURE(let error): failure(error)
        case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
        case .TOO_MANY_REQUESTS_EXCEPTION_429:
          if retryCount < CLVRequest.retryCountAfter429 { self.makeRequestObj(retryCount + 1, success, failure) }
          else { failure(CLVError.TooManyRequestsException) }
        }
      }
    }
  }
  
  /// Get an array of Clover objects using a LIST endpoint
  public func makeRequestArr<T: Mappable>(success: ([T]) -> Void, _ failure: ErrorHandler) {
    self.makeRequestAndGetResponseValidation() { validation in
      switch validation {
      case .SUCCESS(let value): success(self.mapArray(value))
      case .FAILURE(let error): failure(error)
      case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
      case .TOO_MANY_REQUESTS_EXCEPTION_429:
        if CLVRequest.retryFailedRequestsWith429 { self.makeRequestArr(0, success, failure) }
        else { failure(CLVError.TooManyRequestsException) }
      }
    }
  }
  
  private func makeRequestArr<T: Mappable>(retryCount: Int, _ success: ([T]) -> Void, _ failure: ErrorHandler) {
    log429(retryCount)
    do_after(seconds: (2**retryCount) + 0.1) {
      self.makeRequestAndGetResponseValidation() { validation in
        switch validation {
        case .SUCCESS(let value): success(self.mapArray(value)); self.log429Success(retryCount)
        case .FAILURE(let error): failure(error)
        case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
        case .TOO_MANY_REQUESTS_EXCEPTION_429:
          if retryCount < CLVRequest.retryCountAfter429 { self.makeRequestArr(retryCount + 1, success, failure) }
          else { failure(CLVError.TooManyRequestsException) }
        }
      }
    }
  }
  
  /// Get AnyObject
  public func makeRequest(success: (AnyObject?) -> Void, _ failure: ErrorHandler) {
    self.makeRequestAndGetResponseValidation() { validation in
      switch validation {
      case .SUCCESS(let value): success(self.mapAnyObject(value))
      case .FAILURE(let error): failure(error)
      case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
      case .TOO_MANY_REQUESTS_EXCEPTION_429:
        if CLVRequest.retryFailedRequestsWith429 { self.makeRequest(0, success, failure) }
        else { failure(CLVError.TooManyRequestsException) }
      }
    }
  }
  
  private func makeRequest(retryCount: Int, _ success: (AnyObject?) -> Void, _ failure: ErrorHandler) {
    log429(retryCount)
    do_after(seconds: (2**retryCount) + 0.1) {
      self.makeRequestAndGetResponseValidation() { validation in
        switch validation {
        case .SUCCESS(let value): success(self.mapAnyObject(value))
        case .FAILURE(let error): failure(error)
        case .UNAUTHORIZED_EXCEPTION_401: failure(CLVError.UnauthorizedException)
        case .TOO_MANY_REQUESTS_EXCEPTION_429:
          if retryCount < CLVRequest.retryCountAfter429 { self.makeRequest(retryCount + 1, success, failure) }
          else { failure(CLVError.TooManyRequestsException) }
        }
      }
    }
  }
  
  
  // MARK: - CLVRequestQueue
  
  class CLVRequestQueue {
    private static var queue: [() -> Void] = []
    weak private static var timer: NSTimer?
    
    class func addRequestToQueue(request: () -> Void) {
      queue.append(request)
      activateTimer()
    }
    
    @objc private class func makeFirstRequest() {
      if !queue.isEmpty { queue.removeFirst()() }
      else { deactivateTimer() }
    }
    
    private class func activateTimer() {
      guard timer == nil else { return }
      timer = NSTimer.scheduledTimerWithTimeInterval(CLVRequest.requestRateLimitTime, target: self, selector: #selector(makeFirstRequest), userInfo: nil, repeats: true)
    }
    
    private class func deactivateTimer() {
      timer?.invalidate()
    }
  }
  
  
  // MARK: - Helpers
  
  // Closures to handle data in success calls:
  func mapObject<T: Mappable>(value: AnyObject) -> T? { return Mapper<T>().map(JSON(value).object) }
  func mapArray<T: Mappable>(value: AnyObject) -> [T] { return JSON(value)["elements"].arrayValue.map({ Mapper<T>().map($0.object)! }) }
  func mapAnyObject(value: AnyObject) -> AnyObject { return JSON(value).object }
  
  func makeRequestAndGetResponseValidation(switchBlock: (CLVValidation) -> Void) {
    if let requestValidationError = validateCLVRequest() {
      switchBlock(.FAILURE(requestValidationError))
      return
    }
    
    let makeRequestBlock: () -> Void = {
      Alamofire
        .request(self.httpMethod, self.getUrlString(), parameters: self.payload, encoding: .JSON, headers: self.getHeaders())
        .validate()
        .responseJSON { response in
          switchBlock(self.validateResponse(response: response))
      }
    }
    
    if CLVRequest.autoDelayRequests { CLVRequestQueue.addRequestToQueue(makeRequestBlock) }
    else { makeRequestBlock() }
  }
  
  internal enum CLVValidation {
    case SUCCESS(AnyObject)
    case FAILURE(CLVError)
    case TOO_MANY_REQUESTS_EXCEPTION_429
    case UNAUTHORIZED_EXCEPTION_401
  }
  
  /// This validation function is necessary because Alamofire's .validate() method ignores the server messages if it's a non-200 status code
  /// To be used post-request
  internal func validateResponse(response response: Response<AnyObject, NSError>) -> CLVValidation {
    logRequest(responseData: response.data, statusCode: response.response?.statusCode)
    if let error = response.result.error {
      if let statusCode = response.response?.statusCode, data = response.data where error.code == -6003 {
        if statusCode == 429 { return .TOO_MANY_REQUESTS_EXCEPTION_429 }
        if statusCode == 401 { return .UNAUTHORIZED_EXCEPTION_401 }
        let serverMessage = JSON(data: data)["message"].stringValue
        return .FAILURE(CLVError.UnacceptableStatusCode(statusCode: statusCode, serverMessage: serverMessage))
      } else {
        return .FAILURE(CLVError.Error(error))
      }
    } else {
      guard let result = response.result.value else { return .FAILURE(CLVError.UnknownError) }
      return .SUCCESS(result)
    }
  }
  
  /// Validates the CLVRequest object to be called before making a request to make sure it has necessary values filled in
  internal func validateCLVRequest() -> CLVError? {
    // todo: potentially add more validations
    return (getUrlString() =~ "\\{(\\w*)\\}")
      ? CLVError.Error(CLVError.generateNSError(code: -1, userInfo: ["MISSING_PATH_PARAMS_ERROR": getUrlString()]))
      : nil
  }
  
  internal func log429(retryCount: Int) {
    logIfDebug("429 received, retry count: \(retryCount + 1)")
  }
  
  internal func log429Success(retryCount: Int) {
    logIfDebug("Success on retry: \(retryCount + 1) after 429")
  }
  
}
