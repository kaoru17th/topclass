require 'spec_helper'

describe SubjectRecord do
  let(:user) { FactoryGirl.create(:user) }
  let(:semester) { FactoryGirl.create(:semester) }
  let(:subject) { FactoryGirl.create(:subject) }
  before do
    # This code is not idiomatically correct.
    @subject_record= SubjectRecord.new(user_id_student: user.id, semester_id: semester.id, subject_id: subject.id ,user_id_teacher: user.id, status: "Passed", grade: 3.5)
  end

  subject { @subject_record }

  it { should respond_to(:status) }
  it { should respond_to(:user_id_student) }
  it { should respond_to(:semester_id) }
  it { should respond_to(:subject_id) }
  it { should respond_to(:grade) }
  it { should respond_to(:user_id_teacher) }
  it { should respond_to(:user) }
  its(:user) { should eq user }
  it { should respond_to(:subject) }
  its(:subject) { should eq subject }
  it { should respond_to(:semester) }
  its(:semester) { should eq semester }

  it { should be_valid }

  describe "when user_id_student is not present" do
    before { @subject_record.user_id_student = nil }
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
  
  describe "when user_id_teacher is not present" do
    before { @subject_record.user_id_teacher = nil }
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
