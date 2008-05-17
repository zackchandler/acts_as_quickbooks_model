### Introduction ###

This plugin simplifies the parsing of qbXML messages into ActiveRecord model attributes.

### Usage ###

    class Customer < ActiveRecord::Base
      acts_as_quickbooks_model
    end

    xml = <<-XML
    <CustomerRet>
      <ListID>150000-933272658</ListID>
      <Name>Abercrombie, Kristy</Name>
      <BillAddress>
        <Addr1>Kristy Abercrombie</Addr1>
        <Addr2>5647 Cypress Hill Rd</Addr2>
        <City>Bayshore</City>
        <State>CA</State>
        <PostalCode>94326</PostalCode>
      </BillAddress>
    </CustomerRet>
    XML
    
    customer = Customer.new(:qbxml => xml)
    customer.list_id # => "150000-933272658"
    customer.name # => "Abercrombie, Kristy"
    customer.bill_address_city # => "Bayshore"
    ...
    
### Auto-builds has_many associations ###

    class Invoice < ActiveRecord::Base
      acts_as_quickbooks_model
      has_many :invoice_lines
      has_many :invoice_line_groups
    end
    class InvoiceLine < ActiveRecord::Base
      acts_as_quickbooks_model
      belongs_to :invoice
    end
    class InvoiceLineGroup < ActiveRecord::Base
      acts_as_quickbooks_model
      belongs_to :invoice
    end

    xml = <<-XML
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
      </InvoiceLineGroupRet>
    </InvoiceRet>
    XML

    invoice = Invoice.create(:qbxml => xml)
    invoice.txn_id # => "123"
    invoice.invoice_lines.count # => 2
    invoice.invoice_line_groups.count # => 1
    invoice.invoice_lines.first.txn_line_id # => "456"
    invoice.invoice_line_groups.first.txn_line_id # => "321"
    ...
    
### References ###

[QuickBooks SDK Reference](http://developer.intuit.com/qbsdk-current/Common/newOSR/index.html)