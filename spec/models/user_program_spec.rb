require 'spec_helper'

describe UserProgram do
  let(:user) { FactoryGirl.create(:user) }
  let(:program) { FactoryGirl.create(:program) }
  before do
    # This code is not idiomatically correct.
    @user_program = UserProgram.new(program_id: program.id, user_id: user.id, status: "Activo")
  end

  subject { @user_program }

  it { should respond_to(:status) }
  it { should respond_to(:user_id) }
  it { should respond_to(:program_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }
  it { should respond_to(:program) }
  its(:program) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @user_program.user_id = nil }
    it { should_not be_valid }
  end
  
    describe "when program_id is not present" do
    before { @user_program.program_id = nil }
    it { should_not be_valid }
  end
  
    describe "when status is not present" do
    before { @user_program.status = " " }
    it { should_not be_valid }
  end
  
end