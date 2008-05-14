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
t.string :account_type
t.string :detail_account_type
t.string :special_account_type
t.boolean :is_tax_account
t.string :account_number, :limit => 7
t.string :bank_number, :limit => 25
t.string :last_check_number
t.string :desc, :limit => 200
t.decimal :balance, :precision => 9, :scale => 2
t.decimal :total_balance, :precision => 9, :scale => 2
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.integer :tax_line_info_ret_tax_line_id
t.string :tax_line_info_ret_tax_line_name, :limit => 256
t.string :cash_flow_classification

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
add_column :table_name, :account_type, :string
add_column :table_name, :detail_account_type, :string
add_column :table_name, :special_account_type, :string
add_column :table_name, :is_tax_account, :boolean
add_column :table_name, :account_number, :string, :limit => 7
add_column :table_name, :bank_number, :string, :limit => 25
add_column :table_name, :last_check_number, :string
add_column :table_name, :desc, :string, :limit => 200
add_column :table_name, :balance, :decimal, :precision => 9, :scale => 2
add_column :table_name, :total_balance, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :tax_line_info_ret_tax_line_id, :integer
add_column :table_name, :tax_line_info_ret_tax_line_name, :string, :limit => 256
add_column :table_name, :cash_flow_classification, :string

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
remove_column :table_name, :account_type
remove_column :table_name, :detail_account_type
remove_column :table_name, :special_account_type
remove_column :table_name, :is_tax_account
remove_column :table_name, :account_number
remove_column :table_name, :bank_number
remove_column :table_name, :last_check_number
remove_column :table_name, :desc
remove_column :table_name, :balance
remove_column :table_name, :total_balance
remove_column :table_name, :sales_tax_code_ref_list_id
remove_column :table_name, :sales_tax_code_ref_full_name
remove_column :table_name, :tax_line_info_ret_tax_line_id
remove_column :table_name, :tax_line_info_ret_tax_line_name
remove_column :table_name, :cash_flow_classification
