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
