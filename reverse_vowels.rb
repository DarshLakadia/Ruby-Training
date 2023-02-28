=begin
Reverse only vowels in the given string.
Input: string = "communication"
Expected output: "comminacituon"
=end
class Reverse
  def isVowel(character)
    character == "a" ||character ==  "e" ||character ==  "i" ||character ==  "o" ||character ==  "u" || character == "A" || character == "E" || character == "I" || character == "O" || character =="U"
  end
  def reverse_vowel
    string = "communication"
    len = string.length
    i=0
    j= len-1
    while i<j
      if(!isVowel(string[i]))
        i+=1
        next
      end
      if(!isVowel(string[j]))
        j-=1
        next
      end
      temp=""
      temp = string[i]
      string[i]=string[j]
      string[j] = temp
      i+=1
      j-=1
    end
    p string
  end
end
r1 = Reverse.new
r1.reverse_vowel
