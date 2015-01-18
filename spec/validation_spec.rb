require "spec_helper"
require "resize-validation"
require "resize/validation"

describe Resize::Validation do
  subject { Resize::Validation }

  it "load module" do
    subject.validate(integer: 5)
    expect(subject.private_methods.include?(:is_valid?)).to eq(true)
  end

  context "validate is integer" do
    context "validate with raise error" do
      it "should return true" do
        expect(subject.validate!(integer: 5)).to eq(true)
      end

      it "should return false" do
        expect{ subject.validate!(integer: "five")}.to raise_error("The input five does not match the rule integer")
      end
    end

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

  context "validate is string" do
    it "should return true" do
      expect(subject.validate(string: "Matisyahu")).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(string: 5)).to eq(false)
    end
  end

  context "validate is positive" do
    it "should return true" do
      expect(subject.validate(positive: 5)).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(positive: -5)).to eq(false)
    end
  end

  context "validate is negative" do
    it "should return true" do
      expect(subject.validate(negative: -5)).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(negative: 5)).to eq(false)
    end
  end

  context "validate is email" do
    it "should return true" do
      expect(subject.validate(email: "user@example.com.br")).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(email: "user@example")).to eq(false)
    end
  end

  context "validade is date" do
    it "should return true" do
      expect(subject.validate(date: "20-12-2015")).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(date: "100-120-2015")).to eq(false)
    end
  end

  context "validate is json" do
    it "should return true" do
      expect(subject.validate(json: '{"name": "resize"}')).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(json: '{"name"; "resize"}')).to eq(false)
    end
  end

  context "validate is multiple" do
    it "should return true" do
      expect(subject.validate(multiple: [9, 3])).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(multiple: [8, 3])).to eq(false)
    end
  end

  context "validate is empty" do
    it "should return true" do
      expect(subject.validate(empty: "")).to eq(true)
    end

    it "should return false" do
      expect(subject.validate(empty: "londerson@gmail.com")).to eq(false)
    end
  end  
end