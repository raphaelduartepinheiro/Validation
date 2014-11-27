module Validation
  module IsInteger
    def valid?(input, rule)
      input = input.is_a?(Integer)

      if input == rule
        true
      else
        false
      end
    end
  end
end
