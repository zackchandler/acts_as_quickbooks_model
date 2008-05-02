# auto-generated from json definitions
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
