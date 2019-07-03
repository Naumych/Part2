# frozen_string_literal: true

def five_step_array(five_step_array = [])
  i = 10
  until i == 105
    five_step_array << i
    i += 5
  end
  five_step_array
end

puts five_step_array
