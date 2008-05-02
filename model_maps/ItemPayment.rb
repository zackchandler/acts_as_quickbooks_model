module QBXML
  module ModelMaps
    ItemPayment = {
      :list_id => 'ListID',
      :time_created => 'TimeCreated',
      :time_modified => 'TimeModified',
      :edit_sequence => 'EditSequence',
      :name => 'Name',
      :is_active => 'IsActive',
      :item_desc => 'ItemDesc',
      :deposit_to_account_ref_list_id => 'DepositToAccountRef/ListID',
      :deposit_to_account_ref_full_name => 'DepositToAccountRef/FullName',
      :payment_method_ref_list_id => 'PaymentMethodRef/ListID',
      :payment_method_ref_full_name => 'PaymentMethodRef/FullName'
    }
  end
end
