module Validation
  require "validation/numeric"

  def validation(input, param)
    @result

    input.each do |key, value|
      key_module = "Is#{key.to_s.capitalize}"

      extend Validation::const_get key_module

      @result = valid(value, param)
    end

   @result
  end
end
