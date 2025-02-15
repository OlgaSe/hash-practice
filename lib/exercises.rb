
# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * m log m) where n - length of the strings array, m - length of the longest string
# Space Complexity: O(n)

# [eat, meet, tea, ate, hi]

# {
#   'aet' => [eat, tea, ate],
#   'eemt' => [meet],
#   'ih' => [ih]
# }

def grouped_anagrams(strings)
  return [] if strings.length == 0
  hash = {}
  strings.each do |string|
    key = anagrams_helper(string)
    if !hash[key]
      hash[key] = [string]
    else 
      hash[key] << string
    end
  end
  return hash.values
end

def anagrams_helper(string)
  array_of_letters = string.split(//)
  return array_of_letters.sort!.join()
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n log n)
# Space Complexity: O(n)
def top_k_frequent_elements(list, k)
  return [] if list.length == 0
  hash = {}
  result = []
  list.each do |num|
    if !hash[num]
      hash[num] = 1
    else
      hash[num] += 1
    end
  end

  sorted_hash = hash.sort_by{|key, value| -value}

  i = 0
  while i < k do
    result << sorted_hash[i][0]
    i += 1
  end
  return result
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
