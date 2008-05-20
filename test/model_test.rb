require File.dirname(__FILE__) + '/test_helper'

class Customer < ActiveRecord::Base
  acts_as_quickbooks_model
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
  has_many :invoice_lines
end

CUSTOMER_RET = <<-XML
<CustomerRet>
  <ListID>123</ListID>
  <Name>Foo</Name>
  <ParentRef>
    <ListID>456</ListID>
  </ParentRef>
</CustomerRet>
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

context 'A model using acts_as_quickbooks_model' do
  
  specify 'should assign attributes from qbxml if matching attributes exist on model' do
    customer = Customer.new(:qbxml => CUSTOMER_RET, :foo => 'bar')
    customer.list_id.should.equal '123'
    customer.name.should.equal 'Foo'
    customer.parent_ref_list_id.should.equal '456'
    customer.foo.should.equal 'bar'
  end
  
  specify 'should build has_many associations if they exist on model and in qbxml' do
    invoice = Invoice.create!(:qbxml => INVOICE_RET)
    invoice.txn_id.should.equal '123'
    
    # invoice_lines
    invoice.invoice_lines.count.should.equal 2
    invoice.invoice_lines[0].invoice_id.should.equal invoice.id
    invoice.invoice_lines[0].txn_line_id.should.equal '456'
    invoice.invoice_lines[0].item_ref_list_id.should.equal '789'
    invoice.invoice_lines[1].invoice_id.should.equal invoice.id
    invoice.invoice_lines[1].txn_line_id.should.equal '012'
    invoice.invoice_lines[1].item_ref_list_id.should.equal '567'
    
    # invoice_line_groups
    invoice.invoice_line_groups.count.should.equal 1
    invoice.invoice_line_groups[0].invoice_id.should.equal invoice.id
    invoice.invoice_line_groups[0].txn_line_id.should.equal '321'
    invoice.invoice_line_groups[0].item_group_ref_list_id.should.equal '987'
    
    # invoice_line_group invoice_lines
    invoice.invoice_line_groups[0].invoice_lines.count.should.equal 1
    invoice.invoice_line_groups[0].invoice_lines[0].txn_line_id.should.equal '345'
    invoice.invoice_line_groups[0].invoice_lines[0].item_ref_list_id.should.equal '789'
  end
end