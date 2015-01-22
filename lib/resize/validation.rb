require 'delegate'

module Resize
  module Validation

    class << self

      def validate(input)
        option = set_values(input)
        load_module(option[:rule])

        if option[:input].kind_of?(Array)
          is_valid?(option[:input][0], option[:input][1])
        else
          is_valid?(option[:input])
        end
      end

      def validate!(input)
        option = set_values(input)

        unless validate(input)
          raise TypeError, "The input #{option[:input]} does not match the rule #{option[:rule]}"
        else
          true
        end
      end

      def validates
        base_class = self
        proxy = Class.new(DelegateClass(base_class)) do

          @results = []

          def self.validate(input)
            option = set_values(input)
            load_module(option[:rule])

            if option[:input].kind_of?(Array)
              @results << is_valid?(option[:input][0], option[:input][1])
            else
              @results << is_valid?(option[:input])
            end
          end

        private
          def self.set_values(input)
            { rule: input.keys.first.to_s, input: input.values.first }
          end

          def self.load_module(name)
            module_name = "Is#{name.capitalize}"
            extend Rules::const_get(module_name)
          end
        end

        yield proxy
      end

      private
        def set_values(input)
          { rule: input.keys.first.to_s, input: input.values.first }
        end

        def load_module(name)
          module_name = "Is#{name.capitalize}"
          extend self::Rules::const_get(module_name)
        end
    end
  end
end