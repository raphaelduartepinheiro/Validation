module Resize
  module Validation
    module Rules
      module IsInteger
        private
          def is_valid?(input)
            input = input.is_a?(Integer)
          end
      end
    end
  end
end