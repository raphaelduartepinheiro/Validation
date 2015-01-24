module Resize
  module Validation
    module Rules
      module IsUppercase
        private
          def is_valid?(input)
            p "**"
            p input
            input == input.upcase ? true : false
          end
      end
    end
  end
end