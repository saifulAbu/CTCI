def is_permutation(str1, str2)
  return false if str1.size != str2.size

  char_map = Hash.new(0)
  str1.each_char do
    |char|
    char_map[char] += 1
  end

  str2.each_char do
    |char|
      char_map[char] -= 1
      return false if char_map[char] < 0
  end
  return true
end
puts is_permutation("abc", "cab")
puts is_permutation("abcd", "abce")
