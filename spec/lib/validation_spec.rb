require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  it "set values" do
    result = { val_module: "IsInteger", input: 5, rule: true, option: "integer"}
    expect(set_values(5, integer: true)).to eq(result)
  end

  it "load module" do
    load_module("IsInteger")
    expect(valid?(5, true)).to eq(true)
  end

  it "return validation boolean" do
    expect(validate(5, integer: true)).to eq(true)
  end

  it "return raise error" do
    expect { validate!(5, integer: false) }.to raise_error("The input 5 does not match the rule integer with option false")
  end
end

