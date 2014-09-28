require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end

  it "set values according to the params passed" do
    result = { val_module: "IsInteger", input: 5, rule: true }
    set_values(5, integer: true).should eq(result)
  end

  it "load validation module" do
    load_module("IsInteger")
    validate(5, true).should eq(true)
  end

  it "call method for validate and return result" do
    validation(5, integer: true).should eq(true)
  end
end

