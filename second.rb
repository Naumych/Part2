def five_step_array
  i = 10
  arr = []
  until i == 105
    arr << i
    #puts i
    i += 5
    #puts i
  end
  puts arr
end

five_step_array
