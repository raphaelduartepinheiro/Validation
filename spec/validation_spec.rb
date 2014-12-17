require "spec_helper"
require "validation"

describe Validation do
  subject { Validation }
  before { subject.load_module("integer") }

  it "load module" do
    expect(subject.methods.include?(:is_valid?)).to eq(true)
  end

  context "validate is integer" do
    it "should return true" do
      expect(subject.validate(integer: 5)).to eq(true)
    end
    it "should return false" do
      expect(subject.validate(integer: "five")).to eq(false)
    end    
  end

  context "validate is boolean" do
    it "should return true" do
      expect(subject.validate(boolean: true)).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(boolean: "true")).to eq(false)
    end
  end
end