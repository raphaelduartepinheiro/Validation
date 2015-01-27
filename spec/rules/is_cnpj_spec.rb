require "spec_helper"

describe Resize::Validation::Rules::isCNPJ do
  before { extend Resize::Validation::Rules::isCNPJ }
  
  context "a valid CNPJ" do
    it "should return true" do
      expect(is_valid?("41875789600012")).to eq(true)
    end
  end

  context "an invalid CNPJ" do
    it "should return false" do
      expect(is_valid?("12123212300011")).to eq(false)
    end
  end
end
