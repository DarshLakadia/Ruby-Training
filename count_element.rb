=begin

1. Create a text file called `array.txt` with content given below(NoCoding)
   [0, 1, 6, 3, 5, 8, 2, 4, 1, 0, 2, 5, 6, 8, 9, 2, 7]

   Now, Create a program to read that array stored in the file.
   find out count of each unique element and 
   stored it in a hash if count is greater than 1 else append/stored in new file called output.txt

   Output should be:
   (on console):
   {0=>2, 1=>2, 6=>2, 5=>2, 8=>2, 2=>3}
   (in `output.txt`):
   {3=>1, 4=>1, 9=>1, 7=>1}
=end
require 'json'
file = File.open("array.txt","r")

# content = file.sysread(100).chomp.split("]")[0].split("[")[1].split(", ")
content = JSON.parse(file.read);
# puts content
hash = {}
i=0
while i < content.length
  if hash.has_key? content[i].to_i
    hash[content[i].to_i] += 1
  else
    hash[content[i].to_i] = 1
  end
  i+=1
end
proc = Proc.new{ output = File.new("output.txt","w+")
hash.each do
  |k,v|
  if v < 2
    output.write(k.to_s+"=>"+v.to_s+" ")
    hash.delete(k)
  end
end
}
proc.call

puts hash
