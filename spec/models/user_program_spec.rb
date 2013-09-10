require 'spec_helper'

describe UserProgram do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @user_program = Micropost.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @user_program }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
end
