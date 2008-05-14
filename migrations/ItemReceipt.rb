# auto-generated from json definitions

# new table definitions
t.string :txn_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.integer :txn_number
t.string :vendor_ref_list_id, :limit => 36
t.string :vendor_ref_full_name, :limit => 41
t.string :ap_account_ref_list_id, :limit => 36
t.string :ap_account_ref_full_name, :limit => 159
t.datetime :txn_date
t.decimal :total_amount, :precision => 9, :scale => 2
t.string :ref_number, :limit => 20
t.string :memo, :limit => 4095

# add_column definitions
add_column :table_name, :txn_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :txn_number, :integer
add_column :table_name, :vendor_ref_list_id, :string, :limit => 36
add_column :table_name, :vendor_ref_full_name, :string, :limit => 41
add_column :table_name, :ap_account_ref_list_id, :string, :limit => 36
add_column :table_name, :ap_account_ref_full_name, :string, :limit => 159
add_column :table_name, :txn_date, :datetime
add_column :table_name, :total_amount, :decimal, :precision => 9, :scale => 2
add_column :table_name, :ref_number, :string, :limit => 20
add_column :table_name, :memo, :string, :limit => 4095

# remove_column definitions
remove_column :table_name, :txn_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :txn_number
remove_column :table_name, :vendor_ref_list_id
remove_column :table_name, :vendor_ref_full_name
remove_column :table_name, :ap_account_ref_list_id
remove_column :table_name, :ap_account_ref_full_name
remove_column :table_name, :txn_date
remove_column :table_name, :total_amount
remove_column :table_name, :ref_number
remove_column :table_name, :memo
