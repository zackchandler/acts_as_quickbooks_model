module QBXML
  module ModelMaps
    ItemNonInventory = {
      :list_id => 'ListID',
      :time_created => 'TimeCreated',
      :time_modified => 'TimeModified',
      :edit_sequence => 'EditSequence',
      :name => 'Name',
      :full_name => 'FullName',
      :is_active => 'IsActive',
      :parent_ref_list_id => 'ParentRef/ListID',
      :parent_ref_full_name => 'ParentRef/FullName',
      :sublevel => 'Sublevel',
      :manufacturer_part_number => 'ManufacturerPartNumber',
      :unit_of_measure_set_ref_list_id => 'UnitOfMeasureSetRef/ListID',
      :unit_of_measure_set_ref_full_name => 'UnitOfMeasureSetRef/FullName',
      :is_tax_included => 'IsTaxIncluded',
      :sales_tax_code_ref_list_id => 'SalesTaxCodeRef/ListID',
      :sales_tax_code_ref_full_name => 'SalesTaxCodeRef/FullName',
      :sales_or_purchase_desc => 'SalesOrPurchase/Desc',
      :sales_or_purchase_price => 'SalesOrPurchase/Price',
      :sales_or_purchase_price_percent => 'SalesOrPurchase/PricePercent',
      :sales_or_purchase_account_ref_list_id => 'SalesOrPurchase/AccountRef/ListID',
      :sales_or_purchase_account_ref_full_name => 'SalesOrPurchase/AccountRef/FullName',
      :sales_and_purchase_sales_desc => 'SalesAndPurchase/SalesDesc',
      :sales_and_purchase_sales_price => 'SalesAndPurchase/SalesPrice',
      :sales_and_purchase_income_account_ref_list_id => 'SalesAndPurchase/IncomeAccountRef/ListID',
      :sales_and_purchase_income_account_ref_full_name => 'SalesAndPurchase/IncomeAccountRef/FullName',
      :sales_and_purchase_purchase_desc => 'SalesAndPurchase/PurchaseDesc',
      :sales_and_purchase_purchase_cost => 'SalesAndPurchase/PurchaseCost',
      :sales_and_purchase_purchase_tax_code_ref_list_id => 'SalesAndPurchase/PurchaseTaxCodeRef/ListID',
      :sales_and_purchase_purchase_tax_code_ref_full_name => 'SalesAndPurchase/PurchaseTaxCodeRef/FullName',
      :sales_and_purchase_expense_account_ref_list_id => 'SalesAndPurchase/ExpenseAccountRef/ListID',
      :sales_and_purchase_expense_account_ref_full_name => 'SalesAndPurchase/ExpenseAccountRef/FullName',
      :sales_and_purchase_pref_vendor_ref_list_id => 'SalesAndPurchase/PrefVendorRef/ListID',
      :sales_and_purchase_pref_vendor_ref_full_name => 'SalesAndPurchase/PrefVendorRef/FullName'
    }
  end
end
