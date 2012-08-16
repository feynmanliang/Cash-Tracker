class Transaction < ActiveRecord::Base
  acts_as_gmappable :lat => 'lat', :lng => 'long', :process_geocoding => :geocode?,
    :msg => "Sorry, not even Google could figure out where that is"

  attr_accessible :amount, :lat, :long
  belongs_to :user

  validates :user_id, presence: true
  validates :amount, presence: true

  default_scope order: 'transactions.created_at DESC'

  def geocode?
    (lat.blank? || long.blank?)
  end

end
