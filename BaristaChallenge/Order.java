import java.util.ArrayList;
    
// Here we're creating a new data type called Order
public class Order {
    
    // MEMBER VARIABLES
    private String name; // default value of null
    private boolean ready; // default value false
    private ArrayList<Item> items = new ArrayList<Item>(); // defaults to null

    public Order(){
        this.name = "Guest";
        
    }
    public Order(String name){
        this.name = name;
        this.ready = false;
    }

    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public boolean getReady(){
        return ready;
    }
    public void setReady(Boolean ready){
        this.ready = ready;
    }
    public ArrayList<Item> getItems(){
        return items;
    }
    public void setItems(ArrayList<Item> items){
        this.items = items;
    }

    public void addItem(Item item){
        this.items.add(item);
    }
    public String getStatusMessage(){
        if (this.ready){
        return "Your order is ready.";
        }
        else{
            return  "Thank you for waiting. Your order will be ready soon.";
        }
    }
    public double getOrderTotal(){
        double total = 0.0;
        for(Item i: this.items){
            total+= i.getPrice();
        }
        return total;
    }
    
    public void display(){
        System.out.printf("Customer Name: %s\n", this.name);
        for(Item i: this.items){
            System.out.println(i.getName() + " - $" + i.getPrice());
        }
        System.out.println("Total : $" + this.getOrderTotal());


    }
    
    // CONSTRUCTOR
    // No arguments, sets name to "Guest", initializes items as an empty list.
    
    // OVERLOADED CONSTRUCTOR
    // Takes a name as an argument, sets name to this custom name.
    // Initializes items as an empty list.
    
    // ORDER METHODS
    
    	// Most of your code will go here, 
    	// so implement the getters and setters first!
    
    // GETTERS & SETTERS
    
}

