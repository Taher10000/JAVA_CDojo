package com.cardgame.highcard;


public class TestDeck {

	public static void main(String[] args) {
		
		Deck myDeck = new Deck();
		myDeck.Shuffle();
//		for (Card card: myDeck.getCards()) {
//			card.showCard();
//		}
//		System.out.println("-------------------------------");
//	
//		myDeck.draw(); 
//		System.out.println("-------------------------------");
//		for (Card card: myDeck.getCards()) {
//			card.showCard();
//		}
		String name1 = HighCard.getPlayerName();
		System.out.println("-------------------------------");

		String name2 = HighCard.getPlayerName();
		System.out.println("-------------------------------");

		
		System.out.println(name1 +"'s Card: ");
		HighCard player1 = new HighCard(myDeck, myDeck.draw(), name1);
		System.out.println("-------------------------------");
		System.out.println(name2 + "'s Card: ");
		HighCard player2 = new HighCard(myDeck, myDeck.draw(), name2);
		System.out.println("-------------------------------");

		player1.compareCards(player2);

//		for (Card card: player1.deck.getCards()) {
//			card.showCard();
		
	}
		
}
//}