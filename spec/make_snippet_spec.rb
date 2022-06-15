require 'make_snippet'

describe 'make_snippet' do
  it 'Show the first five words of a string' do
    first_five = make_snippet("In this project you will build personal diary system")
    expect(first_five).to eq "In this project you will..."
  end
end