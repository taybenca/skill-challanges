require 'check_todo'

describe 'text_checker' do
  it "The string has #TODO" do
    result = text_checker("#TODO Do the dinner")
    expect(result).to eq true
  end

  it "The #TODO is in the end of the string" do
    result = text_checker("Do the dinner #TODO")
    expect(result).to eq true
  end

  it "The string has the blank space between # and TODO" do
    result = text_checker("# TODO Do the dinner")
    expect(result).to eq false
  end

  it "The string has no capital todo" do
    result = text_checker("#todo Do the dinner")
    expect(result).to eq false
  end

  it "The string has no #" do
    result = text_checker("TODO Do the dinner")
    expect(result).to eq false
  end

  it "fails" do
    expect {text_checker("")}.to raise_error "Nothing in the list"
  end

end