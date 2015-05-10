require "rails_helper"

describe User, :type => :model do 

	describe "email_and_sign_in_count" do
		it "will provide the correct user info" do 
			andrew =User.create!(email: "andrew@andrew.com", sign_in_count: 500, password: "password") # maybe password
			expect(andrew.email_and_sign_in_count).to eq("andrew@andrew.com has signed in 500 times! Whohoo!")
		end

		it "will say 'howdy new comer' when a user has less than 2 logins" do
			marlena = User.create!(email:"marlena@marlena.com", sign_in_count: 1, password: "password")
			expect(marlena.email_and_sign_in_count).to eq("Hi marlena@marlena.com. Howdy newcomer!")
		end
	end
end