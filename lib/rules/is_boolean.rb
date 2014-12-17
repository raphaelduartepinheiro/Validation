module Validation
  module Rules
    module IsBoolean
      def is_valid?(input)
        input.is_a?(TrueClass) || input.is_a?(FalseClass)
      end
    end
  end
end
