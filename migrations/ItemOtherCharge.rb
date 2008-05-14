# auto-generated from json definitions

# new table definitions
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
t.boolean :is_tax_included
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.string :sales_or_purchase_desc, :limit => 4095
t.decimal :sales_or_purchase_price, :precision => 9, :scale => 2
t.decimal :sales_or_purchase_price_percent, :precision => 9, :scale => 2
t.string :sales_or_purchase_account_ref_list_id, :limit => 36
t.string :sales_or_purchase_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_sales_desc, :limit => 4095
t.decimal :sales_and_purchase_sales_price, :precision => 9, :scale => 2
t.string :sales_and_purchase_income_account_ref_list_id, :limit => 36
t.string :sales_and_purchase_income_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_purchase_desc, :limit => 4095
t.decimal :sales_and_purchase_purchase_cost, :precision => 9, :scale => 2
t.string :sales_and_purchase_purchase_tax_code_ref_list_id, :limit => 36
t.string :sales_and_purchase_purchase_tax_code_ref_full_name, :limit => 3
t.string :sales_and_purchase_expense_account_ref_list_id, :limit => 36
t.string :sales_and_purchase_expense_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_pref_vendor_ref_list_id, :limit => 36
t.string :sales_and_purchase_pref_vendor_ref_full_name, :limit => 41
t.string :special_item_type

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 31
add_column :table_name, :full_name, :string, :limit => 159
add_column :table_name, :is_active, :boolean
add_column :table_name, :parent_ref_list_id, :string, :limit => 36
add_column :table_name, :parent_ref_full_name, :string
add_column :table_name, :sublevel, :integer
add_column :table_name, :is_tax_included, :boolean
add_column :table_name, :sales_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :sales_or_purchase_desc, :string, :limit => 4095
add_column :table_name, :sales_or_purchase_price, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_or_purchase_price_percent, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_or_purchase_account_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_or_purchase_account_ref_full_name, :string, :limit => 159
add_column :table_name, :sales_and_purchase_sales_desc, :string, :limit => 4095
add_column :table_name, :sales_and_purchase_sales_price, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_and_purchase_income_account_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_and_purchase_income_account_ref_full_name, :string, :limit => 159
add_column :table_name, :sales_and_purchase_purchase_desc, :string, :limit => 4095
add_column :table_name, :sales_and_purchase_purchase_cost, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_and_purchase_purchase_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_and_purchase_purchase_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :sales_and_purchase_expense_account_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_and_purchase_expense_account_ref_full_name, :string, :limit => 159
add_column :table_name, :sales_and_purchase_pref_vendor_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_and_purchase_pref_vendor_ref_full_name, :string, :limit => 41
add_column :table_name, :special_item_type, :string

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :full_name
remove_column :table_name, :is_active
remove_column :table_name, :parent_ref_list_id
remove_column :table_name, :parent_ref_full_name
remove_column :table_name, :sublevel
remove_column :table_name, :is_tax_included
remove_column :table_name, :sales_tax_code_ref_list_id
remove_column :table_name, :sales_tax_code_ref_full_name
remove_column :table_name, :sales_or_purchase_desc
remove_column :table_name, :sales_or_purchase_price
remove_column :table_name, :sales_or_purchase_price_percent
remove_column :table_name, :sales_or_purchase_account_ref_list_id
remove_column :table_name, :sales_or_purchase_account_ref_full_name
remove_column :table_name, :sales_and_purchase_sales_desc
remove_column :table_name, :sales_and_purchase_sales_price
remove_column :table_name, :sales_and_purchase_income_account_ref_list_id
remove_column :table_name, :sales_and_purchase_income_account_ref_full_name
remove_column :table_name, :sales_and_purchase_purchase_desc
remove_column :table_name, :sales_and_purchase_purchase_cost
remove_column :table_name, :sales_and_purchase_purchase_tax_code_ref_list_id
remove_column :table_name, :sales_and_purchase_purchase_tax_code_ref_full_name
remove_column :table_name, :sales_and_purchase_expense_account_ref_list_id
remove_column :table_name, :sales_and_purchase_expense_account_ref_full_name
remove_column :table_name, :sales_and_purchase_pref_vendor_ref_list_id
remove_column :table_name, :sales_and_purchase_pref_vendor_ref_full_name
remove_column :table_name, :special_item_type
