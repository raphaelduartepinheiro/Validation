require "spec_helper"
require "validation/numeric"

describe Validation::Numeric do
  it "should return true for integer object" do
    extend Validation::Numeric

    validate(5).should eq(true)
  end
end
