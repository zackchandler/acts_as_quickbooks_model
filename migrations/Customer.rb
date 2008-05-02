# auto-generated from json definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 41
t.string :full_name, :limit => 209
t.boolean :is_active
t.string :parent_ref_list_id, :limit => 36
t.string :parent_ref_full_name
t.integer :sublevel
t.string :company_name, :limit => 41
t.string :salutation, :limit => 15
t.string :first_name, :limit => 25
t.string :middle_name, :limit => 5
t.string :last_name, :limit => 25
t.string :suffix
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
t.string :print_as, :limit => 41
t.string :phone, :limit => 21
t.string :mobile, :limit => 21
t.string :pager, :limit => 21
t.string :alt_phone, :limit => 21
t.string :fax, :limit => 21
t.string :email, :limit => 1023
t.string :contact, :limit => 41
t.string :alt_contact, :limit => 41
t.string :customer_type_ref_list_id, :limit => 36
t.string :customer_type_ref_full_name, :limit => 159
t.string :terms_ref_list_id, :limit => 36
t.string :terms_ref_full_name, :limit => 31
t.string :sales_rep_ref_list_id, :limit => 36
t.string :sales_rep_ref_full_name, :limit => 5
t.decimal :balance, :precision => 9, :scale => 2
t.decimal :total_balance, :precision => 9, :scale => 2
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.string :item_sales_tax_ref_list_id, :limit => 36
t.string :item_sales_tax_ref_full_name, :limit => 31
t.string :sales_tax_country, :limit => 31
t.string :resale_number, :limit => 21
t.string :account_number, :limit => 99
t.decimal :credit_limit, :precision => 9, :scale => 2
t.string :preferred_payment_method_ref_list_id, :limit => 36
t.string :preferred_payment_method_ref_full_name, :limit => 31
t.string :credit_card_info_credit_card_number, :limit => 25
t.integer :credit_card_info_expiration_month
t.integer :credit_card_info_expiration_year
t.string :credit_card_info_name_on_card, :limit => 41
t.string :credit_card_info_credit_card_address, :limit => 41
t.string :credit_card_info_credit_card_postal_code, :limit => 41
t.string :job_status
t.datetime :job_start_date
t.datetime :job_projected_end_date
t.datetime :job_end_date
t.string :job_desc, :limit => 99
t.string :job_type_ref_list_id, :limit => 36
t.string :job_type_ref_full_name, :limit => 159
t.string :notes, :limit => 4095
t.boolean :is_statement_with_parent
t.string :delivery_method
t.string :price_level_ref_list_id, :limit => 36
t.string :price_level_ref_full_name, :limit => 31
