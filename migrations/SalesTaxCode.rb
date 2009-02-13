# auto-generated from json definitions

# new table definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 3
t.boolean :is_active
t.boolean :is_taxable
t.string :desc, :limit => 31
t.string :item_purchase_tax_ref_list_id, :limit => 36
t.string :item_purchase_tax_ref_full_name, :limit => 31
t.string :item_sales_tax_ref_list_id, :limit => 36
t.string :item_sales_tax_ref_full_name, :limit => 31

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 3
add_column :table_name, :is_active, :boolean
add_column :table_name, :is_taxable, :boolean
add_column :table_name, :desc, :string, :limit => 31
add_column :table_name, :item_purchase_tax_ref_list_id, :string, :limit => 36
add_column :table_name, :item_purchase_tax_ref_full_name, :string, :limit => 31
add_column :table_name, :item_sales_tax_ref_list_id, :string, :limit => 36
add_column :table_name, :item_sales_tax_ref_full_name, :string, :limit => 31

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :is_taxable
remove_column :table_name, :desc
remove_column :table_name, :item_purchase_tax_ref_list_id
remove_column :table_name, :item_purchase_tax_ref_full_name
remove_column :table_name, :item_sales_tax_ref_list_id
remove_column :table_name, :item_sales_tax_ref_full_name
