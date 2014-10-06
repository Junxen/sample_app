require 'rails_helper'

   describe "Static pages" do

        describe "Home page" do

                it "should have the h1 'Sample App' " do
                      visit  '/static_pages/home'
                       page.should have_selector( 'h1', :text => 'Sample App' )
                      # expect(page.body. h1).to include('Sample App')
               end

                it "should have the title 'Home' " do
                      visit  '/static_pages/home'
                      # page.should have_content( 'Sample App' )
                      expect( 'title').to include('Ruby on Rails Tutorial Sample App | Home')
                      # page.should have_title('Ruby on Rails Tutorial Sample App | Home')
               end
        end
 
       describe "Help page" do

               it "should have the content 'Help' " do
               	      visit '/static_pages/help'
               	      expect('h1').to include('Help')
                end

                it "should have the title 'Help' " do
                      visit '/static_pages/help'
                      expect('title').to include('Ruby on Rails Tutorial Sample App | Help')                                                                                                                                                                       
                end
       end

       describe "About Page" do
       	       it "should have the content 'About Us" do
       	             visit '/static_pages/about'
       	             expect('h1').to incllude('About Us')
       	       end

               it "should have the title 'About" do
                      visit '/static_pages/about'
                      expect('title').to include('Ruby on Rails Tutorial Sample App | About')
                end
       end
end