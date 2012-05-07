require 'spec_helper'

describe "StaticPages" do
  describe "page Accueil" do

    it "should have the h1 'Bienvenue sur BiomeTTico!'" do
      visit '/static_pages/accueil'
      page.should have_selector('h1',
                        :text => 'Bienvenue sur BiomeTTico!')
    end
    
    it "should have the right title" do
       visit '/static_pages/accueil'
       page.should have_selector('title',
                        :text => "Biomettico | Accueil")
     end
  end
  
  describe "page Aide" do

    it "should have the h1 'Aide'" do
      visit '/static_pages/aide'
      page.should have_selector('h1',:text => 'Aide')
    end
    
    it "should have the right title" do
       visit '/static_pages/aide'
       page.should have_selector('title',
                         :text => "Biomettico | Aide")
     end
  end
    describe "page Contact" do

      it "should have the h1 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('h1',:text => 'Contact')
      end
      
      it "should have the right title" do
         visit '/static_pages/contact'
         page.should have_selector('title',
                           :text => "Biomettico | Contact")
       end
    end
  end
