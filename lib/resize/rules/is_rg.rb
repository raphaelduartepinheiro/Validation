module Resize
  module Validation
    module Rules
      module IsRG
        private
          def is_valid?(rg)
            rg = rg.split("")
            base = 2 
            total = 0

            rg.first(8).each do |n| 
              total += n.to_i * base
              base+=1
            end
              
            vd = 11 - total % 11 
            return  (rg[rg.length - 1].to_i == vd)
          end
      end
    end
  end
end