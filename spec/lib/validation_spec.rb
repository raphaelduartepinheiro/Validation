require "spec_helper"
require "validation"

describe Validation do
  before :each do
    extend Validation
  end

  it "should validate number with option" do
    validation(5, integer: true).should eq(true)
  end

  it  "should validate number with option" do
    validation("five", integer: true).should eq(false)
  end

  it "should validate number with option" do
    validation("five", integer: false).should eq(true)
  end
end

