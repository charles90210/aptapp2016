require 'rails_helper'

RSpec.describe Apartment, type: :model do
  #WRITING FIRST TEST FOR MODEL AND APARTMENT PAGE
  it 'is a website' do
    expect{Apartment.new}.to_not raise_error
  end
  it 'has has a latitude, longitude, address, street, city, postal code, state, country, name, time and phone' do
    apartment = Apartment.new
  end



end
