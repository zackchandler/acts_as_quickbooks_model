# auto-generated from json definitions

# new table definitions
t.string :txn_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.integer :txn_number
t.datetime :txn_date
t.string :entity_ref_list_id, :limit => 36
t.string :entity_ref_full_name, :limit => 209
t.string :customer_ref_list_id, :limit => 36
t.string :customer_ref_full_name, :limit => 209
t.string :item_service_ref_list_id, :limit => 36
t.string :item_service_ref_full_name, :limit => 159
t.decimal :rate, :precision => 9, :scale => 2
t.string :duration
t.string :class_ref_list_id, :limit => 36
t.string :class_ref_full_name, :limit => 159
t.string :payroll_item_wage_ref_list_id, :limit => 36
t.string :payroll_item_wage_ref_full_name, :limit => 31
t.string :notes, :limit => 4095
t.string :billable_status
t.boolean :is_billable
t.boolean :is_billed

# add_column definitions
add_column :table_name, :txn_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :txn_number, :integer
add_column :table_name, :txn_date, :datetime
add_column :table_name, :entity_ref_list_id, :string, :limit => 36
add_column :table_name, :entity_ref_full_name, :string, :limit => 209
add_column :table_name, :customer_ref_list_id, :string, :limit => 36
add_column :table_name, :customer_ref_full_name, :string, :limit => 209
add_column :table_name, :item_service_ref_list_id, :string, :limit => 36
add_column :table_name, :item_service_ref_full_name, :string, :limit => 159
add_column :table_name, :rate, :decimal, :precision => 9, :scale => 2
add_column :table_name, :duration, :string
add_column :table_name, :class_ref_list_id, :string, :limit => 36
add_column :table_name, :class_ref_full_name, :string, :limit => 159
add_column :table_name, :payroll_item_wage_ref_list_id, :string, :limit => 36
add_column :table_name, :payroll_item_wage_ref_full_name, :string, :limit => 31
add_column :table_name, :notes, :string, :limit => 4095
add_column :table_name, :billable_status, :string
add_column :table_name, :is_billable, :boolean
add_column :table_name, :is_billed, :boolean

# remove_column definitions
remove_column :table_name, :txn_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :txn_number
remove_column :table_name, :txn_date
remove_column :table_name, :entity_ref_list_id
remove_column :table_name, :entity_ref_full_name
remove_column :table_name, :customer_ref_list_id
remove_column :table_name, :customer_ref_full_name
remove_column :table_name, :item_service_ref_list_id
remove_column :table_name, :item_service_ref_full_name
remove_column :table_name, :rate
remove_column :table_name, :duration
remove_column :table_name, :class_ref_list_id
remove_column :table_name, :class_ref_full_name
remove_column :table_name, :payroll_item_wage_ref_list_id
remove_column :table_name, :payroll_item_wage_ref_full_name
remove_column :table_name, :notes
remove_column :table_name, :billable_status
remove_column :table_name, :is_billable
remove_column :table_name, :is_billed
