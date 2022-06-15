require 'grammar'

describe 'verify_grammar' do
  it "string starts with capital letter and question" do
    result = verify_grammar("Hello, how are you?")
    expect(result).to eq true
  end

  it "string starts with capital letter and exclamation" do
    result = verify_grammar("Hello, how are you!")
    expect(result).to eq true
  end

  it "string starts with capital letter and dot" do
    result = verify_grammar("Hello, how are you.")
    expect(result).to eq true
  end

  it "string starts with capital letter without ending" do
    result = verify_grammar("Hello, how are you")
    expect(result).to eq false
  end

  it "string don't starts with capital letter and without ending" do
    result = verify_grammar("hello, how are you")
    expect(result).to eq false
  end

  it "string don't starts with capital letter and has question" do
    result = verify_grammar("hello, how are you?")
    expect(result).to eq false
  end

  it "error message" do
    expect { verify_grammar("") }.to raise_error "There is no string to check"
  end
end