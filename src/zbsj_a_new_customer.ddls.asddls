@EndUserText.label: 'Parameter for New Customer'
define abstract entity ZBSJ_A_NEW_CUSTOMER
{
  @EndUserText.label: 'Customer ID'
  customer_id     : zde_cus_id;
  
  @EndUserText.label: 'Customer Name'
  customer_name   : abap.char(80);
  
  @EndUserText.label: 'Phone Number'
  phone           : abap.char(30);
  
  @EndUserText.label: 'Email Address'
  email           : abap.char(255);
  
  @EndUserText.label: 'Street Address'
  address         : abap.char(255);
  
  @EndUserText.label: 'City'
  city            : abap.char(40);
  
  @EndUserText.label: 'Country'
  country         : abap.char(3);
  
  @EndUserText.label: 'Credit Limit'
  @Semantics.amount.currencyCode : 'currency'
  credit_limit    : abap.curr(15,2);
  
  @EndUserText.label: 'Currency Code'
  currency        : abap.cuky;
  
  @EndUserText.label: 'Active Status'
  is_active       : abap.char(1);
    
}
