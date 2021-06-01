class Meetup
  require 'date'

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, descriptor)
    valid_weekdays = []
    start_date = Date.civil(@year, @month, 1)
    date = start_date
    loop do
      valid_weekdays << date if dayname(date) == weekday.capitalize
      date += 1
      break if date.month != start_date.month
    end

    which_weekday(valid_weekdays, descriptor.downcase)
  end

  private

  def which_weekday(weekday_collection, descriptor)
    case descriptor
    when 'first'  then weekday_collection[0]
    when 'second' then weekday_collection[1]
    when 'third'  then weekday_collection[2]
    when 'fourth' then weekday_collection[3]
    when 'fifth'  then weekday_collection[4]
    when 'last'   then weekday_collection.last
    when 'teenth'
      weekday_collection.detect { |date| (13..19).include? date.day }
    end
  end

  def dayname(date)
    Date::DAYNAMES[date.wday]
  end
end
