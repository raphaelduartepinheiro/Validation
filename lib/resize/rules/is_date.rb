module Resize
	module Validation
		module Rules
			module IsDate
				private
					def is_valid?(input)
						begin
							Date.parse(input)
							return true
						rescue ArgumentError
							return false
						end
					end
			end
		end
	end
end