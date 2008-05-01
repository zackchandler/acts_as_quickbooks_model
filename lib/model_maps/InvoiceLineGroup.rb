module QBXML
  module ModelMaps
    InvoiceLineGroup = {
      :txn_line_id => 'TxnLineID',
      :item_group_ref_list_id => 'ItemGroupRef/ListID',
      :item_group_ref_full_name => 'ItemGroupRef/FullName',
      :desc => 'Desc',
      :quantity => 'Quantity',
      :unit_of_measure => 'UnitOfMeasure',
      :override_uom_set_ref_list_id => 'OverrideUOMSetRef/ListID',
      :override_uom_set_ref_full_name => 'OverrideUOMSetRef/FullName',
      :is_print_items_in_group => 'IsPrintItemsInGroup',
      :total_amount => 'TotalAmount',
      :service_date => 'ServiceDate'
    }
  end
end
