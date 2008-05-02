# auto-generated from json definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 31
t.string :full_name, :limit => 159
t.boolean :is_active
t.string :parent_ref_list_id, :limit => 36
t.string :parent_ref_full_name
t.integer :sublevel
t.string :manufacturer_part_number, :limit => 31
t.string :unit_of_measure_set_ref_list_id, :limit => 36
t.string :unit_of_measure_set_ref_full_name, :limit => 31
t.boolean :is_tax_included
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.string :sales_desc, :limit => 4095
t.decimal :sales_price, :precision => 9, :scale => 2
t.string :income_account_ref_list_id, :limit => 36
t.string :income_account_ref_full_name, :limit => 159
t.string :purchase_desc, :limit => 4095
t.decimal :purchase_cost, :precision => 9, :scale => 2
t.string :purchase_tax_code_ref_list_id, :limit => 36
t.string :purchase_tax_code_ref_full_name, :limit => 3
t.string :cogs_account_ref_list_id, :limit => 36
t.string :cogs_account_ref_full_name, :limit => 159
t.string :pref_vendor_ref_list_id, :limit => 36
t.string :pref_vendor_ref_full_name, :limit => 41
t.string :asset_account_ref_list_id, :limit => 36
t.string :asset_account_ref_full_name, :limit => 159
t.decimal :reorder_point, :precision => 9, :scale => 2
t.decimal :quantity_on_hand, :precision => 9, :scale => 2
t.decimal :average_cost, :precision => 9, :scale => 2
t.decimal :quantity_on_order, :precision => 9, :scale => 2
t.decimal :quantity_on_sales_order, :precision => 9, :scale => 2
