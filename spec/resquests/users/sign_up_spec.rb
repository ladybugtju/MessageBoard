require 'rails_helper'

describe "sign up page", :type => :request do
#/users/sign_up
    
  it "Render the sign up template" do
    get "/users/sign_up"

    #assert_select "form.login" do
      
      expect(response).to render_template(:new)
      expect(response.body).to include("Sign up")
      # assert_select "input[name=user[email]]"
      # assert_select "input[name=?]", "password"
      # assert_select "input[type=?]", "submit"
    end
   
end