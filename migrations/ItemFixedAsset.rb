# auto-generated from json definitions

# new table definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 31
t.boolean :is_active
t.string :acquired_as
t.string :purchase_desc, :limit => 50
t.datetime :purchase_date
t.decimal :purchase_cost, :precision => 9, :scale => 2
t.string :vendor_or_payee_name, :limit => 50
t.string :asset_account_ref_list_id, :limit => 36
t.string :asset_account_ref_full_name, :limit => 159
t.string :fixed_asset_sales_info_sales_desc, :limit => 50
t.datetime :fixed_asset_sales_info_sales_date
t.decimal :fixed_asset_sales_info_sales_price, :precision => 9, :scale => 2
t.decimal :fixed_asset_sales_info_sales_expense, :precision => 9, :scale => 2
t.string :asset_desc, :limit => 50
t.string :location, :limit => 50
t.string :po_number, :limit => 30
t.string :serial_number, :limit => 30
t.datetime :warranty_exp_date
t.string :notes, :limit => 4095
t.string :asset_number, :limit => 10
t.decimal :cost_basis, :precision => 9, :scale => 2
t.decimal :year_end_accumulated_depreciation, :precision => 9, :scale => 2
t.decimal :year_end_book_value, :precision => 9, :scale => 2

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 31
add_column :table_name, :is_active, :boolean
add_column :table_name, :acquired_as, :string
add_column :table_name, :purchase_desc, :string, :limit => 50
add_column :table_name, :purchase_date, :datetime
add_column :table_name, :purchase_cost, :decimal, :precision => 9, :scale => 2
add_column :table_name, :vendor_or_payee_name, :string, :limit => 50
add_column :table_name, :asset_account_ref_list_id, :string, :limit => 36
add_column :table_name, :asset_account_ref_full_name, :string, :limit => 159
add_column :table_name, :fixed_asset_sales_info_sales_desc, :string, :limit => 50
add_column :table_name, :fixed_asset_sales_info_sales_date, :datetime
add_column :table_name, :fixed_asset_sales_info_sales_price, :decimal, :precision => 9, :scale => 2
add_column :table_name, :fixed_asset_sales_info_sales_expense, :decimal, :precision => 9, :scale => 2
add_column :table_name, :asset_desc, :string, :limit => 50
add_column :table_name, :location, :string, :limit => 50
add_column :table_name, :po_number, :string, :limit => 30
add_column :table_name, :serial_number, :string, :limit => 30
add_column :table_name, :warranty_exp_date, :datetime
add_column :table_name, :notes, :string, :limit => 4095
add_column :table_name, :asset_number, :string, :limit => 10
add_column :table_name, :cost_basis, :decimal, :precision => 9, :scale => 2
add_column :table_name, :year_end_accumulated_depreciation, :decimal, :precision => 9, :scale => 2
add_column :table_name, :year_end_book_value, :decimal, :precision => 9, :scale => 2

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :acquired_as
remove_column :table_name, :purchase_desc
remove_column :table_name, :purchase_date
remove_column :table_name, :purchase_cost
remove_column :table_name, :vendor_or_payee_name
remove_column :table_name, :asset_account_ref_list_id
remove_column :table_name, :asset_account_ref_full_name
remove_column :table_name, :fixed_asset_sales_info_sales_desc
remove_column :table_name, :fixed_asset_sales_info_sales_date
remove_column :table_name, :fixed_asset_sales_info_sales_price
remove_column :table_name, :fixed_asset_sales_info_sales_expense
remove_column :table_name, :asset_desc
remove_column :table_name, :location
remove_column :table_name, :po_number
remove_column :table_name, :serial_number
remove_column :table_name, :warranty_exp_date
remove_column :table_name, :notes
remove_column :table_name, :asset_number
remove_column :table_name, :cost_basis
remove_column :table_name, :year_end_accumulated_depreciation
remove_column :table_name, :year_end_book_value
