require_relative 'person'

class BankAccount
  attr_reader :balance, :person

  def initialize(person)
    @balance = 0
    @person = person
  end

  def deposit(money)
    @balance = @balance + money
  end

  def withdraw(money)
    @balance = @balance - money
  end

  def update_address(address)
    @user.update_address(address)
  end
end
