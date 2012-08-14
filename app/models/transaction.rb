class Transaction < ActiveRecord::Base
  attr_accessible :amount, :lat, :long
  belongs_to :user

  validates :user_id, presence: true
  validates :amount, presence: true

  default_scope order: 'transactions.created_at DESC'
end
