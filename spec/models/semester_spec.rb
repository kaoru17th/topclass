require 'spec_helper'

describe Semester do
 before { @semester = Semester.new(name: "2014-01", status:"Activo",startdate:"2014-01-01", finaldate:"2014-05-31") }
  subject { @semester }

  it { should respond_to(:name) }
  it { should respond_to(:startdate) }
  it { should respond_to(:finaldate) }
  it { should respond_to(:status) }


  it { should be_valid }


  describe "when name is not present" do
    before { @semester.name = " " }
    it { should_not be_valid }
  end

  describe "when startdate: is not present" do
    before { @semester.startdate = " " }
    it { should_not be_valid }
  end

  describe "when finaldate is not present" do
    before { @semester.finaldate = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    before { @semester.status = " " }
    it { should_not be_valid }
  end


  describe "when name is too long" do
    before { @semester.name = "a" * 51 }
    it { should_not be_valid }
  end


end
