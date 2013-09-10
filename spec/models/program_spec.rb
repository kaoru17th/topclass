require 'spec_helper'

describe Program do
 before { @program = Program.new(name: "Maestría en Arquitectura de Tecnologías de Información", code:"SNIES 101531", objective:"Las tecnologías de información (TI) se han convertido en el motor de las organizaciones, apoyando tanto su operación como la toma estratégica de decisiones de negocio", status:"Activo") }
  subject { @program }

  it { should respond_to(:name) }
  it { should respond_to(:code) }
  it { should respond_to(:objective) }
  it { should respond_to(:status) }


  it { should be_valid }


  describe "when name is not present" do
    before { @program.name = " " }
    it { should_not be_valid }
  end

  describe "when code is not present" do
    before { @program.code = " " }
    it { should_not be_valid }
  end

  describe "when objective is not present" do
    before { @program.objective = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    before { @program.status = " " }
    it { should_not be_valid }
  end


  describe "when name is too long" do
    before { @program.name = "a" * 201 }
    it { should_not be_valid }
  end

  describe "when code is too long" do
    before { @program.code = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when objective is too long" do
    before { @program.objective = "a" * 501 }
    it { should_not be_valid }
  end

end
