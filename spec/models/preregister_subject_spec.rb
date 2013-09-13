require 'spec_helper'

describe PreregisterSubject do
  let(:subject) { FactoryGirl.create(:subject) }
  let(:user) { FactoryGirl.create(:user) }
  let(:semester) { FactoryGirl.create(:semester) }
  before do
    # This code is not idiomatically correct.
    @subject_record= PreregisterSubject.new(user_id: user.id, semester_id: semester.id, subject_id: "1")
  end

  subject { @subject_record }

  it { should respond_to(:status) }
  it { should respond_to(:user_id) }
  it { should respond_to(:semester_id) }
  it { should respond_to(:subject_id) }
  it { should respond_to(:grade) }
  it { should respond_to(:user) }
  it { should respond_to(:subject) }
  it { should respond_to(:semester) }
  its(:semester) { should eq semester }

  it { should be_valid }

  describe "when user_student_id is not present" do
    before { @subject_record.user_student_id = nil }
    it { should_not be_valid }
  end
  
    describe "when semester_id is not present" do
    before { @subject_record.semester_id = nil }
    it { should_not be_valid }
  end
  
  describe "when subject_id is not present" do
    before { @subject_record.subject_id = nil }
    it { should_not be_valid }
  end
  
  describe "when user_teacher_id is not present" do
    before { @subject_record.user_teacher_id = nil }
    it { should_not be_valid }
  end
  
    describe "when status is not present" do
    before { @subject_record.status = " " }
    it { should_not be_valid }
  end
  
      describe "when grade is not present" do
    before { @subject_record.grade = " " }
    it { should_not be_valid }
  end
  
  describe "when credits is invalid" do
    before { @subject_record.grade = -1 }
    it { should_not be_valid }
  end
end
