# auto-generated from json definitions
t.string :txn_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.integer :txn_number
t.string :customer_ref_list_id, :limit => 36
t.string :customer_ref_full_name, :limit => 209
t.string :ar_account_ref_list_id, :limit => 36
t.string :ar_account_ref_full_name, :limit => 159
t.datetime :txn_date
t.string :ref_number, :limit => 20
t.decimal :total_amount, :precision => 9, :scale => 2
t.string :payment_method_ref_list_id, :limit => 36
t.string :payment_method_ref_full_name, :limit => 31
t.string :memo, :limit => 4095
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
t.decimal :unused_payment, :precision => 9, :scale => 2
t.decimal :unused_credits, :precision => 9, :scale => 2
