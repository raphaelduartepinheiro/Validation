module Validation
  module IsBoolean

    def validate(input, rule)
      input = input.is_a?(TrueClass) || input.is_a?(FalseClass)

      if input == rule
        true
      else
        false
      end
    end

  end
end
