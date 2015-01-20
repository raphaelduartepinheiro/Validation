require 'uri'

module Resize
  module Validation
    module Rules
      module IsDomain
        private
          def is_valid?(input)
            /^#{URI::regexp}$/.match(input) ? true : false
          end
      end
    end
  end
end