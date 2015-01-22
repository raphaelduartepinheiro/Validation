module Resize
  module Validation
    module Rules
      module IsEmpty
        private
          def is_valid?(input)
            input.empty?
          end
      end
    end
  end
end