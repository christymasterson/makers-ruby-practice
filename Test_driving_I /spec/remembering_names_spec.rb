require 'remembering_names'

describe 'the store_name method' do

  it "Displays a confirmation message when we input a name" do
  expect { store_name("Bill") }.to output("Name stored!").to_stdout
  end

  it "returns the name Bob when we input it" do
  expect(store_name("Bob")).to eq "Bob"
  end

end
