require "spec_helper"
require "resize/rules/is_date"

describe Resize::Validation::Rules::IsDate do
	before { extend Resize::Validation::Rules::IsDate }

	context "with valid params" do
		it "should return true" do
			expect(is_valid?("12-12-2015")).to eq(true)
		end

		it "should return true" do
			expect(is_valid?("2014-01-20")).to eq(true)
		end

		it "should return true" do
			expect(is_valid?("14/02/2016")).to eq(true)
		end
	end

	context "with invalid params" do
		it "should return false" do
			expect(is_valid?("120-12-2015")).to eq(false)
		end

		it "should return false" do
			expect(is_valid?("2014-100-20")).to eq(false)
		end

		it "should return false" do
			expect(is_valid?("resize")).to eq(false)
		end
	end
end