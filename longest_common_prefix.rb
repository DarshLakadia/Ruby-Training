=begin
Write a function to find the longest common prefix string amongst an array of strings.
Input: string = ["challenge","characteristic","champion"] 
Expected output: "cha"

=end
class PrefixString
  
  def longest_common_prefix
    string = ["challenge","characteristic","champion"]  
    size = string.length
    result = ""
    if size == 0
      result = ""
    elsif size == 1
      result = string[0]
    else
      string = string.sort
      # p string
      len = string[0].length
      for i in 0...len
        if string[0][i] == string[size-1][i]
          result += string[0][i]
        else
          break
        end
      end
    end
    puts result
  end
end
prefix_str1 = PrefixString.new
prefix_str1.longest_common_prefix
