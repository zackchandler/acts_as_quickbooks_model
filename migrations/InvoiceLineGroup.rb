# auto-generated from json definitions
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
t.datetime :service_date
