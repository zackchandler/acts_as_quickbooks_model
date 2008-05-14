# auto-generated from json definitions

# new table definitions
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

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 31
add_column :table_name, :is_active, :boolean
add_column :table_name, :is_used_on_purchase_transaction, :boolean
add_column :table_name, :item_desc, :string, :limit => 4095
add_column :table_name, :tax_rate, :decimal, :precision => 9, :scale => 2
add_column :table_name, :tax_vendor_ref_list_id, :string, :limit => 36
add_column :table_name, :tax_vendor_ref_full_name, :string, :limit => 41
add_column :table_name, :sales_tax_return_line_number, :string, :limit => 79

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :is_used_on_purchase_transaction
remove_column :table_name, :item_desc
remove_column :table_name, :tax_rate
remove_column :table_name, :tax_vendor_ref_list_id
remove_column :table_name, :tax_vendor_ref_full_name
remove_column :table_name, :sales_tax_return_line_number
