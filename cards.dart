void main() {
  var deck = Deck();
  deck.shuffle();
  print(deck.toString());
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
