class Apartment < ApplicationRecord
  def full_address
    @address = address
    @street = street
    @city = city
    @postal_code = postal_code
    @state = state
    @country = country
    @full_address = (@address+" "+@street+" "+@city+ " "+@postal_code+" "+@state+" "+@country)
  end


  geocoded_by :full_address
  after_validation :geocode
end
