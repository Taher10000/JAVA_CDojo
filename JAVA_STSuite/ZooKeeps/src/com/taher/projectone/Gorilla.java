package com.taher.projectone;

public class Gorilla extends Mammal {

	public Gorilla() {
		// TODO Auto-generated constructor stub
		super();
	}
	public void throwSomething() {
		this.energyLevel -= 5;
		System.out.println("Throwing a stick. " + energyLevel);
		
	}
	public void eatBananas() {
		this.energyLevel += 10;
		System.out.println("Eating bananas. " + energyLevel);

	}
	public void climb() {
		this.energyLevel -= 10;
		System.out.println("Climbing tree. " + energyLevel);
	}
	public int showEnergyLevel() {
		return energyLevel;
	}
	
}
