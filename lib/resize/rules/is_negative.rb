module Resize
  module Validation
    module Rules
      module IsNegative
        private
          def is_valid?(input)
            input < 0
          end
      end
    end
  end
end