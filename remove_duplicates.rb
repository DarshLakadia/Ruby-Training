=begin
Given an array of numbers, remove the duplicates such that each unique element appears only once.
Input: numbers = [0,0,1,1,1,2,2,3,3,4]
Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

=end
numbers = [0,0,1,1,1,2,2,3,3,4]
left = 0
right = numbers.length-1

for i in 0..right
  if numbers[i] != numbers[i+1]
    numbers[left] = numbers[i]
    left+=1
  end
end

while left <= right
  numbers[left] = nil
  left+=1
end
p numbers
