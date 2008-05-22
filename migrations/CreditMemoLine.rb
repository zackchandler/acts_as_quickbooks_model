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
t.datetime :service_date
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.boolean :is_taxable
t.string :other1, :limit => 29
t.string :other2, :limit => 29
t.string :credit_card_txn_info_credit_card_txn_input_info_credit_card_number, :limit => 25
t.integer :credit_card_txn_info_credit_card_txn_input_info_expiration_month
t.integer :credit_card_txn_info_credit_card_txn_input_info_expiration_year
t.string :credit_card_txn_info_credit_card_txn_input_info_name_on_card, :limit => 41
t.string :credit_card_txn_info_credit_card_txn_input_info_credit_card_address, :limit => 41
t.string :credit_card_txn_info_credit_card_txn_input_info_credit_card_postal_code, :limit => 18
t.string :credit_card_txn_info_credit_card_txn_input_info_commercial_card_code, :limit => 24
t.string :credit_card_txn_info_credit_card_txn_input_info_transaction_mode
t.string :credit_card_txn_info_credit_card_txn_input_info_credit_card_txn_type
t.integer :credit_card_txn_info_credit_card_txn_result_info_result_code
t.string :credit_card_txn_info_credit_card_txn_result_info_result_message, :limit => 60
t.string :credit_card_txn_info_credit_card_txn_result_info_credit_card_trans_id, :limit => 24
t.string :credit_card_txn_info_credit_card_txn_result_info_merchant_account_number, :limit => 32
t.string :credit_card_txn_info_credit_card_txn_result_info_authorization_code, :limit => 12
t.string :credit_card_txn_info_credit_card_txn_result_info_avs_street
t.string :credit_card_txn_info_credit_card_txn_result_info_avs_zip
t.string :credit_card_txn_info_credit_card_txn_result_info_card_security_code_match
t.string :credit_card_txn_info_credit_card_txn_result_info_recon_batch_id, :limit => 84
t.integer :credit_card_txn_info_credit_card_txn_result_info_payment_grouping_code
t.string :credit_card_txn_info_credit_card_txn_result_info_payment_status
t.datetime :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_time
t.integer :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_stamp
t.string :credit_card_txn_info_credit_card_txn_result_info_client_trans_id, :limit => 16

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
add_column :table_name, :service_date, :datetime
add_column :table_name, :sales_tax_code_ref_list_id, :string, :limit => 36
add_column :table_name, :sales_tax_code_ref_full_name, :string, :limit => 3
add_column :table_name, :is_taxable, :boolean
add_column :table_name, :other1, :string, :limit => 29
add_column :table_name, :other2, :string, :limit => 29
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_number, :string, :limit => 25
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_expiration_month, :integer
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_expiration_year, :integer
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_name_on_card, :string, :limit => 41
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_address, :string, :limit => 41
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_postal_code, :string, :limit => 18
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_commercial_card_code, :string, :limit => 24
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_transaction_mode, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_txn_type, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_result_code, :integer
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_result_message, :string, :limit => 60
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_credit_card_trans_id, :string, :limit => 24
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_merchant_account_number, :string, :limit => 32
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_authorization_code, :string, :limit => 12
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_avs_street, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_avs_zip, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_card_security_code_match, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_recon_batch_id, :string, :limit => 84
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_payment_grouping_code, :integer
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_payment_status, :string
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_time, :datetime
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_stamp, :integer
add_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_client_trans_id, :string, :limit => 16

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
remove_column :table_name, :service_date
remove_column :table_name, :sales_tax_code_ref_list_id
remove_column :table_name, :sales_tax_code_ref_full_name
remove_column :table_name, :is_taxable
remove_column :table_name, :other1
remove_column :table_name, :other2
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_number
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_expiration_month
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_expiration_year
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_name_on_card
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_address
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_postal_code
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_commercial_card_code
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_transaction_mode
remove_column :table_name, :credit_card_txn_info_credit_card_txn_input_info_credit_card_txn_type
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_result_code
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_result_message
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_credit_card_trans_id
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_merchant_account_number
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_authorization_code
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_avs_street
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_avs_zip
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_card_security_code_match
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_recon_batch_id
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_payment_grouping_code
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_payment_status
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_time
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_txn_authorization_stamp
remove_column :table_name, :credit_card_txn_info_credit_card_txn_result_info_client_trans_id
