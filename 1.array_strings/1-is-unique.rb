# check if a string has all unioue characters
require 'set'

def is_unioue_using_map(str)
    set = Set.new()
    str.each_char do
        |char|
        return false if set.include? char
        set.add char
    end
    return true
end

def is_unioue_no_extra_space
    #TODO
end

puts is_unioue_using_map "abcdef"
puts is_unioue_using_map "abcdefa"