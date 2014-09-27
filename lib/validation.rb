module Validation
  require "validation/numeric"

  def validation(input)
    @result

    input.each do |key, value|
      extend Validation::const_get key.to_s.capitalize
      
     @result = valid(value)
    end

   @result
  end
end
