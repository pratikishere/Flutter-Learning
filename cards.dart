void main() {
  var deck = Deck();

  print('Deck:\n $deck \n');
  print('Deal:\n ${deck.deal(6)} \n');
  print('Deck after deal:\n $deck');

  print('\nCards with suit Hearts:\n ${deck.cardsWithSuit('Hearts')}');
  deck.removeCard('Hearts', 'Ace');
  print(
    '\nRemoved Ace of Hearts. Cards with suit Hearts:\n ${deck.cardsWithSuit('Hearts')}',
  );

  deck.shuffle();
  print('\nDeck after shuffle:\n $deck');
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

  void removeCard(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
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
