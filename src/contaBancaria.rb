# Description: Create a system to manage bank accounts.
# Each account should have an account number, balance, and account holder's name.

require "pry" # Import the 'pry' gem for debugging

# Define the BankAccount class
class BankAccount

  # The initialize method is called when a new instance of the class is created
  def initialize(account_number, balance, account_holder)
    @account_number = account_number # Initialize the account_number attribute
    @balance = balance               # Initialize the balance attribute
    @account_holder = account_holder # Initialize the account_holder attribute
  end

  # Method to deposit money into the account
  def deposit
    puts "Hello #{@account_holder}, please enter the amount you want to deposit:" # Prompt the user for the deposit amount
    deposit_amount = gets.chomp.to_i # Read the user input and convert it to an integer
    @balance += deposit_amount # Update the account balance
    puts "You deposited: $#{deposit_amount}, have a great day!!" # Confirm the deposit
  end

  # Method to withdraw money from the account
  def withdraw
    puts "Hello #{@account_holder}, how much would you like to withdraw today?" # Prompt the user for the withdrawal amount
    withdrawal_amount = gets.chomp.to_i # Read the user input and convert it to an integer
    if withdrawal_amount > @balance
      puts "The withdrawal amount exceeds the account balance" # Check if the withdrawal amount is greater than the balance
    else
      @balance -= withdrawal_amount # Update the account balance after withdrawal
      puts "Withdrawal successful!" # Confirm the withdrawal
    end
  end

  # Method to check the account balance
  def check_balance
    puts "The balance of account number #{@account_number} is $#{@balance}" # Display the current account balance
  end
end

binding.pry # Start the pry console for debugging
