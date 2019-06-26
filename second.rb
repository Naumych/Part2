# frozen_string_literal: true

def five_step_array
  i = 10
  arr = []
  until i == 105
    arr << i
    i += 5
  end
  puts arr
end

five_step_array
