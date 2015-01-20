module Resize
  module Validation
    module Rules
      module IsEmail
        private
          def is_valid?(input)
            !/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.match(input.to_s).nil?
          end
      end
    end
  end
end