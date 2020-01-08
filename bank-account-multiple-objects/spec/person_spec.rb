require 'person'
require 'bank_account'

describe Person do

  it 'creates a new instance of person' do
    person = Person.new("Carmen", "Southampton")
    expect(person).to be_instance_of Person
  end

  it 'saves name of a person' do
    person = Person.new("Carmen", "Southampton")
    bank = BankAccount.new(person)
    expect(bank.person.name).to eq "Carmen"
  end

  it 'saves address of a person' do
    person = Person.new("Carmen", "Southampton")
    bank = BankAccount.new(person)
    expect(bank.person.address).to eq "Southampton"
  end

  it 'update_address of a person' do
    person = Person.new("Carmen", "Southampton")
    bank = BankAccount.new(person)
    bank.person.update_address("Portsmouth")
    expect(bank.person.address).to eq "Portsmouth"
  end
  
end
