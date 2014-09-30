require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end
  
  context "when call #validate" do
    it "set values" do
      result = { val_module: "IsInteger", input: 5, rule: true, option: "integer"}
      expect(set_values(5, integer: true)).to eq(result)
    end

    it "load module" do
      load_module("IsInteger")
      expect(valid?(5, true)).to eq(true)
    end
  end
end

