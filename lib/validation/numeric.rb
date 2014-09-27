module Validation
  module IsInteger
    def valid(input)
      if input.is_a?(Integer)
        true
      end
    end
  end
end
