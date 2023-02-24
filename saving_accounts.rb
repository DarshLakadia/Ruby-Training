=begin
Assignment 2

Instructions

In this exercise you will be working with savings accounts. Each year, the balance of a savings account is updated based on the interest rate. The interest rate the bank gives depends on the amount of money in the accounts (its balance):

    0.5% for a non-negative balance less than 1000 dollars.
    1.621% for a positive balance greater or equal than 1000 dollars and less than 5000 dollars.
    2.475% for a positive balance greater or equal than 5000 dollars.
    3.213% for a negative balance (results in negative interest).

You have three tasks, each of which will deal with the balance and its interest rate.
1. Calculate the interest rate

Implement the SavingsAccount.interest_rate method to calculate the interest rate based on the specified balance:

SavingsAccount.interest_rate(200.75)
#=> 0.5

Note that the value returned is an instance of Float.
2. Calculate the annual balance update

Implement the SavingsAccount.annual_balance_update method to calculate the annual balance update, taking into account the interest rate:

SavingsAccount.annual_balance_update(200.75)
#=> 201.75375

Note that the value returned is an instance of Float.
3. Calculate the years before reaching the desired balance

Implement the SavingsAccount.years_before_desired_balance method to calculate the minimum number of years required to reach the desired balance:

SavingsAccount.years_before_desired_balance(200.75, 214.88)
#=> 14

Note that the value returned is an instance of Integer.
=end
class SavingAccount
  def interest_rate(amnt)
    case 
    when amnt>0 && amnt<1000
      0.5
    when amnt>1000 && amnt<5000
      1.621
    when amnt>5000
      2.475
    else
      -3.213
    end
  end
  def annual_balance_update(principle)
    rate = interest_rate(principle)
    principle= principle + (principle*rate*1)/100
    principle
  end

  def years_before_desired_balance(current_p,desired_p)
    count = 0
    while current_p < desired_p
      current_p = annual_balance_update(current_p)
      count += 1
    end
    puts count
  end
end
s1 = SavingAccount.new
s1.interest_rate(1500)
s1.annual_balance_update(200.75)
s1.years_before_desired_balance(200.75,214.88)
