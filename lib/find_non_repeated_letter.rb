# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  string_length = str.length - 1
  prev = nil
  i = 0
  while i <= string_length
    if prev == str[i] || str[i] == str[i + 1]
      i += 1
      prev = str[i - 1]
    else
      return str[i]
      i = string_length + 1
    end
  end
end

