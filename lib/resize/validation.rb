require 'delegate'

module Resize
  module Validation
    extend self

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

    def set_values(input)
      { rule: input.keys.first.to_s, input: input.values.first }
    end

    def load_module(name)
      module_name = "Is#{name.capitalize}"

      begin
        extend self::Rules::const_get(module_name)
      rescue
        include Rules::const_get(module_name)
      end
    end

    def validates

      Class.instance_eval do
        extend Resize::Validation
      end

      base_class = self
      proxy = Class.new(DelegateClass(base_class)) do

        @results = []

        def self.validate(input)
          option = self.class.set_values(input)
          self.class.load_module(option[:rule])

          if option[:input].kind_of?(Array)
            @results << is_valid?(option[:input][0], option[:input][1])
          else
            @results << is_valid?(option[:input])
          end
        end
      end

      (yield proxy).all? { |x| x == true }
    end
  end
end
