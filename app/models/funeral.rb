class Funeral < ActiveRecord::Base
  attr_accessible :ashes_location, :burial_location, :casket_pref, :final_words, :funeral_pref, :hymns_pref, :readings, :service_location, :speakers, :user_id
end
