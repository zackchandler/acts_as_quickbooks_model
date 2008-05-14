# auto-generated from json definitions

# new table definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 41
t.boolean :is_active
t.boolean :is_tax_agency
t.string :company_name, :limit => 41
t.string :salutation, :limit => 15
t.string :first_name, :limit => 25
t.string :middle_name, :limit => 5
t.string :last_name, :limit => 25
t.string :suffix
t.string :vendor_address_addr1, :limit => 41
t.string :vendor_address_addr2, :limit => 41
t.string :vendor_address_addr3, :limit => 41
t.string :vendor_address_addr4, :limit => 41
t.string :vendor_address_addr5, :limit => 41
t.string :vendor_address_city, :limit => 31
t.string :vendor_address_state, :limit => 21
t.string :vendor_address_postal_code, :limit => 13
t.string :vendor_address_country, :limit => 31
t.string :vendor_address_note, :limit => 41
t.string :vendor_address_block_addr1, :limit => 41
t.string :vendor_address_block_addr2, :limit => 41
t.string :vendor_address_block_addr3, :limit => 41
t.string :vendor_address_block_addr4, :limit => 41
t.string :vendor_address_block_addr5, :limit => 41
t.string :phone, :limit => 21
t.string :mobile, :limit => 21
t.string :pager, :limit => 21
t.string :alt_phone, :limit => 21
t.string :fax, :limit => 21
t.string :email, :limit => 1023
t.string :contact, :limit => 41
t.string :alt_contact, :limit => 41
t.string :name_on_check, :limit => 41
t.string :account_number, :limit => 99
t.string :notes, :limit => 4095
t.string :vendor_type_ref_list_id, :limit => 36
t.string :vendor_type_ref_full_name, :limit => 159
t.string :terms_ref_list_id, :limit => 36
t.string :terms_ref_full_name, :limit => 31
t.decimal :credit_limit, :precision => 9, :scale => 2
t.string :vendor_tax_ident, :limit => 15
t.boolean :is_vendor_eligible_for1099
t.decimal :balance, :precision => 9, :scale => 2
t.string :billing_rate_ref_list_id, :limit => 36
t.string :billing_rate_ref_full_name, :limit => 31

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 41
add_column :table_name, :is_active, :boolean
add_column :table_name, :is_tax_agency, :boolean
add_column :table_name, :company_name, :string, :limit => 41
add_column :table_name, :salutation, :string, :limit => 15
add_column :table_name, :first_name, :string, :limit => 25
add_column :table_name, :middle_name, :string, :limit => 5
add_column :table_name, :last_name, :string, :limit => 25
add_column :table_name, :suffix, :string
add_column :table_name, :vendor_address_addr1, :string, :limit => 41
add_column :table_name, :vendor_address_addr2, :string, :limit => 41
add_column :table_name, :vendor_address_addr3, :string, :limit => 41
add_column :table_name, :vendor_address_addr4, :string, :limit => 41
add_column :table_name, :vendor_address_addr5, :string, :limit => 41
add_column :table_name, :vendor_address_city, :string, :limit => 31
add_column :table_name, :vendor_address_state, :string, :limit => 21
add_column :table_name, :vendor_address_postal_code, :string, :limit => 13
add_column :table_name, :vendor_address_country, :string, :limit => 31
add_column :table_name, :vendor_address_note, :string, :limit => 41
add_column :table_name, :vendor_address_block_addr1, :string, :limit => 41
add_column :table_name, :vendor_address_block_addr2, :string, :limit => 41
add_column :table_name, :vendor_address_block_addr3, :string, :limit => 41
add_column :table_name, :vendor_address_block_addr4, :string, :limit => 41
add_column :table_name, :vendor_address_block_addr5, :string, :limit => 41
add_column :table_name, :phone, :string, :limit => 21
add_column :table_name, :mobile, :string, :limit => 21
add_column :table_name, :pager, :string, :limit => 21
add_column :table_name, :alt_phone, :string, :limit => 21
add_column :table_name, :fax, :string, :limit => 21
add_column :table_name, :email, :string, :limit => 1023
add_column :table_name, :contact, :string, :limit => 41
add_column :table_name, :alt_contact, :string, :limit => 41
add_column :table_name, :name_on_check, :string, :limit => 41
add_column :table_name, :account_number, :string, :limit => 99
add_column :table_name, :notes, :string, :limit => 4095
add_column :table_name, :vendor_type_ref_list_id, :string, :limit => 36
add_column :table_name, :vendor_type_ref_full_name, :string, :limit => 159
add_column :table_name, :terms_ref_list_id, :string, :limit => 36
add_column :table_name, :terms_ref_full_name, :string, :limit => 31
add_column :table_name, :credit_limit, :decimal, :precision => 9, :scale => 2
add_column :table_name, :vendor_tax_ident, :string, :limit => 15
add_column :table_name, :is_vendor_eligible_for1099, :boolean
add_column :table_name, :balance, :decimal, :precision => 9, :scale => 2
add_column :table_name, :billing_rate_ref_list_id, :string, :limit => 36
add_column :table_name, :billing_rate_ref_full_name, :string, :limit => 31

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :is_tax_agency
remove_column :table_name, :company_name
remove_column :table_name, :salutation
remove_column :table_name, :first_name
remove_column :table_name, :middle_name
remove_column :table_name, :last_name
remove_column :table_name, :suffix
remove_column :table_name, :vendor_address_addr1
remove_column :table_name, :vendor_address_addr2
remove_column :table_name, :vendor_address_addr3
remove_column :table_name, :vendor_address_addr4
remove_column :table_name, :vendor_address_addr5
remove_column :table_name, :vendor_address_city
remove_column :table_name, :vendor_address_state
remove_column :table_name, :vendor_address_postal_code
remove_column :table_name, :vendor_address_country
remove_column :table_name, :vendor_address_note
remove_column :table_name, :vendor_address_block_addr1
remove_column :table_name, :vendor_address_block_addr2
remove_column :table_name, :vendor_address_block_addr3
remove_column :table_name, :vendor_address_block_addr4
remove_column :table_name, :vendor_address_block_addr5
remove_column :table_name, :phone
remove_column :table_name, :mobile
remove_column :table_name, :pager
remove_column :table_name, :alt_phone
remove_column :table_name, :fax
remove_column :table_name, :email
remove_column :table_name, :contact
remove_column :table_name, :alt_contact
remove_column :table_name, :name_on_check
remove_column :table_name, :account_number
remove_column :table_name, :notes
remove_column :table_name, :vendor_type_ref_list_id
remove_column :table_name, :vendor_type_ref_full_name
remove_column :table_name, :terms_ref_list_id
remove_column :table_name, :terms_ref_full_name
remove_column :table_name, :credit_limit
remove_column :table_name, :vendor_tax_ident
remove_column :table_name, :is_vendor_eligible_for1099
remove_column :table_name, :balance
remove_column :table_name, :billing_rate_ref_list_id
remove_column :table_name, :billing_rate_ref_full_name
