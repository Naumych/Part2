# frozen_string_literal: true

# class
class DayNumber
  def calculate_ordinal_day_since_begining_of_year(day, month, year)
    months = fetch_months year
    months[0...month - 1].sum + day - 1
  end

  private

  def leap?(year)
    ((year % 4).zero? && (year % 100) != 0) || (year % 400).zero?
  end

  def fetch_months(year)
    months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    months[1] = 29 if leap? year
    months
  end
end

def fetch_day_month_year
  puts 'Input day, month, year in number format'
  day = gets.chomp.to_i
  month = gets.chomp.to_i
  year = gets.chomp.to_i
  [day, month, year]
end

date = fetch_day_month_year
puts DayNumber.new.calculate_ordinal_day_since_begining_of_year date[0], date[1], date[2]
