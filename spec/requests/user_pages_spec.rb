require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "index" do
    let(:user) { FactoryGirl.create(:user) }
    before(:each) do
      sign_in user
      visit users_path
    end

    it { should have_title('All users') }
    it { should have_content('All users') }

    describe "pagination" do

      before(:all) { 30.times { FactoryGirl.create(:user) } }
      after(:all)  { User.delete_all }

      it { should have_selector('div.pagination') }

      it "should list each user" do
        User.paginate(page: 1).each do |user|
          expect(page).to have_selector('li', text: user.name)
        end
      end
    end

    describe "delete links" do

      it { should_not have_link('delete') }

      describe "as an admin user" do
        let(:admin) { FactoryGirl.create(:admin) }
        before do
          sign_in admin
          visit users_path
        end

        it { should have_link('delete', href: user_path(User.first)) }
        it "should be able to delete another user" do
          expect do
            click_link('delete', match: :first)
          end.to change(User, :count).by(-1)
        end
        it { should_not have_link('delete', href: user_path(admin)) }

        ##validate disable
        it { should have_link('disable', href: user_path(User.first)) }
        it "should be able to disable another user" do
          expect do
            click_link('disable', match: :first)
            it { should have_selector('div.alert.alert-success') }
          end
          it { should_not have_link('disable', href: user_path(admin)) }

        end
      end
    end

  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    let(:program) { FactoryGirl.create(:program) }
    let!(:newer_user_programs) {FactoryGirl.create(:user_program, user: user, program: program)}    
    before { visit user_path(user) }

    it { should have_content(user.firstname) }
    it { should have_title(user.firstname) }
    
    describe "programs" do
      it { should have_content(newer_user_programs.status) }
      it { should have_content(user.user_program.count) }
    end
    
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

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      sign_in user
      visit edit_user_path(user)
    end

    describe "page" do
      it { should have_content("Edit User") }
      it { should have_title("Edit user") }
      it { should have_link('change', href: 'http://gravatar.com/emails') }
    end

    describe "with valid information" do
      let(:new_name)  { "New Name" }
      let(:new_lastname) { "new@example.com" }
      before do

        fill_in "Firstname",         with: new_name
        fill_in "Lastname",        with: new_lastname
        fill_in "Code",        with: "200012581"
        fill_in "Identification",        with: "80123456"
        fill_in "Email",        with: "da.gonzalez13@uniandes.edu.co"
        fill_in "Password",         with: user.password
        fill_in "Confirm Password", with: user.password
        click_button "Save changes"
      end

      it { should have_title(new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link('Sign out', href: signout_path) }
      specify { expect(user.reload.name).to  eq new_name }
      specify { expect(user.reload.email).to eq new_email }
    end
  end
end