require "spec_helper"
require "resize-validation"
require "resize/validation"

describe Resize::Validation do
  subject { Resize::Validation }

  context "validate is integer" do
    context "validate with raise error" do
      it "should return true" do
        expect(subject.validate!(integer: 5)).to eq(true)
      end

      it "should return false" do
        expect{ subject.validate!(integer: "five")}.to raise_error("The input five does not match the rule integer")
      end
    end
  end
end