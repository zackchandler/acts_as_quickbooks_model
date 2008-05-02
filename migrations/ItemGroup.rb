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
t.string :item_desc, :limit => 4095
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.decimal :discount_rate, :precision => 9, :scale => 2
t.decimal :discount_rate_percent, :precision => 9, :scale => 2
t.string :account_ref_list_id, :limit => 36
t.string :account_ref_full_name, :limit => 159
