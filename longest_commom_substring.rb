
# This method returns an array of all possible substrings of the input string
# e.g. input = "hello"
# the output = ["h", "he", "hel", "hell", "hello", "e", "el", "ell", "ello", "l", "ll", "llo", "l", "lo", "o"] 
def split_string string 
  indices = (0...string.length).to_a
  indices.product(indices).reject{ |i,j| i > j }.map{ |i,j| string[i..j] }.uniq
end

# This method returns the longest common substring of two input strings
def longest_common_substring string1, string2

  # Get array of substrings from input string1
  substring_collections_1 = split_string string1

  # Get array of substrings from input string2
  substring_collections_2 = split_string string2
  
  # Get array of substrings that are common to substring_collections_1 and substring_collections_2
  intersection = substring_collections_1 & substring_collections_2

  # Get the longest common substring
  intersection.max_by(&:length)
end

puts longest_common_substring "basketball", "basketcase"  # "basket"
puts longest_common_substring "one_basket", "basketcase"  # "basket"
puts longest_common_substring "one_basket", "two_basket_case" # "_basket"
