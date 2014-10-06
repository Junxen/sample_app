require 'rails_helper'

   describe "Static pages" do

        describe "Home page" do

                it "should have the h1 'Sample App' " do
                      visit  '/static_pages/home'
                       expect(page).to have_selector( 'h1', :text => 'Sample App' )
               end

                it "should have the title 'Home' " do
                      visit  '/static_pages/home'
                      # expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
                      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
               end
        end
 
       describe "Help page" do

               it "should have the h1 'Help' " do
               	      visit '/static_pages/help'
                      expect(page).to have_selector('h1', :text => "Help")
                end

                it "should have the title 'Help' " do
                       visit  '/static_pages/help'
                       # expect(page).to have_selector( 'title', :text => 'Ruby on Rails Tutorial Sample App | Help' )
                       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
               end
       end

       describe "About Page" do
       	       it "should have the h1 'About Us' " do
       	             visit '/static_pages/about'
       	             expect(page).to have_selector('h1', :text => "About Us")
       	       end

               it "should have the title 'About Us'" do
                      visit '/static_pages/about'
                      # expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
                      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
                end
       end
end