# auto-generated from json definitions

# new table definitions
t.string :txn_line_id, :limit => 36
t.string :item_ref_list_id, :limit => 36
t.string :item_ref_full_name
t.string :desc, :limit => 4095
t.decimal :quantity, :precision => 9, :scale => 2
t.string :unit_of_measure, :limit => 31
t.string :override_uom_set_ref_list_id, :limit => 36
t.string :override_uom_set_ref_full_name, :limit => 31
t.decimal :rate, :precision => 9, :scale => 2
t.decimal :rate_percent, :precision => 9, :scale => 2
t.string :class_ref_list_id, :limit => 36
t.string :class_ref_full_name, :limit => 159
t.decimal :amount, :precision => 9, :scale => 2
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.decimal :invoiced, :precision => 9, :scale => 2
t.boolean :is_manually_closed
t.string :other1, :limit => 29
t.string :other2, :limit => 29

# add_column definitions
add_column :table_name, :txn_line_id, :string, :limit => 36
add_column :table_name, :item_ref_list_id, :string, :limit => 36
add_column :table_name, :item_ref_full_name, :string
add_column :table_name, :desc, :string, :limit => 4095
add_column :table_name, :quantity, :decimal, :precision => 9, :scale => 2
add_column :table_name, :unit_of_measure, :string, :limit => 31
add_column :table_name, :override_uom_set_ref_list_id, :string, :limit => 36
add_column :table_name, :override_uom_set_ref_full_name, :string, :limit => 31
add_column :table_name, :rate, :decimal, :precision => 9, :scale => 2
add_column :table_name, :rate_percent, :decimal, :precision => 9, :scale => 2
add_column :table_name, :class_ref_list_id, :string, :limit => 36
add_column :table_name, :class_ref_full_name, :string, :limit => 159
add_column :table_name, :amount, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :invoiced, :decimal, :precision => 9, :scale => 2
add_column :table_name, :is_manually_closed, :boolean
add_column :table_name, :other1, :string, :limit => 29
add_column :table_name, :other2, :string, :limit => 29

# remove_column definitions
remove_column :table_name, :txn_line_id
remove_column :table_name, :item_ref_list_id
remove_column :table_name, :item_ref_full_name
remove_column :table_name, :desc
remove_column :table_name, :quantity
remove_column :table_name, :unit_of_measure
remove_column :table_name, :override_uom_set_ref_list_id
remove_column :table_name, :override_uom_set_ref_full_name
remove_column :table_name, :rate
remove_column :table_name, :rate_percent
remove_column :table_name, :class_ref_list_id
remove_column :table_name, :class_ref_full_name
remove_column :table_name, :amount
remove_column :table_name, :sales_tax_code_ref_list_id
remove_column :table_name, :sales_tax_code_ref_full_name
remove_column :table_name, :invoiced
remove_column :table_name, :is_manually_closed
remove_column :table_name, :other1
remove_column :table_name, :other2
