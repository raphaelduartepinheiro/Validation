module Validation
  module Rules
    module IsPositive
      private
        def is_valid?(input)
          input >= 0 ? true : false
        end
    end
  end
end
