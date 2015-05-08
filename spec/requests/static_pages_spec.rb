require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')	
    end
  end

  describe "Help pages" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  end

  describe "About Pages" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  end
end
