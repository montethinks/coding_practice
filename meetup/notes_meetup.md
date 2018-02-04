Typically meetups happen on the same day of the week.

Examples are

the first Monday
the third Tuesday
the Wednesteenth
the last Thursday
Note that "Monteenth", "Tuesteenth", etc are all made up words. There was a meetup whose members realised that there are exactly 7 days that end in '-teenth'. Therefore, one is guaranteed that each day of the week (Monday, Tuesday, ...) will have exactly one date that is named with '-teenth' in every month.

Write code that calculates date of meetups.

Define a class Meetup with a constructor taking a month and a year
and a method day(weekday, schedule)
where weekday is one of :monday, :tuesday, etc
and schedule is :first, :second, :third, :fourth, :last or :teenth.


create date objects for an entire month
select all days == weekday
return an array of days as integers 
  - Date.new(2, 2018) => all mondays would be [5, 12, 19, 26]

  def dates_for(weekday)
    days_in_month = 
    dates_for_weekday = []

    full_calendar_month.select { |date| date.cwday == DAYS_OF_WEEK[weekday] }
      .each { |date| dates_for_weekday << date.day }

    dates_for_weekday
  end

  p Meetup.new(3, 2013).day(:tuesday, :teenth)
first_tuesday = Meetup.new(3, 2018).day(:tuesday, :first)
puts first_tuesday.strftime("%A, %D")

def day(weekday, schedule)
    dates = list_of_dates(weekday)

    day_of_the_week = case schedule
                      when :teenth
                        dates.select { |date| (13..19).cover?(date) }.first
                      when :first
                        dates.first
                      when :second
                        dates[1]
                      when :third
                        dates[2]
                      when :fourth
                        dates[3]
                      when :last
                        dates.last
                      end

    Date.new(year, month, day_of_the_week)
  end
