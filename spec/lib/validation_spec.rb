require "spec_helper"
require "validation"

describe Validation do
  it "should read hash of input" do
    extend Validation
    
    input = {numeric: 5}
    validation(input).should eq(true)

  end
end

