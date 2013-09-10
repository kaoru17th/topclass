require 'spec_helper'

describe Subject do
before { @subject = Subject.new(name: "Arquitectura de Negocio & Estrategia de TI", code:"ARTI-4103", quota:30, credits:4, status:"Activo") }
  subject { @subject }

  it { should respond_to(:name) }
  it { should respond_to(:code) }
  it { should respond_to(:quota) }
  it { should respond_to(:credits) }
  it { should respond_to(:status) }


  it { should be_valid }


  describe "when name is not present" do
    before { @subject.name = " " }
    it { should_not be_valid }
  end

  describe "when code is not present" do
    before { @subject.code = " " }
    it { should_not be_valid }
  end

  describe "when quota is not present" do
    before { @subject.quota = " " }
    it { should_not be_valid }
  end
  
  describe "when credits is not present" do
    before { @subject.credits = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    before { @subject.status = " " }
    it { should_not be_valid }
  end


  describe "when name is too long" do
    before { @subject.name = "a" * 201 }
    it { should_not be_valid }
  end

  describe "when code is too long" do
    before { @subject.code = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when quota is invalid" do
    before { @subject.quota = -1 }
    it { should_not be_valid }
  end
  
  describe "when credits is invalid" do
    before { @subject.credits = -1 }
    it { should_not be_valid }
  end
end
