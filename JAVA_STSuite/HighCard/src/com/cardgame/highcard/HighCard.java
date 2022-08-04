package com.cardgame.highcard;
import java.util.ArrayList;
import java.util.Scanner;


public class HighCard {
public Deck deck;
public Card playerCard;
public String name;
	public HighCard(Deck deck, Card drawnCard, String name) {
		this.deck = deck;
		this.playerCard = drawnCard;
		this.name = name;
		
		// TODO Auto-generated constructor stub
		
	}
	public void compareCards(HighCard player2) {
		if(player2.playerCard.getRank() > this.playerCard.getRank()) {
			System.out.println(player2.name + " WINS!!!");
			
		}
		else if (this.playerCard.getRank() > player2.playerCard.getRank()){
			System.out.println(this.name + " WINS!!!");
			
		}
		else {
			System.out.println("DRAW!!!");
		}
			
		
	}
	public static String getPlayerName() {
		Scanner scanName = new Scanner(System.in);
		System.out.println("Enter Your Name: ");
		String playerName = scanName.nextLine();
		return playerName;
	}
	
	
	
}
