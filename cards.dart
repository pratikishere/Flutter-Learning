void main() {
  var deck = Deck();
  deck.shuffle();
  print('Before\n $deck \n');
  print('Deal\n ${deck.deal(5)} \n');
  print('After\n $deck');
  print('\nCards with suit Hearts:\n ${deck.cardsWithSuit('Hearts')}');
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six'];
    var suits = ['Diamonds', 'Spades', 'Hearts', 'Clubs'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(rank, suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  Iterable<Card> cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  List<Card> deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }
}

class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  @override
  String toString() {
    return '$rank of $suit';
  }
}
