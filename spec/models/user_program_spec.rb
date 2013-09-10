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
end