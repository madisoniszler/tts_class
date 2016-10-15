
# The app should have a class of Student and the student should "login" with their email and password before they can take a test. The user should be able to take the test and receive feedback on answers. Their score should be saved and printed at the end of the test. If they score under 60 they should be prompted to take the test again.

class Student
  attr_reader :score
  attr_accessor :email, :password
  def initialize(name, email, password, score)
    @name = name
    @email = email
    @password = password
    @score = score
  end

  def reset_score
    @score = 0
  end

  def question(arithmetic,correct_answer)
    puts "So, what is #{arithmetic}?"
    answer = gets.chomp.to_i
    if answer == correct_answer
      @score += 25
      puts "Correct!"
    else puts "Incorrect. The answer is #{correct_answer}."
    end
  end

end

puts "Name:"
input_name = gets.chomp
puts "Email:"
input_email = gets.chomp
puts "Password:"
input_password = gets.chomp

new_student = Student.new(input_name,input_email,input_password,0)
puts "Please take the following exam."
while new_student.score < 60
  new_student.reset_score
  new_student.question("2+2",4)
  new_student.question("5-4",1)
  new_student.question("2*6",12)
  new_student.question("2^3",8)
  puts "You earned a score of #{new_student.score}."
  if new_student.score < 60
    puts "You have to retake the test!"
    puts
  end
end


# Create an Atm Application that includes:
# An Account class
# 3 attributes: name, balance, pin
# Create 4 additional methods: display_balance, withdraw, deposit, and pin_error.
# The user should be prompted to enter their pin anytime they call display_balance, withdraw, or deposit.
# pin_error should contain  "Access denied: incorrect PIN." and be puts when the user types the wrong pin.
#

class Account
  @@bank = "Chase"
  attr_accessor :name, :balance
  attr_reader :pin, :account_access

  def self.bank
     @@bank
  end

  def initialize(name, balance, pin, account_access)
    @name = name
    @balance = balance
    @pin = pin
    @account_access = account_access
  end

  def display_balance
    puts "#{@name}'s account balance:  $#{@balance}"
  end

  def withdraw=(amount)
    if amount > @balance
      puts "Withdrawal denied: amount exceeds $#{@balance} balance."
    else
      @balance -= amount
      puts "$#{amount} withdrawal successful."
      puts "#{@name}'s Account Balance:  $#{@balance}"
    end
  end

  def deposit=(amount)
    @balance += amount
  end

  def pin_error=(input_pin)
    num_chances = 1
    until input_pin == @pin || num_chances == 3
      puts "Access denied: incorrect PIN. Try Again"
      input_pin = gets.chomp.to_i
      num_chances +=1
    end
    if input_pin == @pin
      puts "Access granted.  What would you like to do? (Display Balance / Make a Withdrawal / Make a Deposit)"
    else
      puts "Access denied: session over."
      @account_access = "Locked"
    end
  end

end

# julie harrow opens an account with Chase
active_account = Account.new("Julie Harrow",2000,1234,"Active")
puts "Welcome to #{Account.bank} bank ATM, #{active_account.name}! Please enter your pin number to access your account:"
active_account.pin_error = gets.chomp.to_i
if active_account.account_access == "Active"
  action = gets.chomp.downcase
  until action == "done"
    if action == "display balance"
      active_account.display_balance
    elsif action == "make a withdrawal"
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      active_account.withdraw = amount
    elsif action == "make a deposit"
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      active_account.deposit = amount
    end
    puts "Anything else that you would you like to do? (Display balance / Make a withdrawal / Make a deposit / Done)"
    action = gets.chomp.downcase
  end
end
