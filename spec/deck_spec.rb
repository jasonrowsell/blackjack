require 'deck'

  SUITS = ['Hearts', 'Spades', 'Clubs', 'Diamonds']
  RANKS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"] 

  describe Deck do
    let(:subject) { described_class.new(SUITS, RANKS) }

      it { is_expected.to respond_to :suits }
      it { is_expected.to respond_to :ranks }
      it { is_expected.to respond_to :deck }
      it { is_expected.to respond_to :shuffle }
      it { is_expected.to respond_to :deal_card }
      it { is_expected.to respond_to :replace_with }

    describe '#deal_card' do
      before do
        @dealt_card = subject.shuffle.last
      end

      it 'returns the last card of a shuffled deck' do
        expect(subject.deal_card).to eq @dealt_card
      end

      it 'returns a card that is not nil' do
        expect(subject.deal_card).not_to be_nil
      end
    end

    describe '#replace_with' do
      xit 'gets a new deck' do
      end
    end
  end

