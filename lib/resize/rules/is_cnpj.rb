module Resize
  module Validation
    module Rules
      module IsCNPJ
        private
          def is_valid?(cnpj)
            cnpj = cnpj.split("")
            base = 2 
            total = 0

            cnpj.first(8).each do |n| 
              total += n.to_i * base
              base+=1
            end
              
            vd = 11 - total % 11 
            return  (cnpj[cnpj.length - 1].to_i == vd)
          end
      end
    end
  end
end