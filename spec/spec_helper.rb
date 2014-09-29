RSpec.configure do |config|
  $LOAD_PATH << "../lib"
  
  #remove deprecation warnings
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.color = true
end
