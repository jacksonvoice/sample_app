require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'Sample App' " do
			visit root_path
			expect(page).to have_content('Sample App')
		end

		it "should have the base title" do
			visit root_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
			visit root_path
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Contact page" do

		 it "should have the content 'Contact'" do
		 	visit contact_path
		 	expect(page).to have_content('Contact')
		 end

		 it "should have the title 'Contact'" do
		 	visit contact_path
		 	expect(page).to have_title("uby on Rails Tutorial Sample App | Contact")
		 end
		end



	describe "Help page" do

		it "should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
		end
	end



describe "About page" do

	it "should have the content 'About us'" do
		visit about_path
		expect(page).to have_content('About Us')
		end

	it "should have the title 'About us'" do
		visit about_path
		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end
end





# require 'rails_helper'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end
