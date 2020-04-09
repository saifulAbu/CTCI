def urlify(arr, string_size)
  arr_size = arr.size
  str_end_index = string_size - 1
  arr_end_index = arr_size - 1
  while str_end_index >= 0
    cur_char = arr[str_end_index]
    if cur_char == " "
      arr[arr_end_index] = "0"
      arr[arr_end_index-1] = "2"
      arr[arr_end_index-2] = "%"
      arr_end_index -= 3
    else
      arr[arr_end_index] = arr[str_end_index]
      arr_end_index -= 1
    end
    str_end_index -= 1
  end
  arr
end



input = ["m", "r", " ", "j", "h", "o", "n", " ", "s", "m", "i", "t", "h", "", "", "", "" ]

puts input.join

urlify input, 13
puts input.join

