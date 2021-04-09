require 'card'

describe Card do
  let (:subject) { described_class.new('Hearts', '8')}

  it { is_expected.to respond_to :suit }
  it { is_expected.to respond_to :rank }
  it { is_expected.to respond_to :show }
  
  it 'should return hearts for suit' do
    expect(subject.suit).to eq('Hearts')
  end

  it 'should return 8 for rank' do
    expect(subject.rank).to eq('8')
  end

  it 'should return true for show' do
    expect(subject.show).to eq(true)
  end

  it 'should return the suit and rank if show is true' do
    expect("#{subject}").to eq("#{subject.rank} of #{subject.suit}")
  end

  it 'should not return the suit and rank if show is false' do
    subject.show = false
    expect("#{subject}").to eq("Card is face down right now")
  end

end