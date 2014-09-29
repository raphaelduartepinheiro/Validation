module Validation
  module IsInteger
    def valid?(input, value)
      input = input.is_a?(Integer)
      if input == value
        true
      else
        false
      end
    end
  end
end
