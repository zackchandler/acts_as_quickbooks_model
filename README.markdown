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
      <FullName>Abercrombie, Kristy</FullName>
      <FirstName>Kristy</FirstName>
      <LastName>Abercrombie</LastName>`
      <BillAddress>
        <Addr1>Kristy Abercrombie</Addr1>
        <Addr2>5647 Cypress Hill Rd</Addr2>
        <City>Bayshore</City>
        <State>CA</State>
        <PostalCode>94326</PostalCode>
      </BillAddress>
      <Phone>415-555-6579</Phone>
      <Email>kristy@samplename.com</Email>
    </CustomerRet>
    XML
    
    customer = Customer.new(:qbxml => xml)
    customer.list_id # => "150000-933272658"
    customer.name # => "Abercrombie, Kristy"
    ...
    
### References ###

[QuickBooks SDK Reference](http://developer.intuit.com/qbsdk-current/Common/newOSR/index.html)