
/**
 * Autogenerated file
 *
 * DO NOT EDIT DIRECTLY
 */

extension CLVSession {
  
  public func getMerchant(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Merchant.Merchant?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantAddress(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Base.Address?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ADDRESS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantGateway(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Merchant.Gateway?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_GATEWAY, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantProperties(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Merchant.MerchantProperties?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_PROPERTIES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantDefaultServiceCharge(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Base.ServiceCharge?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_DEFAULT_SERVICE_CHARGE, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantTipSuggestions(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Merchant.TipSuggestion]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TIP_SUGGESTIONS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTipSuggestion(withId tId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Merchant.TipSuggestion?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TIP_SUGGESTION, pathParams: ["tId": tId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantOrderTypes(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.OrderType]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER_TYPES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantOrderType(withId orderTypeId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Order.OrderType?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER_TYPE, pathParams: ["orderTypeId": orderTypeId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantSystemOrderTypes(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.SystemOrderType]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_SYSTEM_ORDER_TYPES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantRoles(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Employees.Role]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ROLES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantRole(withId rId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Employees.Role?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ROLE, pathParams: ["rId": rId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantTenders(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Base.Tender]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TENDERS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTender(withId tenderId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Base.Tender?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TENDER, pathParams: ["tenderId": tenderId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantOpeningHours(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Hours.HoursSet]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_OPENING_HOURS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantOpeningHour(withId hId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Hours.HoursSet?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_OPENING_HOUR, pathParams: ["hId": hId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantCashEvents(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Cash.CashEvent]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CASH_EVENTS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantEmployeeCashEvents(withId empId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Cash.CashEvent]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE_CASH_EVENTS, pathParams: ["empId": empId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantDeviceCashEvents(withId deviceId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Cash.CashEvent]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_DEVICE_CASH_EVENTS, pathParams: ["deviceId": deviceId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantCustomers(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Customers.Customer]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CUSTOMERS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantCustomer(withId customerId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Customers.Customer?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CUSTOMER, pathParams: ["customerId": customerId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantEmployees(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Employees.Employee]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantEmployee(withId empId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Employees.Employee?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE, pathParams: ["empId": empId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantShifts(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Employees.Shift]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_SHIFTS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantShift(withId shiftId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Employees.Shift?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_SHIFT, pathParams: ["shiftId": shiftId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantEmployeeShifts(withId empId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Employees.Shift]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE_SHIFTS, pathParams: ["empId": empId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantEmployeeShift(withEmpId empId: String, shiftId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Employees.Shift?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE_SHIFT, pathParams: ["empId": empId, "shiftId": shiftId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantEmployeeOrders(withId empId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.Order]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE_ORDERS, pathParams: ["empId": empId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantItems(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Item]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEMS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantItem(withId itemId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Item?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM, pathParams: ["itemId": itemId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantItemStocks(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.ItemStock]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_STOCKS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantItemStock(withId itemId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.ItemStock?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_STOCK, pathParams: ["itemId": itemId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantItemGroups(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.ItemGroup]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_GROUPS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantItemGroup(withId itemGroupId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.ItemGroup?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_GROUP, pathParams: ["itemGroupId": itemGroupId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantTags(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Tag]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAGS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTag(withId tagId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Tag?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAG, pathParams: ["tagId": tagId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantItemTags(withId itemId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Tag]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_TAGS, pathParams: ["itemId": itemId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTagItems(withId tagId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Item?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAG_ITEMS, pathParams: ["tagId": tagId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantTaxRates(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.TaxRate]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAX_RATES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTaxRate(withId taxId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.TaxRate?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAX_RATE, pathParams: ["taxId": taxId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantCategories(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Category]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CATEGORIES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantCategory(withId catId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Category?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CATEGORY, pathParams: ["catId": catId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantCategoryItems(withId catId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Item]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CATEGORY_ITEMS, pathParams: ["catId": catId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantItemCategories(withId itemId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Category]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ITEM_CATEGORIES, pathParams: ["itemId": itemId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantTaxRateItems(withId taxId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Item]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_TAX_RATE_ITEMS, pathParams: ["taxId": taxId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantModifierGroups(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.ModifierGroup]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_MODIFIER_GROUPS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantModifierGroup(withId modGroupId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.ModifierGroup?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_MODIFIER_GROUP, pathParams: ["modGroupId": modGroupId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantModifiers(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Modifier]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_MODIFIERS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantModifierGroupModifiers(withId modGroupId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Modifier]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_MODIFIER_GROUP_MODIFIERS, pathParams: ["modGroupId": modGroupId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantModifierGroupModifier(withModGroupId modGroupId: String, modId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Modifier?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_MODIFIER_GROUP_MODIFIER, pathParams: ["modGroupId": modGroupId, "modId": modId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantAttributes(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Attribute]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ATTRIBUTES, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantAttribute(withId attributeId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Attribute?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ATTRIBUTE, pathParams: ["attributeId": attributeId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantOptions(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Option]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_OPTIONS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantAttributeOptions(withId attributeId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Inventory.Option]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ATTRIBUTE_OPTIONS, pathParams: ["attributeId": attributeId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantAttributeOption(withAttributeId attributeId: String, optionId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Inventory.Option?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ATTRIBUTE_OPTION, pathParams: ["attributeId": attributeId, "optionId": optionId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantOrders(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.Order]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDERS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantOrder(withId orderId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Order.Order?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER, pathParams: ["orderId": orderId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantOrderDiscounts(withId orderId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.Discount]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER_DISCOUNTS, pathParams: ["orderId": orderId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantOrderLineItems(withId orderId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Order.LineItem]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER_LINE_ITEMS, pathParams: ["orderId": orderId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantOrderLineItem(withOrderId orderId: String, lineItemId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Order.LineItem?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_ORDER_LINE_ITEM, pathParams: ["orderId": orderId, "lineItemId": lineItemId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantAuthorizations(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Payments.Authorization]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_AUTHORIZATIONS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantAuthorization(withId authId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Payments.Authorization?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_AUTHORIZATION, pathParams: ["authId": authId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantPayments(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Payments.Payment]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_PAYMENTS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantPayment(withId payId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Payments.Payment?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_PAYMENT, pathParams: ["payId": payId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantEmployeePayments(withId empId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Payments.Payment]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_EMPLOYEE_PAYMENTS, pathParams: ["empId": empId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantRefunds(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Payments.Refund]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_REFUNDS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantRefund(withId refundId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Payments.Refund?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_REFUND, pathParams: ["refundId": refundId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getMerchantCredits(filters filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: ([CLVModels.Payments.Credit]) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CREDITS, filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestArr(success, failure)
  }
  
  public func getMerchantCredit(withId cId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Payments.Credit?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.MERCHANT_CREDIT, pathParams: ["cId": cId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getAppMerchantBillingInfo(withId aId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Apps.AppBillingInfo?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.APP_MERCHANT_BILLING_INFO, pathParams: ["aId": aId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
  public func getAppMerchantMetered(withAId aId: String, meteredId: String, filters: [String:String] = [:], expands: [String] = [],
    sorts: [String:SortType] = [:], params: [String:String] = [:], limit: UInt = 100, offset: UInt = 0,
    success: (CLVModels.Apps.AppMetered?) -> Void, failure: ErrorHandler) {
      getV3GetRequest(.APP_MERCHANT_METERED, pathParams: ["aId": aId, "meteredId": meteredId], filters: filters, expands: expands, sorts: sorts, params: params, limit: limit, offset: offset)
        .makeRequestObj(success, failure)
  }
  
}
