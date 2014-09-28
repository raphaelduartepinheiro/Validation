require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  it "set values" do
    result = { val_module: "IsInteger", input: 5, rule: true }
    set_values(5, integer: true).should eq(result)
  end

  it "load module" do
    load_module("IsInteger")
    validation(5, true).should eq(true)
  end

  it "return validation boolean" do
    validate(5, integer: true).should eq(true)
  end
end

