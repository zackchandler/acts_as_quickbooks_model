# auto-generated from json definitions
t.string :txn_line_id, :limit => 36
t.string :item_ref_list_id, :limit => 36
t.string :item_ref_full_name
t.string :desc, :limit => 4095
t.decimal :quantity, :precision => 9, :scale => 2
t.string :unit_of_measure, :limit => 31
t.string :override_uom_set_ref_list_id, :limit => 36
t.string :override_uom_set_ref_full_name, :limit => 31
t.decimal :rate, :precision => 9, :scale => 2
t.decimal :rate_percent, :precision => 9, :scale => 2
t.string :class_ref_list_id, :limit => 36
t.string :class_ref_full_name, :limit => 159
t.decimal :amount, :precision => 9, :scale => 2
t.datetime :service_date
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.boolean :is_taxable
t.string :other1, :limit => 29
t.string :other2, :limit => 29
