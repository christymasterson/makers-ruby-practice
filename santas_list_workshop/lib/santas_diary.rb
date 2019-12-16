class SantasDiary
  attr_reader :list_of_names

  def initialize
    @list_of_names = []
  end

  def add_name(name)
    @list_of_names << name
    #OR list_of_names.push(name)
  end

  def remove_name(name_to_remove)
    @list_of_names.delete(name_to_remove)
  end

end
