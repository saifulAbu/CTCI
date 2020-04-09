def is_palindrome_perm str

  map = Hash.new(0)
  odd_found = false
  str.each_char do
    |ch|
    next if ch == " "
    ch = ch.downcase
    map[ch] += 1
  end

  map.values.each do
    |val|
    if val.odd?
      return false if odd_found
      odd_found = true
    end
  end

  return true
end

puts is_palindrome_perm "Tact Coalll"