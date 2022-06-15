require 'manage_time'

describe 'counting_time' do
 
  it  'counting time for less than 200' do
    total_time = counting_time(1)
    expect(total_time).to eq 1
  end

  it 'counting_time equal to 200' do
    total_time = counting_time(200)
    expect(total_time).to eq 1
  end

  it 'counting_time for not multiples than 200 and round up' do
    total_time = counting_time(300)
    expect(total_time).to eq 2
  end

  it 'counting time for multiples of 200' do
    total_time = counting_time(400)
    expect(total_time).to eq 2
  end

  it 'counting time is 5000' do
    total_time = counting_time(5000)
    expect(total_time).to eq 25
  end

end
