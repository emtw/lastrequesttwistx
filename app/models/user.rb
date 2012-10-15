class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address_1, :address_2, :contact_number, :county, :date_of_birth, :email, :first_name, :gender, :last_name, :middle_names, :postcode, :town
  has_one :funeral
  has_one :timeline
  has_many :events, :through => :timeline
  validates :first_name, :length => { :minimum => 2 }, :presence => true
  validates :last_name, :length => { :minimum => 2 }, :presence => true
  validate :at_least_18
  validates :gender, :inclusion => { :in => %w(Male Female), :allow_blank => true, :message => "%{value} is not valid. Please select a gender from the dropdown list."}
  validates :address_1, :length => { :minimum => 2 }, :presence => true
  validates :town, :length => { :minimum => 2 }, :presence => true
  validates_format_of :postcode, :with => /^(([gG][iI][rR] {0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$/

def at_least_18
  if self.date_of_birth
    errors.add(:date_of_birth, "You must be 18 years or older to use this service.") if
    self.date_of_birth > 18.years.ago.to_date
  end
end

end
