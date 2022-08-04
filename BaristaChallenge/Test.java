import java.util.ArrayList;

public class Test {
    public static void main(String[] args){

    Item item1 = new Item("cappucino", 6.5);
    Item item2 = new Item("Mocha", 5.5);
    Item item3 = new Item("Latte", 4.5);
    Item item4 = new Item("Drip Coffee", 4.0);

    Order order1 = new Order();
    order1.addItem(item1);
    order1.addItem(item2);
    order1.setReady(true);
    order1.getStatusMessage();
    System.out.println(order1.getStatusMessage());
    order1.getOrderTotal();
    System.out.println(order1.getOrderTotal() + "\n");


    order1.getOrderTotal();

    Order order2 = new Order();
    order2.getStatusMessage();
    System.out.println(order2.getStatusMessage());
    System.out.println(order2.getOrderTotal() + "\n");


    Order order3 = new Order("Tiger");
    order3.addItem(item2);
    order3.addItem(item4);
    order3.setReady(true);
    order3.getStatusMessage();
    System.out.println(order3.getStatusMessage());
    order3.getOrderTotal();
    System.out.println(order3.getOrderTotal()+ "\n");

    Order order4 = new Order("Wayne");
    Order order5 = new Order("Alexander");

    order1.display();
    order3.display();
 


    }
}