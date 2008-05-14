# auto-generated from json definitions

# new table definitions
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

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 41
add_column :table_name, :full_name, :string, :limit => 209
add_column :table_name, :is_active, :boolean
add_column :table_name, :parent_ref_list_id, :string, :limit => 36
add_column :table_name, :parent_ref_full_name, :string
add_column :table_name, :sublevel, :integer
add_column :table_name, :company_name, :string, :limit => 41
add_column :table_name, :salutation, :string, :limit => 15
add_column :table_name, :first_name, :string, :limit => 25
add_column :table_name, :middle_name, :string, :limit => 5
add_column :table_name, :last_name, :string, :limit => 25
add_column :table_name, :suffix, :string
add_column :table_name, :bill_address_addr1, :string, :limit => 41
add_column :table_name, :bill_address_addr2, :string, :limit => 41
add_column :table_name, :bill_address_addr3, :string, :limit => 41
add_column :table_name, :bill_address_addr4, :string, :limit => 41
add_column :table_name, :bill_address_addr5, :string, :limit => 41
add_column :table_name, :bill_address_city, :string, :limit => 31
add_column :table_name, :bill_address_state, :string, :limit => 21
add_column :table_name, :bill_address_postal_code, :string, :limit => 13
add_column :table_name, :bill_address_country, :string, :limit => 31
add_column :table_name, :bill_address_note, :string, :limit => 41
add_column :table_name, :bill_address_block_addr1, :string, :limit => 41
add_column :table_name, :bill_address_block_addr2, :string, :limit => 41
add_column :table_name, :bill_address_block_addr3, :string, :limit => 41
add_column :table_name, :bill_address_block_addr4, :string, :limit => 41
add_column :table_name, :bill_address_block_addr5, :string, :limit => 41
add_column :table_name, :ship_address_addr1, :string, :limit => 41
add_column :table_name, :ship_address_addr2, :string, :limit => 41
add_column :table_name, :ship_address_addr3, :string, :limit => 41
add_column :table_name, :ship_address_addr4, :string, :limit => 41
add_column :table_name, :ship_address_addr5, :string, :limit => 41
add_column :table_name, :ship_address_city, :string, :limit => 31
add_column :table_name, :ship_address_state, :string, :limit => 21
add_column :table_name, :ship_address_postal_code, :string, :limit => 13
add_column :table_name, :ship_address_country, :string, :limit => 31
add_column :table_name, :ship_address_note, :string, :limit => 41
add_column :table_name, :ship_address_block_addr1, :string, :limit => 41
add_column :table_name, :ship_address_block_addr2, :string, :limit => 41
add_column :table_name, :ship_address_block_addr3, :string, :limit => 41
add_column :table_name, :ship_address_block_addr4, :string, :limit => 41
add_column :table_name, :ship_address_block_addr5, :string, :limit => 41
add_column :table_name, :print_as, :string, :limit => 41
add_column :table_name, :phone, :string, :limit => 21
add_column :table_name, :mobile, :string, :limit => 21
add_column :table_name, :pager, :string, :limit => 21
add_column :table_name, :alt_phone, :string, :limit => 21
add_column :table_name, :fax, :string, :limit => 21
add_column :table_name, :email, :string, :limit => 1023
add_column :table_name, :contact, :string, :limit => 41
add_column :table_name, :alt_contact, :string, :limit => 41
add_column :table_name, :customer_type_ref_list_id, :string, :limit => 36
add_column :table_name, :customer_type_ref_full_name, :string, :limit => 159
add_column :table_name, :terms_ref_list_id, :string, :limit => 36
add_column :table_name, :terms_ref_full_name, :string, :limit => 31
add_column :table_name, :sales_rep_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_rep_ref_full_name, :string, :limit => 5
add_column :table_name, :balance, :decimal, :precision => 9, :scale => 2
add_column :table_name, :total_balance, :decimal, :precision => 9, :scale => 2
add_column :table_name, :sales_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :item_sales_tax_ref_list_id, :string, :limit => 36
add_column :table_name, :item_sales_tax_ref_full_name, :string, :limit => 31
add_column :table_name, :sales_tax_country, :string, :limit => 31
add_column :table_name, :resale_number, :string, :limit => 21
add_column :table_name, :account_number, :string, :limit => 99
add_column :table_name, :credit_limit, :decimal, :precision => 9, :scale => 2
add_column :table_name, :preferred_payment_method_ref_list_id, :string, :limit => 36
add_column :table_name, :preferred_payment_method_ref_full_name, :string, :limit => 31
add_column :table_name, :credit_card_info_credit_card_number, :string, :limit => 25
add_column :table_name, :credit_card_info_expiration_month, :integer
add_column :table_name, :credit_card_info_expiration_year, :integer
add_column :table_name, :credit_card_info_name_on_card, :string, :limit => 41
add_column :table_name, :credit_card_info_credit_card_address, :string, :limit => 41
add_column :table_name, :credit_card_info_credit_card_postal_code, :string, :limit => 41
add_column :table_name, :job_status, :string
add_column :table_name, :job_start_date, :datetime
add_column :table_name, :job_projected_end_date, :datetime
add_column :table_name, :job_end_date, :datetime
add_column :table_name, :job_desc, :string, :limit => 99
add_column :table_name, :job_type_ref_list_id, :string, :limit => 36
add_column :table_name, :job_type_ref_full_name, :string, :limit => 159
add_column :table_name, :notes, :string, :limit => 4095
add_column :table_name, :is_statement_with_parent, :boolean
add_column :table_name, :delivery_method, :string
add_column :table_name, :price_level_ref_list_id, :string, :limit => 36
add_column :table_name, :price_level_ref_full_name, :string, :limit => 31

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :full_name
remove_column :table_name, :is_active
remove_column :table_name, :parent_ref_list_id
remove_column :table_name, :parent_ref_full_name
remove_column :table_name, :sublevel
remove_column :table_name, :company_name
remove_column :table_name, :salutation
remove_column :table_name, :first_name
remove_column :table_name, :middle_name
remove_column :table_name, :last_name
remove_column :table_name, :suffix
remove_column :table_name, :bill_address_addr1
remove_column :table_name, :bill_address_addr2
remove_column :table_name, :bill_address_addr3
remove_column :table_name, :bill_address_addr4
remove_column :table_name, :bill_address_addr5
remove_column :table_name, :bill_address_city
remove_column :table_name, :bill_address_state
remove_column :table_name, :bill_address_postal_code
remove_column :table_name, :bill_address_country
remove_column :table_name, :bill_address_note
remove_column :table_name, :bill_address_block_addr1
remove_column :table_name, :bill_address_block_addr2
remove_column :table_name, :bill_address_block_addr3
remove_column :table_name, :bill_address_block_addr4
remove_column :table_name, :bill_address_block_addr5
remove_column :table_name, :ship_address_addr1
remove_column :table_name, :ship_address_addr2
remove_column :table_name, :ship_address_addr3
remove_column :table_name, :ship_address_addr4
remove_column :table_name, :ship_address_addr5
remove_column :table_name, :ship_address_city
remove_column :table_name, :ship_address_state
remove_column :table_name, :ship_address_postal_code
remove_column :table_name, :ship_address_country
remove_column :table_name, :ship_address_note
remove_column :table_name, :ship_address_block_addr1
remove_column :table_name, :ship_address_block_addr2
remove_column :table_name, :ship_address_block_addr3
remove_column :table_name, :ship_address_block_addr4
remove_column :table_name, :ship_address_block_addr5
remove_column :table_name, :print_as
remove_column :table_name, :phone
remove_column :table_name, :mobile
remove_column :table_name, :pager
remove_column :table_name, :alt_phone
remove_column :table_name, :fax
remove_column :table_name, :email
remove_column :table_name, :contact
remove_column :table_name, :alt_contact
remove_column :table_name, :customer_type_ref_list_id
remove_column :table_name, :customer_type_ref_full_name
remove_column :table_name, :terms_ref_list_id
remove_column :table_name, :terms_ref_full_name
remove_column :table_name, :sales_rep_ref_list_id
remove_column :table_name, :sales_rep_ref_full_name
remove_column :table_name, :balance
remove_column :table_name, :total_balance
remove_column :table_name, :sales_tax_code_ref_list_id
remove_column :table_name, :sales_tax_code_ref_full_name
remove_column :table_name, :item_sales_tax_ref_list_id
remove_column :table_name, :item_sales_tax_ref_full_name
remove_column :table_name, :sales_tax_country
remove_column :table_name, :resale_number
remove_column :table_name, :account_number
remove_column :table_name, :credit_limit
remove_column :table_name, :preferred_payment_method_ref_list_id
remove_column :table_name, :preferred_payment_method_ref_full_name
remove_column :table_name, :credit_card_info_credit_card_number
remove_column :table_name, :credit_card_info_expiration_month
remove_column :table_name, :credit_card_info_expiration_year
remove_column :table_name, :credit_card_info_name_on_card
remove_column :table_name, :credit_card_info_credit_card_address
remove_column :table_name, :credit_card_info_credit_card_postal_code
remove_column :table_name, :job_status
remove_column :table_name, :job_start_date
remove_column :table_name, :job_projected_end_date
remove_column :table_name, :job_end_date
remove_column :table_name, :job_desc
remove_column :table_name, :job_type_ref_list_id
remove_column :table_name, :job_type_ref_full_name
remove_column :table_name, :notes
remove_column :table_name, :is_statement_with_parent
remove_column :table_name, :delivery_method
remove_column :table_name, :price_level_ref_list_id
remove_column :table_name, :price_level_ref_full_name
