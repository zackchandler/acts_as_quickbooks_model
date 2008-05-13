# auto-generated from json definitions
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
t.boolean :is_pending
t.string :check_number, :limit => 25
t.string :payment_method_ref_list_id, :limit => 36
t.string :payment_method_ref_full_name, :limit => 31
t.datetime :due_date
t.string :sales_rep_ref_list_id, :limit => 36
t.string :sales_rep_ref_full_name, :limit => 5
t.datetime :ship_date
t.string :ship_method_ref_list_id, :limit => 36
t.string :ship_method_ref_full_name, :limit => 15
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
t.boolean :is_to_be_printed
t.boolean :is_to_be_emailed
t.boolean :is_tax_included
t.string :customer_sales_tax_code_ref_list_id, :limit => 36
t.string :customer_sales_tax_code_ref_full_name, :limit => 3
t.string :deposit_to_account_ref_list_id, :limit => 36
t.string :deposit_to_account_ref_full_name, :limit => 159
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
t.string :other, :limit => 29
t.decimal :discount_line_ret_amount, :precision => 9, :scale => 2
t.decimal :discount_line_ret_rate_percent, :precision => 9, :scale => 2
t.boolean :discount_line_ret_is_taxable
t.string :discount_line_ret_account_ref_list_id, :limit => 36
t.string :discount_line_ret_account_ref_full_name, :limit => 159
t.decimal :sales_tax_line_ret_amount, :precision => 9, :scale => 2
t.decimal :sales_tax_line_ret_rate_percent, :precision => 9, :scale => 2
t.string :sales_tax_line_ret_account_ref_list_id, :limit => 36
t.string :sales_tax_line_ret_account_ref_full_name, :limit => 159
t.decimal :shipping_line_ret_amount, :precision => 9, :scale => 2
t.string :shipping_line_ret_account_ref_list_id, :limit => 36
t.string :shipping_line_ret_account_ref_full_name, :limit => 159
