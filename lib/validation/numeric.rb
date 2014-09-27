module Validation
  module IsInteger
    def valid(input, param)
      rule = input.is_a?(Integer)

      if rule == param
        true
      else
        false
      end
    end
  end
end
