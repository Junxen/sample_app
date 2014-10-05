require 'rails_helper'

   describe "Static pages" do

        describe "Home page" do

                it "should have the content 'Sample App' " do
                      visit  '/static_pages/home'
                      # page.should have_content( 'Sample App' )
                      expect( 'Sample App')
               end
       end
 
       describe "Help page" do

               it "should have the content 'Help' " do
               	      visit '/static_pages/help'
               	      expect('Help')
               	end

                it "should have the title 'Home' " do
                      visit '/static_pages/home'
                      expect('title').to include('Ruby on Rails Tutorial Sample App | Home')
                end
       end

       describe "About Page" do
       	it "should have the content 'About Us" do
       	      visit '/static_pages/about'
       	      expect('About Us')
       	end
       end
end