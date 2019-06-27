# frozen_string_literal: true

# class
class DayNumber
  @@monthes = {
    1 => 31,
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
  }

  def fetch_day_month_year
    puts 'Input day, month, year in number format'
    day = gets.chomp.to_i
    month = gets.chomp.to_i
    year = gets.chomp.to_i
    [day, month, year]
  end

  def leap?(year)
    @@monthes[2] = 29 if ((year % 4).zero? && (year % 100) != 0) || (year % 400).zero?
  end

  # this method collects in number of month inf about amount of days starting from New Year
  def days_collector
    days = {}
    i = 1
    @@monthes.each_pair do |key, value|
      days[key] = i
      i += value
    end
    days
  end

  def execute_algorithm
    date = fetch_day_month_year
    leap?(date[2])
    days_collector
    puts "It's #{days_collector[date[1]] + date[0] - 1} day of year"
  end
end

DayNumber.new.execute_algorithm
