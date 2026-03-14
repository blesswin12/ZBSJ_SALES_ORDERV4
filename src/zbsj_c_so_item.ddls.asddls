@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View For Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZBSJ_C_SO_ITEM
  as projection on ZBSJ_I_SO_ITEM
{
      @EndUserText.label: 'Sales Order ID'
      @Search.defaultSearchElement: true
  key SalesOrderId,

      @EndUserText.label: 'Item Number'
      @Search.defaultSearchElement: true
  key ItemNo,

      @EndUserText.label: 'Material ID'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZBSJ_I_MATERIAL', element: 'MaterialId' } }]
      @ObjectModel.text.element: ['MaterialName']
      @Search.defaultSearchElement: true
      MaterialId,

      @EndUserText.label: 'Material Name'
      @Search.defaultSearchElement: true
      _Material.MaterialName as MaterialName,

      @EndUserText.label: 'Unit of Measure'
      Uom,

      @EndUserText.label: 'Currency'
      Currency,

      @Semantics.quantity.unitOfMeasure: 'Uom'
      @EndUserText.label: 'Quantity'
      Quantity,

      @EndUserText.label: 'Net Value'
      @Semantics.amount.currencyCode: 'Currency'
      NetValue,

      @EndUserText.label: 'Tax Value'
      @Semantics.amount.currencyCode: 'Currency'
      TaxValue,

      @EndUserText.label: 'Gross Value'
      @Semantics.amount.currencyCode: 'Currency'
      GrossValue,

      @EndUserText.label: 'Item Status'
      @ObjectModel.text.element: ['ItemStatusText']
      ItemStatus,

      @EndUserText.label: 'Item Status Text'
      @UI.hidden: true 
      ItemStatusText,

      @EndUserText.label: 'Created By'
      LocalCreatedBy,

      @EndUserText.label: 'Created At'
      LocalCreatedAt,

      @EndUserText.label: 'Last Changed By'
      LocalLastChangedBy,

      @EndUserText.label: 'Local Last Changed At'
      LocalLastChangedAt,

      /* Associations */
      _Header : redirected to parent ZBSJ_C_SO_HEADER,
      _Material
}
