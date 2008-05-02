t.string :txn_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.integer :txn_number
t.string :customer_ref_list_id, :limit => 36
t.string :customer_ref_full_name, :limit => 209
t.string :class_ref_list_id, :limit => 36
t.string :class_ref_full_name, :limit => 159
t.string :template_ref_list_id, :limit => 36
t.string :template_ref_full_name, :limit => 31
t.datetime :txn_date
t.string :ref_number, :limit => 11
t.string :bill_address_addr1, :limit => 41
t.string :bill_address_addr2, :limit => 41
t.string :bill_address_addr3, :limit => 41
t.string :bill_address_addr4, :limit => 41
t.string :bill_address_addr5, :limit => 41
t.string :bill_address_city, :limit => 31
t.string :bill_address_state, :limit => 21
t.string :bill_address_postal_code, :limit => 13
t.string :bill_address_country, :limit => 31
t.string :bill_address_note, :limit => 41
t.string :bill_address_block_addr1, :limit => 41
t.string :bill_address_block_addr2, :limit => 41
t.string :bill_address_block_addr3, :limit => 41
t.string :bill_address_block_addr4, :limit => 41
t.string :bill_address_block_addr5, :limit => 41
t.string :ship_address_addr1, :limit => 41
t.string :ship_address_addr2, :limit => 41
t.string :ship_address_addr3, :limit => 41
t.string :ship_address_addr4, :limit => 41
t.string :ship_address_addr5, :limit => 41
t.string :ship_address_city, :limit => 31
t.string :ship_address_state, :limit => 21
t.string :ship_address_postal_code, :limit => 13
t.string :ship_address_country, :limit => 31
t.string :ship_address_note, :limit => 41
t.string :ship_address_block_addr1, :limit => 41
t.string :ship_address_block_addr2, :limit => 41
t.string :ship_address_block_addr3, :limit => 41
t.string :ship_address_block_addr4, :limit => 41
t.string :ship_address_block_addr5, :limit => 41
t.boolean :is_active
t.string :po_number, :limit => 25
t.string :terms_ref_list_id, :limit => 36
t.string :terms_ref_full_name, :limit => 31
t.datetime :due_date
t.string :sales_rep_ref_list_id, :limit => 36
t.string :sales_rep_ref_full_name, :limit => 5
t.string :fob, :limit => 13
t.decimal :subtotal, :precision => 9, :scale => 2
t.string :item_sales_tax_ref_list_id, :limit => 36
t.string :item_sales_tax_ref_full_name, :limit => 31
t.decimal :sales_tax_percentage, :precision => 9, :scale => 2
t.decimal :sales_tax_total, :precision => 9, :scale => 2
t.decimal :total_amount, :precision => 9, :scale => 2
t.string :memo, :limit => 4095
t.string :customer_msg_ref_list_id, :limit => 36
t.string :customer_msg_ref_full_name, :limit => 101
t.boolean :is_to_be_emailed
t.boolean :is_tax_included
t.string :customer_sales_tax_code_ref_list_id, :limit => 36
t.string :customer_sales_tax_code_ref_full_name, :limit => 3
t.string :other, :limit => 29