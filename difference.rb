=begin
Find the difference between the square of the sum 
and the sum of the squares of the first N natural numbers 
>> (1 + 2 + ... + N)² - (1² + 2² + ... + N²)
Example, N = 5
(1 + 2 + 3 + 4 + 5)² - (1² + 2² + 3² + 4² + 5²) = 170
=end

class Difference
  def calc(number)
    sum1,sum2 = 0,0
    for i in (1..number)
      sum1+=i 
    end
    operand1 = sum1**2
    for i in (1..number)
      sum2 = sum2+i**2
    end
    operand2 = sum2
    result = operand1 - operand2
  end
end
d1 = Difference.new
p d1.calc(5)
