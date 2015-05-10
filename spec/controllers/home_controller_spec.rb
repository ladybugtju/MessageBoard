require "rails_helper"

describe HomeController do

   describe "index" do
      

   	 it "responds successfully with an HTTP 200 status code" do 
   	    @user = User.create!(email:"sally@sally.com", password:"password")

   	    sign_in @user

   	    get :index

   	    expect(response).to be_success
   	    expect(response).to have_http_status(200)
   	    expect(response.status).to be(200)
     end
   end

end