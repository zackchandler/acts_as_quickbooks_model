# auto-generated from json definitions
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
