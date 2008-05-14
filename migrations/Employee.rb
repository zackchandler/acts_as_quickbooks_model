# auto-generated from json definitions

# new table definitions
t.string :list_id, :limit => 36
t.datetime :time_created
t.datetime :time_modified
t.string :edit_sequence, :limit => 16
t.string :name, :limit => 41
t.boolean :is_active
t.string :salutation, :limit => 15
t.string :first_name, :limit => 25
t.string :middle_name, :limit => 5
t.string :last_name, :limit => 25
t.string :suffix
t.string :employee_address_addr1, :limit => 41
t.string :employee_address_addr2, :limit => 41
t.string :employee_address_addr3
t.string :employee_address_addr4
t.string :employee_address_city, :limit => 31
t.string :employee_address_state, :limit => 21
t.string :employee_address_postal_code, :limit => 13
t.string :employee_address_country
t.string :print_as, :limit => 41
t.string :phone, :limit => 21
t.string :mobile, :limit => 21
t.string :pager, :limit => 21
t.string :pager_pin, :limit => 10
t.string :alt_phone, :limit => 21
t.string :fax, :limit => 21
t.string :ssn, :limit => 11
t.string :email, :limit => 1023
t.string :employee_type
t.string :gender
t.datetime :hired_date
t.datetime :released_date
t.datetime :birth_date
t.string :account_number, :limit => 99
t.string :notes, :limit => 4095
t.string :billing_rate_ref_list_id, :limit => 36
t.string :billing_rate_ref_full_name, :limit => 31
t.string :employee_payroll_info_pay_period
t.string :employee_payroll_info_class_ref_list_id, :limit => 36
t.string :employee_payroll_info_class_ref_full_name, :limit => 159
t.boolean :employee_payroll_info_clear_earnings
t.string :employee_payroll_info_earnings_payroll_item_wage_ref_list_id, :limit => 36
t.string :employee_payroll_info_earnings_payroll_item_wage_ref_full_name, :limit => 31
t.decimal :employee_payroll_info_earnings_rate, :precision => 9, :scale => 2
t.decimal :employee_payroll_info_earnings_rate_percent, :precision => 9, :scale => 2
t.boolean :employee_payroll_info_is_using_time_data_to_create_paychecks
t.string :employee_payroll_info_use_time_data_to_create_paychecks
t.string :employee_payroll_info_sick_hours_hours_available
t.string :employee_payroll_info_sick_hours_accrual_period
t.string :employee_payroll_info_sick_hours_hours_accrued
t.string :employee_payroll_info_sick_hours_maximum_hours
t.boolean :employee_payroll_info_sick_hours_is_resetting_hours_each_new_year
t.string :employee_payroll_info_sick_hours_hours_used
t.datetime :employee_payroll_info_sick_hours_accrual_start_date
t.string :employee_payroll_info_vacation_hours_hours_available
t.string :employee_payroll_info_vacation_hours_accrual_period
t.string :employee_payroll_info_vacation_hours_hours_accrued
t.string :employee_payroll_info_vacation_hours_maximum_hours
t.boolean :employee_payroll_info_vacation_hours_is_resetting_hours_each_new_year
t.string :employee_payroll_info_vacation_hours_hours_used
t.datetime :employee_payroll_info_vacation_hours_accrual_start_date

# add_column definitions
add_column :table_name, :list_id, :string, :limit => 36
add_column :table_name, :time_created, :datetime
add_column :table_name, :time_modified, :datetime
add_column :table_name, :edit_sequence, :string, :limit => 16
add_column :table_name, :name, :string, :limit => 41
add_column :table_name, :is_active, :boolean
add_column :table_name, :salutation, :string, :limit => 15
add_column :table_name, :first_name, :string, :limit => 25
add_column :table_name, :middle_name, :string, :limit => 5
add_column :table_name, :last_name, :string, :limit => 25
add_column :table_name, :suffix, :string
add_column :table_name, :employee_address_addr1, :string, :limit => 41
add_column :table_name, :employee_address_addr2, :string, :limit => 41
add_column :table_name, :employee_address_addr3, :string
add_column :table_name, :employee_address_addr4, :string
add_column :table_name, :employee_address_city, :string, :limit => 31
add_column :table_name, :employee_address_state, :string, :limit => 21
add_column :table_name, :employee_address_postal_code, :string, :limit => 13
add_column :table_name, :employee_address_country, :string
add_column :table_name, :print_as, :string, :limit => 41
add_column :table_name, :phone, :string, :limit => 21
add_column :table_name, :mobile, :string, :limit => 21
add_column :table_name, :pager, :string, :limit => 21
add_column :table_name, :pager_pin, :string, :limit => 10
add_column :table_name, :alt_phone, :string, :limit => 21
add_column :table_name, :fax, :string, :limit => 21
add_column :table_name, :ssn, :string, :limit => 11
add_column :table_name, :email, :string, :limit => 1023
add_column :table_name, :employee_type, :string
add_column :table_name, :gender, :string
add_column :table_name, :hired_date, :datetime
add_column :table_name, :released_date, :datetime
add_column :table_name, :birth_date, :datetime
add_column :table_name, :account_number, :string, :limit => 99
add_column :table_name, :notes, :string, :limit => 4095
add_column :table_name, :billing_rate_ref_list_id, :string, :limit => 36
add_column :table_name, :billing_rate_ref_full_name, :string, :limit => 31
add_column :table_name, :employee_payroll_info_pay_period, :string
add_column :table_name, :employee_payroll_info_class_ref_list_id, :string, :limit => 36
add_column :table_name, :employee_payroll_info_class_ref_full_name, :string, :limit => 159
add_column :table_name, :employee_payroll_info_clear_earnings, :boolean
add_column :table_name, :employee_payroll_info_earnings_payroll_item_wage_ref_list_id, :string, :limit => 36
add_column :table_name, :employee_payroll_info_earnings_payroll_item_wage_ref_full_name, :string, :limit => 31
add_column :table_name, :employee_payroll_info_earnings_rate, :decimal, :precision => 9, :scale => 2
add_column :table_name, :employee_payroll_info_earnings_rate_percent, :decimal, :precision => 9, :scale => 2
add_column :table_name, :employee_payroll_info_is_using_time_data_to_create_paychecks, :boolean
add_column :table_name, :employee_payroll_info_use_time_data_to_create_paychecks, :string
add_column :table_name, :employee_payroll_info_sick_hours_hours_available, :string
add_column :table_name, :employee_payroll_info_sick_hours_accrual_period, :string
add_column :table_name, :employee_payroll_info_sick_hours_hours_accrued, :string
add_column :table_name, :employee_payroll_info_sick_hours_maximum_hours, :string
add_column :table_name, :employee_payroll_info_sick_hours_is_resetting_hours_each_new_year, :boolean
add_column :table_name, :employee_payroll_info_sick_hours_hours_used, :string
add_column :table_name, :employee_payroll_info_sick_hours_accrual_start_date, :datetime
add_column :table_name, :employee_payroll_info_vacation_hours_hours_available, :string
add_column :table_name, :employee_payroll_info_vacation_hours_accrual_period, :string
add_column :table_name, :employee_payroll_info_vacation_hours_hours_accrued, :string
add_column :table_name, :employee_payroll_info_vacation_hours_maximum_hours, :string
add_column :table_name, :employee_payroll_info_vacation_hours_is_resetting_hours_each_new_year, :boolean
add_column :table_name, :employee_payroll_info_vacation_hours_hours_used, :string
add_column :table_name, :employee_payroll_info_vacation_hours_accrual_start_date, :datetime

