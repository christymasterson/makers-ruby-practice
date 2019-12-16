require 'santas_diary'

describe SantasDiary do

  it 'creates an instance of SantasDiary' do
    santas_diary = SantasDiary.new
    expect(santas_diary). to be_instance_of SantasDiary
  end

  it 'creastes an empty list of names' do
  santas_diary = SantasDiary.new
  expect(santas_diary.list_of_names).to be_a Array
  # OR expect(santas_diary.list.count).to eq 0
  end

  it 'lets santa add a name to list' do
    santas_diary = SantasDiary.new
    santas_diary.add_name("Eoin")
    expect(santas_diary.list_of_names).to include("Eoin")
    # OR expect(santas_diary.list_of_names.length).to eq 1
  end

  it 'lets santa remove a name from the list' do
    santas_diary = SantasDiary.new
    santas_diary.add_name("Eoin")
    santas_diary.remove_name("Eoin")
    expect(santas_diary.list_of_names).not_to include("Eoin")
  end

end

#Could also do responds to but they're not very strong tests -
#they check whether methods exist rather than whether they do what we want them to.
#Respond to useful - but need actual tests as well.
