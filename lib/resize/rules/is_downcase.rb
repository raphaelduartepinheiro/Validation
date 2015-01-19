module Resize
  module Validation
    module Rules
      module IsDowncase
        private
          def is_valid?(input)
            /[[:upper:]]/.match(input) == nil ? true : false
          end
      end
    end
  end
end