require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the h1 'Sample App'" do 
			visit '/static_pages/home'# visit is capybara function
			#page.should have_content('Sample App')
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have base title 'Ruby on Rails Tutorial'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial')
		end
	
		it "should not have a custom page title'" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '|Home')
		end
	end

	describe "Help page" do
                it "should have the content 'Help'" do
                        visit '/static_pages/help'# visit is capybara function
                        page.should have_selector('h1', :text => 'Help')
                end
		
		it "should have base title 'Ruby on Rails Tutorial" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial')
		end

		it "should not have a custom page title" do
			visit '/static_pages/help'
			page.should_not have_selector('title', :text => '|Help')
		end
        end

	describe "About page" do
                it "should have the content 'About Us'" do
                        visit '/static_pages/about'# visit is capybara function
                        page.should have_selector('h1', :text => 'About Us')
                end

		it "should have base title 'Ruby on Rails Tutorial" do
                        visit '/static_pages/about'
                        page.should have_selector('title', :text => 'Ruby on Rails Tutorial')
                end

		it "should not have a custom page title" do
			visit '/static_pages/about'
			page.should_not have_selector('title', :text => '|About Us')
		end
        end
end
