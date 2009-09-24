# == Schema Information
#
# Table name: companies
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  phone_number  :string(255)
#  email_address :string(255)
#  url           :string(255)
#  address       :text
#  vat_number    :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Company < ActiveRecord::Base
end
