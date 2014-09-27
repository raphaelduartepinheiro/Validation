require "spec_helper"
require "validation/numeric"

describe Validation::Numeric do
  it "should return true for integer object" do
    extend Validation::Numeric

    input = { numeric: 5 }
    validate(input).should eq(true)
  end
end
