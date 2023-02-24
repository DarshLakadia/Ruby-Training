# Count occurunce of character in given string and store result as each character and it's count as hash
class StringHash
  def count_string(str)
    hash_map = {}
    puts str
    puts len = str.length
    i = 0
    while i<len
      if hash_map.has_key? str[i]
        hash_map[str[i]] += 1
      else
        hash_map[str[i]] = 1
      end
      i+=1
    end
    puts hash_map
  end
end

puts "Enter a string"
str = gets.chomp
s1 = StringHash.new
s1.count_string(str)
