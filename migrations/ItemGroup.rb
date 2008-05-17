# auto-generated from json definitions

# new table definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 31
t.boolean :is_active
t.string :item_desc, :limit => 4095
t.string :unit_of_measure_set_ref_list_id, :limit => 36
t.string :unit_of_measure_set_ref_full_name, :limit => 31
t.boolean :is_print_items_in_group
t.string :special_item_type

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 31
add_column :table_name, :is_active, :boolean
add_column :table_name, :item_desc, :string, :limit => 4095
add_column :table_name, :unit_of_measure_set_ref_list_id, :string, :limit => 36
add_column :table_name, :unit_of_measure_set_ref_full_name, :string, :limit => 31
add_column :table_name, :is_print_items_in_group, :boolean
add_column :table_name, :special_item_type, :string

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :item_desc
remove_column :table_name, :unit_of_measure_set_ref_list_id
remove_column :table_name, :unit_of_measure_set_ref_full_name
remove_column :table_name, :is_print_items_in_group
remove_column :table_name, :special_item_type
