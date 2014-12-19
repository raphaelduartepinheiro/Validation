module Validation
  module Rules
    module IsString
      private
        def is_valid?(input)
          input.is_a?(String)
        end
    end
  end
end