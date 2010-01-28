require File.dirname(__FILE__) + '/test_helper'

class Customer < ActiveRecord::Base
  acts_as_quickbooks_model
  has_many :notes
  alias_attribute :is_active, :active
end
class Note < ActiveRecord::Base
  belongs_to :customer
end

class Payment < ActiveRecord::Base
  acts_as_quickbooks_model 'ReceivePayment'
end
class Invoice < ActiveRecord::Base
  acts_as_quickbooks_model
  has_many :invoice_lines
  has_many :invoice_line_groups
end
class InvoiceLine < ActiveRecord::Base
  acts_as_quickbooks_model
  belongs_to :invoice
  belongs_to :invoice_line_group
end
class InvoiceLineGroup < ActiveRecord::Base
  acts_as_quickbooks_model
  belongs_to :invoice
  has_many :lines, :class_name => 'InvoiceLine'
end
class Product < ActiveRecord::Base
  acts_as_quickbooks_model 'ItemInventory', 'ItemNonInventory', 'ItemOtherCharge'
end
class Item < ActiveRecord::Base
  acts_as_quickbooks_model 'ItemSalesTaxGroup'
  has_many :linked_items
  has_many :item_sales_taxs, :class_name => 'LinkedItem'
end
class LinkedItem < ActiveRecord::Base
  acts_as_quickbooks_model 'ItemSalesTax'
  belongs_to :item
end

CUSTOMER_RET = <<-XML
<CustomerRet>
  <ListID>123</ListID>
  <Name>Foo</Name>
  <IsActive>true</IsActive>
  <ParentRef>
    <ListID>456</ListID>
  </ParentRef>
  <Notes>foo bar</Notes>
</CustomerRet>
XML

PAYMENT_RET = <<-XML
<ReceivePaymentRet>
  <TxnID>123</TxnID>
</ReceivePaymentRet>
XML

INVOICE_RET = <<-XML
<InvoiceRet>
	<TxnID>123</TxnID>
	<InvoiceLineRet>
		<TxnLineID>456</TxnLineID>
		<ItemRef>
			<ListID>789</ListID>
		</ItemRef>
	</InvoiceLineRet>
	<InvoiceLineRet>
		<TxnLineID>012</TxnLineID>
		<ItemRef>
			<ListID>567</ListID>
		</ItemRef>
	</InvoiceLineRet>
	<InvoiceLineGroupRet>
		<TxnLineID>321</TxnLineID>
		<ItemGroupRef>
			<ListID>987</ListID>
		</ItemGroupRef>
		<InvoiceLineRet>
      <TxnLineID>345</TxnLineID>
      <ItemRef>
        <ListID>789</ListID>
      </ItemRef>
    </InvoiceLineRet>
	</InvoiceLineGroupRet>
</InvoiceRet>
XML

ITEM_INVENTORY_RET = <<-XML
<ItemInventoryRet>
  <ListID>123</ListID>
  <PurchaseCost>1</PurchaseCost>
</ItemInventoryRet>
XML

ITEM_NON_INVENTORY_RET = <<-XML
<ItemNonInventoryRet>
  <ListID>234</ListID>
  <ManufacturerPartNumber>2</ManufacturerPartNumber>
</ItemNonInventoryRet>
XML

ITEM_OTHER_CHARGE_RET = <<-XML
<ItemOtherChargeRet>
  <ListID>345</ListID>
  <SpecialItemType>foo</SpecialItemType>
</ItemOtherChargeRet>
XML

SALES_TAX_GROUP_RET = <<-XML
<ItemSalesTaxGroupRet>
  <ListID>80000030-1189440679</ListID>
  <TimeCreated>2007-09-10T09:11:19-08:00</TimeCreated>
  <TimeModified>2007-09-10T09:11:19-08:00</TimeModified>
  <EditSequence>1189440679</EditSequence>
  <Name>San Thomas Group</Name>
  <IsActive>true</IsActive>
  <ItemDesc>Sales Tax - San Thomas County</ItemDesc>
  <ItemSalesTaxRef>
    <ListID>8000002A-1189440679</ListID>
    <FullName>County, San Thomas</FullName>
  </ItemSalesTaxRef>
  <ItemSalesTaxRef>
    <ListID>80000029-1189440679</ListID>
    <FullName>Assessment</FullName>
  </ItemSalesTaxRef>
