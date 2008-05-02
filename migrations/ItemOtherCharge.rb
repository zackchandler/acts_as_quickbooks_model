t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 31
t.string :full_name, :limit => 159
t.boolean :is_active
t.string :parent_ref_list_id, :limit => 36
t.string :parent_ref_full_name
t.integer :sublevel
t.boolean :is_tax_included
t.string :sales_tax_code_ref_list_id, :limit => 36
t.string :sales_tax_code_ref_full_name, :limit => 3
t.string :sales_or_purchase_desc, :limit => 4095
t.decimal :sales_or_purchase_price, :precision => 9, :scale => 2
t.decimal :sales_or_purchase_price_percent, :precision => 9, :scale => 2
t.string :sales_or_purchase_account_ref_list_id, :limit => 36
t.string :sales_or_purchase_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_sales_desc, :limit => 4095
t.decimal :sales_and_purchase_sales_price, :precision => 9, :scale => 2
t.string :sales_and_purchase_income_account_ref_list_id, :limit => 36
t.string :sales_and_purchase_income_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_purchase_desc, :limit => 4095
t.decimal :sales_and_purchase_purchase_cost, :precision => 9, :scale => 2
t.string :sales_and_purchase_purchase_tax_code_ref_list_id, :limit => 36
t.string :sales_and_purchase_purchase_tax_code_ref_full_name, :limit => 3
t.string :sales_and_purchase_expense_account_ref_list_id, :limit => 36
t.string :sales_and_purchase_expense_account_ref_full_name, :limit => 159
t.string :sales_and_purchase_pref_vendor_ref_list_id, :limit => 36
t.string :sales_and_purchase_pref_vendor_ref_full_name, :limit => 41
t.string :special_item_type