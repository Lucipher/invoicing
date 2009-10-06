ENV["RAILS_ENV"] ||= "development"

require File.dirname(__FILE__) + "/../config/environment"

require 'machinist'
require 'spec/blueprint'
require 'spec/mocks'

set_scene("VAT rates") do
  VatRate.make(:vat_rate => 1150, :effective_from => DateTime.parse('2008-12-01'), :effective_to => DateTime.parse('2010-01-01'))
  VatRate.make(:vat_rate => 1175, :effective_to => DateTime.parse('2008-12-01'))
  VatRate.make(:vat_rate => 1175, :effective_from => DateTime.parse('2010-01-01'))
end

set_scene("Lots of Companies") do
  10.times do
    Company.make
  end
end

set_scene("100 Products") do 
  100.times do
    Product.make
  end
end

set_scene("20 Clients") do
  20.times do
    Client.make
  end
end

set_scene("Lots of Invoices") do
  200.times do
    Invoice.make
  end
end

set_scene("Lots of InvoiceLines") do
  400.times do
    InvoiceLine.make
  end
end

set_scene("20 clients each with 30 invoices") do
  get_scene("100 Products").play
  get_scene("20 Clients").play
  Client.all.each do |client|
    30.times do
      invoice = Invoice.make(:client => client)
      5.times do
        prod = Product.find(rand(100)+1)
        InvoiceLine.make(:product => prod, :invoice => invoice)
      end
    end
  end
end

set_scene("A lot of data") do
  get_scene("VAT rates").play
  get_scene("Lots of Companies").play
  #get_scene("Lots of Products").play
  get_scene("Lots of Clients").play
  #get_scene("Lots of Invoices").play
  get_scene("Lots of InvoiceLines").play
end