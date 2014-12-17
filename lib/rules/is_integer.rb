module Validation
  module Rules
    module IsInteger
      def is_valid?(input)
        input = input.is_a?(Integer)
      end
    end
  end
end
