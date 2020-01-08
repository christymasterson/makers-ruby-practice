require 'bank_account'
require 'person'

describe BankAccount do
  it 'can desposit money' do
    person = Person.new(:name, :address)
    bank = BankAccount.new(person)
    bank.deposit(10)
    expect(bank.balance).to eq(10)
  end

  it 'can withdraw money' do
    person = Person.new(:name, :address)
    bank = BankAccount.new(person)
    bank.withdraw(5)
    expect(bank.balance).to eq(-5)
  end
end
