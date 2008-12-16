ActiveRecord::Schema.define(:version => 1) do
  create_table :customers, :force => true do |t|
    t.integer :id
    t.string :list_id
    t.string :name
    t.boolean :active
    t.string :parent_ref_list_id
    t.string :foo
  end

  create_table :invoices, :force => true do |t|
    t.integer :id
    t.string :txn_id
  end

  create_table :invoice_lines, :force => true do |t|
    t.integer :id
    t.integer :invoice_id
    t.integer :invoice_line_group_id
    t.string :txn_line_id
    t.string :item_ref_list_id
  end

  create_table :invoice_line_groups, :force => true do |t|
    t.integer :id
    t.integer :invoice_id
    t.string :txn_line_id
    t.string :item_group_ref_list_id
  end

  create_table :payments, :force => true do |t|
    t.integer :id
    t.string :txn_id
  end
  
  create_table :products, :force => true do |t|
    t.integer :id
    t.string :list_id
    t.decimal :purchase_cost, :precision => 9, :scale => 2 # from ItemInventory
    t.string :manufacturer_part_number # from ItemNonInventory
    t.string :special_item_type # from ItemOtherCharge
  end
  
  create_table :items, :force => true do |t|
    t.integer :id
    t.string :list_id
    t.string :full_name
  end

  create_table :linked_items, :force => true do |t|
    t.integer :id
    t.integer :item_id
    t.string :list_id
  end
end