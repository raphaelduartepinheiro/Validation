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
      extend self::Rules::const_get(module_name)
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
          load_module(option[:rule])

          if option[:input].kind_of?(Array)
            @results << is_valid?(option[:input][0], option[:input][1])
          else
            @results << is_valid?(option[:input])
          end
        end

        def self.load_module(name)
          module_name = "Is#{name.capitalize}"
          extend Rules::const_get(module_name)
        end
      end

      (yield proxy).all? { |x| x == true }
    end

    def validates!
      Class.instance_eval do
        extend Resize::Validation
      end

      base_class = self
      proxy = Class.new(DelegateClass(base_class)) do
        @results = []

        def self.validate(input)
          option = self.class.set_values(input)
          load_module(option[:rule])

          if option[:input].kind_of?(Array)
            unless is_valid?(option[:input][0], option[:input][1])
              @results << "The input #{option[:input]} does not match the rule #{option[:rule]}"
            else
              @results << true
            end
          else
            unless is_valid?(option[:input])
              @results << "The input #{option[:input]} does not match the rule #{option[:rule]}"
            else
              @results << true
            end
          end
        end

        def self.load_module(name)
          module_name = "Is#{name.capitalize}"
          extend Rules::const_get(module_name)
        end
      end

      result = (yield(proxy))
      status = result.all? { |e| e == true }
      errors = []
      result.each do |e|
        unless e.is_a?(TrueClass) || e.is_a?(FalseClass)
          errors << e
        end
      end

      status == true ? true : {status: false, errors: errors}
    end
  end
end