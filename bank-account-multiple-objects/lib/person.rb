class Person

  attr_reader :name, :address

  def initialize(name, address)
    @name = name
    @address = address
  end

  def update_address(address)
    @address = address
  end

end
