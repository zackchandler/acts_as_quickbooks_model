module QBXML
  module ModelMaps
    Account = {
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
      :account_type => 'AccountType',
      :detail_account_type => 'DetailAccountType',
      :special_account_type => 'SpecialAccountType',
      :is_tax_account => 'IsTaxAccount',
      :account_number => 'AccountNumber',
      :bank_number => 'BankNumber',
      :last_check_number => 'LastCheckNumber',
      :desc => 'Desc',
      :balance => 'Balance',
      :total_balance => 'TotalBalance',
      :sales_tax_code_ref_list_id => 'SalesTaxCodeRef/ListID',
      :sales_tax_code_ref_full_name => 'SalesTaxCodeRef/FullName',
      :tax_line_info_ret_tax_line_id => 'TaxLineInfoRet/TaxLineID',
      :tax_line_info_ret_tax_line_name => 'TaxLineInfoRet/TaxLineName',
      :cash_flow_classification => 'CashFlowClassification'
    }
  end
end
