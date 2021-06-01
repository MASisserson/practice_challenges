# Messing around with Date

require 'date'

# p Date::DAYNAMES

# class Date
#   def dayname
#     DAYNAMES[self.wday]
#   end
# end

date = Date.civil(2016, 3, 28)
puts date += 1
