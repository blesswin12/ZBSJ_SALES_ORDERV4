@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View For Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZBSJ_C_SO_HEADER
  provider contract transactional_query
  as projection on ZBSJ_I_SO_HEADER
{
      @EndUserText.label: 'Sales Order ID'
      @Search.defaultSearchElement: true
  key SalesOrderId,

      @EndUserText.label: 'Order Type'
      @Consumption.valueHelpDefinition: [{
             entity: { name: 'ZBSJ_I_ORDER_TYPES', element: 'OrderType' }
             }]
      OrderType,

      @EndUserText.label: 'Material ID'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZBSJ_I_MATERIAL', element: 'MaterialId' } }]
      @ObjectModel.text.element: ['MaterialName']
      MaterialId,

      @EndUserText.label: 'Material Name'
      _Material.MaterialName as MaterialName,

      @EndUserText.label: 'Company Code'
      CompanyCode,

      @EndUserText.label: 'Sales Organization'
      SalesOrg,

      @EndUserText.label: 'Customer ID'
      @ObjectModel.text.element: ['CustomerName']
      @Consumption.valueHelpDefinition: [{
         entity: { name: 'ZBSJ_I_CUSTOMER', element: 'CustomerId' },
         useForValidation: true
      }]
      CustomerId,

      @EndUserText.label: 'Customer Name'
      _Customer.CustomerName as CustomerName,

      @EndUserText.label: 'Order Date'
      OrderDate,

      @EndUserText.label: 'Required Delivery Date'
      ReqDeliveryDate,

      @EndUserText.label: 'Net Amount'
      @Semantics.amount.currencyCode: 'Currency'
      NetAmount,

      @EndUserText.label: 'Tax Amount'
      @Semantics.amount.currencyCode: 'Currency'
      TaxAmount,

      @EndUserText.label: 'Gross Amount'
      @Semantics.amount.currencyCode: 'Currency'
      GrossAmount,

      @EndUserText.label: 'Currency'
      Currency,    

      @EndUserText.label: 'Overall Status'
      @ObjectModel.text.element: ['OverallStatusText']
      OverallStatus,

      @EndUserText.label: 'Delivery Status'
      @ObjectModel.text.element: ['DeliveryStatusText']
      DeliveryStatus,

      @EndUserText.label: 'Delivery Status Text'
      DeliveryStatusText,

      @EndUserText.label: 'Billing Status'
      @ObjectModel.text.element: ['BillingStatusText']
      BillingStatus,

      @EndUserText.label: 'Billing Status Text'
      BillingStatusText,

      @EndUserText.label: 'Billing Criticality'
      BillingCriticality,

      @EndUserText.label: 'Payment Status'
      @ObjectModel.text.element: ['PaymentStatusText']
      PaymentStatus,

      @EndUserText.label: 'Payment Status Text'
      PaymentStatusText,

      @EndUserText.label: 'Created By'
      LocalCreatedBy,

      @EndUserText.label: 'Created At'
      LocalCreatedAt,

      @EndUserText.label: 'Last Changed By'
      LocalLastChangedBy,

      @EndUserText.label: 'Local Last Changed At'
      LocalLastChangedAt,

      @EndUserText.label: 'Last Changed At'
      LastChangedAt,

      @EndUserText.label: 'Delivery Criticality'
      DeliveryCriticality,

      @EndUserText.label: 'Payment Criticality'
      PaymentCriticality,

      @EndUserText.label: 'Overall Status Text'
      OverallStatusText,

      @EndUserText.label: 'Overall Criticality'
      OverallCriticality,

      /* Associations */
      _Company,
      _Currency,
      _Customer,
      _Item     : redirected to composition child ZBSJ_C_SO_ITEM,
      _SalesOrg,
      _Material : redirected to ZBSJ_C_MATERIAL
}
