t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 31
t.boolean :is_active
t.boolean :is_used_on_purchase_transaction
t.string :item_desc, :limit => 4095
t.decimal :tax_rate, :precision => 9, :scale => 2
t.string :tax_vendor_ref_list_id, :limit => 36
t.string :tax_vendor_ref_full_name, :limit => 41
t.string :sales_tax_return_line_number, :limit => 79