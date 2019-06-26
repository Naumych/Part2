# frozen_string_literal: true

# Class for calculating Fibonacci numbers
class Fibonacci
  def fibonacci(array, amount)
    until array.length == amount
      array << (array[-1] + array[-2])
      fibonacci(array, amount)
    end
  end

  def fibonacci_call
    fibonacci_array = [0, 1]
    puts fibonacci(fibonacci_array, 100)
    puts fibonacci_array
  end
end

Fibonacci.new.fibonacci_call
