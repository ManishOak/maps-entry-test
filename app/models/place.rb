class Place < ApplicationRecord

  validates_uniqueness_of :google_id
  
  def address
    str = []
    str << street_number
    str << street_name
    str << city_name
    'DUMMY ADDRESS'# str.join(', ')    
  end

end