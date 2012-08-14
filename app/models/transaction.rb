class Transaction < ActiveRecord::Base
  attr_accessible :amount, :lat, :long
end
