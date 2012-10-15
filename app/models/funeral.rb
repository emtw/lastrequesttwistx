class Funeral < ActiveRecord::Base
  attr_accessible :ashes_location, :burial_location, :casket_pref, :final_words, :funeral_pref, :other_pref, :hymns_pref, :readings, :service_location, :speakers, :user_id, :wake, :epitaph, :additional_requirements,
  :dress_code, :flowers, :donations_to
  belongs_to :user
  validates :user_id, :presence => true
end
