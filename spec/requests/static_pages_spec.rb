require 'rails_helper'

   describe "Static pages" do

        let ( :base_title )  { "Ruby on Rails Tutorial Sample App | " }
        describe "Home page" do

                it "should have the h1 'Sample App' " do
                      visit  '/static_pages/home'
                       expect(page).to have_selector( 'h1', :text => 'Sample App' )
               end

                it "should have the title 'Home' " do
                      visit  '/static_pages/home'
                      expect(page).to have_title("#{base_title}Home")
               end
        end
 
       describe "Help page" do

               it "should have the h1 'Help' " do
               	      visit '/static_pages/help'
                      expect(page).to have_selector('h1', :text => "Help")
                end

                it "should have the title 'Help' " do
                       visit  '/static_pages/help'
                        expect(page).to have_title("#{base_title}Help")
               end
       end

       describe "About Page" do
       	       it "should have the h1 'About Us' " do
       	             visit '/static_pages/about'
       	             expect(page).to have_selector('h1', :text => "About Us")
       	       end

               it "should have the title 'About Us'" do
                      visit '/static_pages/about'
                       expect(page).to have_title("#{base_title}About Us")
                end
       end

       describe "Contact Page" do
             it "should exist" do
                   visit '/static_pages/contact' 
                   expect(page).to be_truthy
             end

             it "should have title 'Contact'" do
                  visit '/static_pages/contact'
                   expect(page).to have_title("#{base_title}Contact")
             end
        end
end