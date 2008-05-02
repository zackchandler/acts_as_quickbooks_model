# auto-generated from json definitions
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
