require 'spec_helper'

describe "User pages" do

  subject { page }
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.firstname) }
    it { should have_title(user.firstname) }
  end

  describe "newuser page" do
    before { visit newuser_path }

    it { should have_content('Create User') }
    it { should have_title(full_title('Create User')) }
  end
  
    describe "newuser" do

    before { visit newuser_path }

    let(:submit) { "Create user" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Firstname",         with: "Diego"
        fill_in "Lastname",        with: "Gonzalez"
        fill_in "Code",        with: "200012581"
        fill_in "Identification",        with: "80123456"
        fill_in "Email",        with: "da.gonzalez13@uniandes.edu.co"
        fill_in "Password",     with: "test12345"
        fill_in "Confirmation", with: "test12345"
        
        
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end

