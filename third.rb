# frozen_string_literal: true

def calculate_fibonacci_numbers(amount, array = [0, 1])
  array << array[-1] + array[-2] until array.length == amount
  array
end

puts calculate_fibonacci_numbers(100)