# remove_column definitions
remove_column :table_name, :list_id
remove_column :table_name, :time_created
remove_column :table_name, :time_modified
remove_column :table_name, :edit_sequence
remove_column :table_name, :name
remove_column :table_name, :is_active
remove_column :table_name, :salutation
remove_column :table_name, :first_name
remove_column :table_name, :middle_name
remove_column :table_name, :last_name
remove_column :table_name, :suffix
remove_column :table_name, :employee_address_addr1
remove_column :table_name, :employee_address_addr2
remove_column :table_name, :employee_address_addr3
remove_column :table_name, :employee_address_addr4
remove_column :table_name, :employee_address_city
remove_column :table_name, :employee_address_state
remove_column :table_name, :employee_address_postal_code
remove_column :table_name, :employee_address_country
remove_column :table_name, :print_as
remove_column :table_name, :phone
remove_column :table_name, :mobile
remove_column :table_name, :pager
remove_column :table_name, :pager_pin
remove_column :table_name, :alt_phone
remove_column :table_name, :fax
remove_column :table_name, :ssn
remove_column :table_name, :email
remove_column :table_name, :employee_type
remove_column :table_name, :gender
remove_column :table_name, :hired_date
remove_column :table_name, :released_date
remove_column :table_name, :birth_date
remove_column :table_name, :account_number
remove_column :table_name, :notes
remove_column :table_name, :billing_rate_ref_list_id
remove_column :table_name, :billing_rate_ref_full_name
remove_column :table_name, :employee_payroll_info_pay_period
remove_column :table_name, :employee_payroll_info_class_ref_list_id
remove_column :table_name, :employee_payroll_info_class_ref_full_name
remove_column :table_name, :employee_payroll_info_clear_earnings
remove_column :table_name, :employee_payroll_info_earnings_payroll_item_wage_ref_list_id
remove_column :table_name, :employee_payroll_info_earnings_payroll_item_wage_ref_full_name
remove_column :table_name, :employee_payroll_info_earnings_rate
remove_column :table_name, :employee_payroll_info_earnings_rate_percent
remove_column :table_name, :employee_payroll_info_is_using_time_data_to_create_paychecks
remove_column :table_name, :employee_payroll_info_use_time_data_to_create_paychecks
remove_column :table_name, :employee_payroll_info_sick_hours_hours_available
remove_column :table_name, :employee_payroll_info_sick_hours_accrual_period
remove_column :table_name, :employee_payroll_info_sick_hours_hours_accrued
remove_column :table_name, :employee_payroll_info_sick_hours_maximum_hours
remove_column :table_name, :employee_payroll_info_sick_hours_is_resetting_hours_each_new_year
remove_column :table_name, :employee_payroll_info_sick_hours_hours_used
remove_column :table_name, :employee_payroll_info_sick_hours_accrual_start_date
remove_column :table_name, :employee_payroll_info_vacation_hours_hours_available
remove_column :table_name, :employee_payroll_info_vacation_hours_accrual_period
remove_column :table_name, :employee_payroll_info_vacation_hours_hours_accrued
remove_column :table_name, :employee_payroll_info_vacation_hours_maximum_hours
remove_column :table_name, :employee_payroll_info_vacation_hours_is_resetting_hours_each_new_year
remove_column :table_name, :employee_payroll_info_vacation_hours_hours_used
remove_column :table_name, :employee_payroll_info_vacation_hours_accrual_start_date
