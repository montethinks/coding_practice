require 'date'

class Meetup
  DAYS_OF_WEEK = { monday: 1, tuesday: 2, wednesday: 3,
                   thursday: 4, friday: 5, saturday: 6,
                   sunday: 7 }.freeze

  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    Date.new(year, month, find_day_the_week(weekday, schedule))
  end

  private

  def find_day_the_week(weekday, schedule)
    dates = list_of_dates(weekday)
    
    case schedule
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
  end

  def list_of_dates(weekday)
    dates_of_occurrences(weekday).map { |date| date.day }
  end

  def dates_of_occurrences(weekday)
    full_calendar_month.select do |date|
      date.cwday == DAYS_OF_WEEK[weekday]
    end
  end

  def full_calendar_month
    all_days = []

    (1..31).each do |day|
      if Date.valid_date?(year, month, day)
        all_days << Date.new(year, month, day)
      end
    end

    all_days
  end
end
