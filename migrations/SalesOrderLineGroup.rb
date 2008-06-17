# auto-generated from json definitions

# new table definitions
t.string :txn_line_id, :limit => 36
t.string :item_group_ref_list_id, :limit => 36
t.string :item_group_ref_full_name, :limit => 31
t.string :desc, :limit => 4095
t.decimal :quantity, :precision => 9, :scale => 2
t.string :unit_of_measure, :limit => 31
t.string :override_uom_set_ref_list_id, :limit => 36
t.string :override_uom_set_ref_full_name, :limit => 31
t.boolean :is_print_items_in_group
t.decimal :total_amount, :precision => 9, :scale => 2

# add_column definitions
add_column :table_name, :txn_line_id, :string, :limit => 36
add_column :table_name, :item_group_ref_list_id, :string, :limit => 36
add_column :table_name, :item_group_ref_full_name, :string, :limit => 31
add_column :table_name, :desc, :string, :limit => 4095
add_column :table_name, :quantity, :decimal, :precision => 9, :scale => 2
add_column :table_name, :unit_of_measure, :string, :limit => 31
add_column :table_name, :override_uom_set_ref_list_id, :string, :limit => 36
add_column :table_name, :override_uom_set_ref_full_name, :string, :limit => 31
add_column :table_name, :is_print_items_in_group, :boolean
add_column :table_name, :total_amount, :decimal, :precision => 9, :scale => 2

# remove_column definitions
remove_column :table_name, :txn_line_id
remove_column :table_name, :item_group_ref_list_id
remove_column :table_name, :item_group_ref_full_name
remove_column :table_name, :desc
remove_column :table_name, :quantity
remove_column :table_name, :unit_of_measure
remove_column :table_name, :override_uom_set_ref_list_id
remove_column :table_name, :override_uom_set_ref_full_name
remove_column :table_name, :is_print_items_in_group
remove_column :table_name, :total_amount
