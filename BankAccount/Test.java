public class Test {
    public static void main(String[] args){

        BankAccount taher = new BankAccount();
        BankAccount alex = new BankAccount();
        BankAccount john = new BankAccount();
        taher.Deposit("Savings", 100);
        alex.Deposit("savings", 80);
        john.Deposit("Checking", 100);

        taher.Withdraw("Savings", 20);
        alex.Withdraw("Checking", 30);
        john.Withdraw("Savings", 100);

        System.out.println(taher.Balance()); 
        System.out.println(alex.Balance()); 
        System.out.println(john.Balance()); 

    }
    
}
