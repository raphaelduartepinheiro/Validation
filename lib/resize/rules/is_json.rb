require 'json'

module Resize
  module Validation
    module Rules
      module IsJson
        private
          def is_valid?(input)
            begin
              JSON.parse(input)
              return true
            rescue JSON::ParserError
              return false
            end
          end
      end
    end
  end
end