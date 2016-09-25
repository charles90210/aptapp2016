class Apartment < ApplicationRecord

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


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