</ItemSalesTaxGroupRet>
XML

class ActsAsQuickBooksModelTest < Test::Unit::TestCase

  def test_assign_attributes_from_qbxml_if_matching_attributes_exist_on_model
    customer = Customer.new(:qbxml => CUSTOMER_RET, :foo => 'bar')
    assert_equal '123', customer.list_id
    assert_equal 'Foo', customer.name
    assert_equal '456', customer.parent_ref_list_id
    assert_equal 'bar', customer.foo
  end

  def test_support_alias_attributes_on_model
    customer = Customer.new(:qbxml => CUSTOMER_RET)
    assert customer.active?
  end
  
  def test_support_overriding_default_model_type
    payment = Payment.create!(:qbxml => PAYMENT_RET)
    assert_equal '123', payment.txn_id
  end

  def test_build_has_many_associations_by_has_many_class_name
    invoice = Invoice.create!(:qbxml => INVOICE_RET)
    assert_equal '123', invoice.txn_id
    
    # invoice_lines
    assert_equal 2, invoice.invoice_lines.count

    line = invoice.invoice_lines[0]
    assert_equal invoice.id,  line.invoice_id
    assert_equal '456', line.txn_line_id
    assert_equal '789', line.item_ref_list_id

    line = invoice.invoice_lines[1]
    assert_equal invoice.id, line.invoice_id
    assert_equal '012', line.txn_line_id
    assert_equal '567', line.item_ref_list_id
    
    # invoice_line_groups
    group = invoice.invoice_line_groups[0]
    assert_equal 1, invoice.invoice_line_groups.count
    assert_equal invoice.id, group.invoice_id
    assert_equal '321', group.txn_line_id
    assert_equal '987', group.item_group_ref_list_id
    
    # invoice_line_group invoice_lines
    assert_equal 1, invoice.invoice_line_groups[0].lines.count
    group_line = invoice.invoice_line_groups[0].lines[0]
    assert_equal '345', group_line.txn_line_id
    assert_equal '789', group_line.item_ref_list_id
  end
  
  def test_should_build_has_many_associations_by_has_many_name
    tax1 = Item.create! :list_id => '8000002A-1189440679'
    tax2 = Item.create! :list_id => '80000029-1189440679'

    sales_tax_group = Item.create!(:qbxml => SALES_TAX_GROUP_RET)
    assert_equal '80000030-1189440679', sales_tax_group.list_id
    
    linked_item1 = sales_tax_group.linked_items[0]
    linked_item2 = sales_tax_group.linked_items[1]

    assert_equal '8000002A-1189440679', linked_item1.list_id
    assert_equal '80000029-1189440679', linked_item2.list_id
  end

  def should_allow_polymorphic_support_for_models_that_declare_support_for_multiple_qb_model_types
    inventory_product = Product.create!(:qbxml => ITEM_INVENTORY_RET)
    assert_equal '123', inventory_product.list_id
    assert_equal 1, inventory_product.purchase_cost
    
    non_inventory_product = Product.create!(:qbxml => ITEM_NON_INVENTORY_RET)
    assert_equal '234', non_inventory_product.list_id
    assert_equal '2', non_inventory_product.manufacturer_part_number
   
    other_charge_product = Product.create!(:qbxml => ITEM_OTHER_CHARGE_RET)
    assert_equal '345', other_charge_product.list_id
    assert_equal 'foo', other_charge_product.special_item_type
  end

  def test_not_attempt_to_assign_a_has_many_if_an_identical_node_appears_as_a_QB_element
    # Example: Customer has_many notes
    # CustomerRet sends back <Notes> node
    customer = Customer.create!(:qbxml => CUSTOMER_RET)
    assert customer.notes.empty?
  end
end