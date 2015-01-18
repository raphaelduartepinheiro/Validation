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