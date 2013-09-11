require 'spec_helper'

describe User do
   before { @user = User.new(firstname: "Diego", lastname:"Gonzalez", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"user@example.com") }
  subject { @user }

  it { should respond_to(:firstname) }
  it { should respond_to(:lastname) }
  it { should respond_to(:identificationtype) }
  it { should respond_to(:identification) }
  it { should respond_to(:status) }
  it { should respond_to(:usertype) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:email) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:programs) }
  it { should respond_to(:user_programs) }

  it { should be_valid }
  it { should_not be_admin }

  describe "with admin attribute set to 'true'" do
    before do
      @user.save!
      @user.usertype = "Coordinador"
    end

    it { should be_admin }
  end

  describe "when firstname is not present" do
    before { @user.firstname = " " }
    it { should_not be_valid }
  end

  describe "when lastname is not present" do
    before { @user.lastname = " " }
    it { should_not be_valid }
  end

  describe "when identificationtype is not present" do
    before { @user.identificationtype = " " }
    it { should_not be_valid }
  end

  describe "when identification is not present" do
    before { @user.identification = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    before { @user.status = " " }
    it { should_not be_valid }
  end

  describe "when usertype is not present" do
    before { @user.usertype = " " }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before do
      @user = User.new(firstname: "Diego", lastname:"Gonzalez", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:" ", password_confirmation: " ", email:"user@example.com")
    end
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when firstname is too long" do
    before { @user.firstname = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when lastname is too long" do
    before { @user.lastname = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when identification is too long" do
    before { @user.identification = "a" * 21 }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
      foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end
  
    describe "programs associations" do

    before { @user.save }
    let!(:newer_user_programs) do
      FactoryGirl.create(:user_program, user: @user)
    end

    it "should have the right user_programs" do
      expect(@user.user_programs.to_a).to eq [newer_user_programs]
    end
  end
  
end