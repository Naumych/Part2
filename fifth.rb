# frozen_string_literal: true

# class
class DayNumber
  def fetch_day_month_year
    puts 'Input day, month, year in number format'
    day = gets.chomp.to_i
    month = gets.chomp.to_i
    year = gets.chomp.to_i
    [day, month, year]
  end

  def leap?(year, months)
    months[2] = if ((year % 4).zero? && (year % 100) != 0) || (year % 400).zero?
                  29
                else
                  28
                end
    months
  end

  # this method collects in number of month inf about amount of days starting from New Year
  def days_collector(months, days = {}, counter = 1)
    months.each_pair do |key, value|
      days[key] = counter
      counter += value
    end
    days
  end

  def execute_algorithm(months)
    date = fetch_day_month_year
    months = leap?(date[2], months)
    days_collector months
    puts "It's #{days_collector[date[1]] + date[0] - 1} day of year"
  end
end

months = {
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

DayNumber.new.execute_algorithm months
