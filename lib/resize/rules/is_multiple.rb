module Resize
  module Validation
    module Rules
      module IsMultiple
        private
          def is_valid?(verify, number)
            number != 0 ? verify % number == 0 : zero?
          end
      end
    end
  end
end