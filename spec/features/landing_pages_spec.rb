require 'rails_helper'

RSpec.feature "AptHomePages", type: :feature do
  #FIRST TEST TO CREATE APARTMENT LISITNG PAGE
  context 'Landing page'
  Steps 'Going to a webiste' do
    Given 'I am on the landing page' do
      visit '/'
    end
    Then 'I can see Apartments' do
      expect(page).to have_content('Apartments')
    end
  end
  context 'Create an apartment'
  Steps 'For creating an apartment' do
    Given 'that I am on the apartments page' do
      visit '/apartments'
    end
    And 'I can create a New Apartment' do
      visit '/apartments/new'
    end
    Then 'I can enter apartment information' do
      fill_in 'Address', with: '123'
      fill_in 'Street', with: '123 fake street'
      fill_in 'City', with: 'San Diego'
      fill_in 'State', with: 'CA'
      fill_in 'Postal code', with: '90210'
      fill_in 'Country', with: 'USA'
      fill_in 'Landlord name', with: 'James Bond'
      fill_in 'Contact number', with: '912-234-0981'
      fill_in 'Hours', with: 'Monday - Friday 9 AM to 6 PM'
      #fill_in 'Hours', with: '2016-09-23-18:20:00'
      #test wont run with Hours but runs withoutit.
      click_button 'Create Apartment'
    end
    Then 'I am taken to a page showing the new apartment' do
        expect(page).to have_content 'Apartment was successfully created'
      end

  end
end
