class Deck
  attr_reader :deck, :suits, :ranks

  SUITS = ['Hearts', 'Spades', 'Clubs', 'Diamonds']
  RANKS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"] 

  def initialize suits, ranks
    @deck = []
    @suits = suits
    @ranks = ranks
    create_deck
  end

  def shuffle
    deck.shuffle!
  end

  def deal_card
    deck.pop
  end

  def replace_with
  end

  private
  def create_deck
    suits.each do |suit|
      ranks.each do |rank|
        deck.push(Card.new(suit, rank))
      end
    end
  end

end