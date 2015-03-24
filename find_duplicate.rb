def find_duplicate(string)
  string_chars = (0...string.size).map do |i|
    string[i]
  end

  counts = {}
  string_chars.each do |e|
    if counts[e] == nil
      counts[e] = 0
    end
    counts[e] += 1
  end
  
  dupes = []
  counts.each do |k, v|
    if v >= 2
      dupes << k
    end
  end
  dupes

end


puts find_duplicate("mississippi")
