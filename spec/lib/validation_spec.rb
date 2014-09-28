require "spec_helper"
require "validation"

describe Validation do
  it "should read hash of input" do
    extend Validation

    validation(5, integer: true).should eq(true)
  end
end

