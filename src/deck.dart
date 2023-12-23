void main(){
var deck = Deck();
//   deck.cardsWithSuits("dimond");
//   deck.shuffle();
//   deck.printCards();
//   print(deck.deal(5));
print(deck);
deck.removeCard("heart", "ace");
print(deck);

}

class Deck {
    List<Card> cards = [];
    Deck(){
        var ranks = ["ace", "two", "three", "four", "five"];
        var suits = ["heart", "dimond", "club", "spade"];
        for(var suit in suits){
        for(var rank in ranks){
            // named parameters
            var card = Card(suit, rank);
            cards.add(card);
        }
        }
    }
    // to print an instance of a class, the class should have a toString method defined within it.   
    @override
    toString(){
        return cards.toString();
    }
    void printCards(){
        print(cards);
    }
    // shuffling the cards
    shuffle(){
        cards.shuffle();
    }
    // to find cards in the deck with a specific suit
    cardsWithSuits(String suit){
        // returns a tuple of all the elements that satisfy the condition.
        var target = cards.where((card) => card.suit == suit);
        print(target);
    }
    // distributing cards for players
    deal(int handsize){
        var hands = cards.sublist(0, handsize);
        // to remove the cards form the original card list
        cards = cards.sublist(handsize);
        return hands;
    }
    // removing a specific card from the deck
    removeCard(String suit, String rank){
        cards.removeWhere((card) => card.suit == suit && card.rank == rank);
    }
}

class Card {
    String suit;
    String rank;
    Card(this.suit, this.rank);
    @override
    toString(){
        return "$rank of $suit";
    }
}



