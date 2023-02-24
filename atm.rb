=begin
1. Create an ATM system using Ruby that allows customers to access their bank account. The program should use attribute accessor, module, proc, lambda, and classes to provide a secure and user-friendly experience for customers.

Here's a suggested structure for the program:

Create a Bank module that contains two classes: Account and ATM.

The Account class should represent a customer's bank account and should have an initialize method that sets the initial balance. It should also have deposit and withdraw methods that allow customers to deposit or withdraw money.

The ATM class should represent the ATM machine that customers interact with. It should have an initialize method that takes an Account object as a parameter. It should also have a start method that prompts customers for their PIN, and a show_options method that displays the available options for checking the balance, depositing, and withdrawing.

When the customer selects an option to deposit or withdraw, use a proc or lambda to execute the corresponding method on the Account object.
=end
module Bank
  class Account
    attr_accessor :acc_balance
    def initialize(acc_balance)
      @acc_balance = acc_balance
    end

    def deposit_money(d_money)
      @acc_balance = @acc_balance + d_money 	
    end

    def withdraw_money(w_money)
      if @acc_balance > w_money
        @acc_balance = @acc_balance - w_money
      else
        puts "WARNING !!!!!! You don't have enough Balance"
      end
    end
  end
	
  class Atm 
    def initialize(acc_obj)
      @curr_obj = acc_obj
    end
    def start
      puts "Enter Your PIN"
      pin = gets.chomp.to_i
      if pin == 1234
        show_options
      else
        puts "Entered PIN is not Correct."
      end
    end
    def show_options
      puts "Enter your choice..."
      puts "1. Display Balance"
      puts "2. Deposit Money"
      puts "3. Withdraw Money"
      choice = gets.chomp.to_i
			
      case
      when choice==1
        puts "Your Account Balance is:"
        p @curr_obj.acc_balance
      when choice == 2
        puts "Enter amount you want to deposit"
        dep_money = gets.chomp.to_i
        proc2 = Proc.new {@curr_obj.deposit_money(dep_money)}
        proc2.call 
        puts "Account balance after deposit money is : #{@curr_obj.acc_balance}"
				
      when choice == 3
        puts "Enter amount you want to withdraw"
        w_money = gets.chomp.to_i
        lambda1 = -> {   @curr_obj.withdraw_money(w_money)}
        lambda1.call
        puts "Account balance after withdraw money is : #{@curr_obj.acc_balance}"
      else
        puts "/******SEE YOU AGAIN****/"
      end
    end
  end

	ac1 = Account.new(5000)
	# ac1.display_balance
	p ac1.acc_balance
	ac1.deposit_money(1000)
	#ac1.display_balance
	p ac1.acc_balance
	ac1.withdraw_money(1000)
	#ac1.display_balance
	p ac1.acc_balance
	atm1 = Atm.new(ac1)
	atm1.start
	# ac1.display_balance
end
