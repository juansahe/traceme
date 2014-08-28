require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('soyo') }
    it { should have_title('SoYo | Inicio') }
  end

  it "open the Signin modal" do
    visit root_path
    click_link "Sube tu hoja de vida"
    within("#siginModal") do 
      expect(page).to have_selector('h2', :text => "Bienvenido")
    end
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Ayuda') }
    it { should have_title('SoYo | Ayuda') }
  end

  describe "Home About" do
    before { visit about_path }
    
    it { should have_content('Acerca de nosotros') }
    it { should have_title('SoYo | Acerca de nosotros') }
  end

end
