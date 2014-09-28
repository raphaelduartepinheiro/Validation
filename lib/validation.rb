module Validation
  require "validation/numeric"

  def validation(input, option)
    option.each do |key, value|
      key_module = "Is#{key.to_s.capitalize}"
      extend Validation::const_get key_module
      @result = valid(input, value)
    end

    return @result
  end
end
