require "codeclimate-test-reporter"
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
