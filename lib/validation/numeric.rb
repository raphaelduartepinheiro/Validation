module Validation
  module Numeric
    def validate(input)
      if input.is_a?(Integer)
        true
      end
    end
  end
end
