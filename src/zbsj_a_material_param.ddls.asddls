@EndUserText.label: 'Parameter for Material Creation'
define abstract entity ZBSJ_A_MATERIAL_PARAM
{
  @EndUserText.label: 'Material ID'
  MaterialId   : zde_material_id;
  
  @EndUserText.label: 'Material Name'
  MaterialName : abap.char(120);
  
  @EndUserText.label: 'Base Unit of Measure'
  BaseUom      : abap.unit(3);
  
  @EndUserText.label: 'Unit Price'
  @Semantics.amount.currencyCode: 'Currency'
  UnitPrice    : abap.curr(15,2);
  
  @EndUserText.label: 'Currency Code'
  Currency     : abap.cuky;
  
  @EndUserText.label: 'Tax Code'
  TaxCode      : zde_tax_code;
      
}
