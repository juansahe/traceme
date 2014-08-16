require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home') 
    end
    it "shold have title 'TraceMe | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('TraceMe | Home')
    end
  end
  describe "Help page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help') 
    end
    it "shold have title 'TraceMe | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('TraceMe | Help')
    end
  end
  describe "Home About" do
    it "should have content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About') 
    end
    it "shold have title 'TraceMe | About'" do
      visit '/static_pages/about'
      expect(page).to have_title('TraceMe | About')
    end
  end
end
