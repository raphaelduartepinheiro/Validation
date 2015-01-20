require "codeclimate-test-reporter"
require "resize/validation"

require "resize/rules/is_integer"
require "resize/rules/is_boolean"
require "resize/rules/is_string"
require "resize/rules/is_positive"
require "resize/rules/is_negative"
require "resize/rules/is_email"
require "resize/rules/is_date"
require "resize/rules/is_json"
require "resize/rules/is_multiple"
require "resize/rules/is_empty"
require "resize/rules/is_downcase"
require "resize/rules/is_uppercase"

CodeClimate::TestReporter.start

RSpec.configure do |config|
  $LOAD_PATH << "../lib"
  
  #not show deprecation warnings
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.color = true
end
