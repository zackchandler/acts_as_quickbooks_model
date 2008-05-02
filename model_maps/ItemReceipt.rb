module QBXML
  module ModelMaps
    ItemReceipt = {
      :txn_id => 'TxnID',
      :time_created => 'TimeCreated',
      :time_modified => 'TimeModified',
      :edit_sequence => 'EditSequence',
      :txn_number => 'TxnNumber',
      :vendor_ref_list_id => 'VendorRef/ListID',
      :vendor_ref_full_name => 'VendorRef/FullName',
      :ap_account_ref_list_id => 'APAccountRef/ListID',
      :ap_account_ref_full_name => 'APAccountRef/FullName',
      :txn_date => 'TxnDate',
      :total_amount => 'TotalAmount',
      :ref_number => 'RefNumber',
      :memo => 'Memo'
    }
  end
end
