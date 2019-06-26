# frozen_string_literal: true

# Class for printing 30-days monthes
class Monthes
  MONTHES = {
    'January' => 31,
    'February' => 28,
    'March' => 31,
    'April' => 30,
    'May' => 31,
    'June' => 30,
    'July' => 31,
    'August' => 31,
    'September' => 30,
    'October' => 31,
    'November' => 30,
    'December' => 31
  }.freeze

  attr_reader :monthes

  def print_30_days_monthes
    MONTHES.each { |key, value| puts "#{key}" if (value % 30).zero? }
  end
end

Monthes.new.print_30_days_monthes
