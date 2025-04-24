def substrings(string, array)
 words = string.split(' ')
 count = array.reduce(Hash.new(0)) do |list, word|
    words.each do |item|
      if item.downcase.include?(word.downcase)
        list[word] += 1
      end
    end
    list
  end
  count
end