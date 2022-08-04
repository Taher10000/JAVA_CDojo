import java.util.Random;

public class BankAccount {
    private double checkingBalance = 0.0;
    private double savingBalance = 0.0;
    private static int numberOfAccounts = 0;
    private static double totalAmount = 0.0;
    private Long accountNum;

    public BankAccount(){
        checkingBalance = 0.0;
        savingBalance = 0.0;
        accountNum = newAccountNum();
        numberOfAccounts++;
        System.out.println("New account created. Account Number:" + accountNum);
        System.out.println("Total number of accounts:" + numberOfAccounts);


    }
    private Long newAccountNum(){
        Random rd = new Random();
        return rd.nextLong();

    }

    public double getCheckingBalance(){
        return checkingBalance;
    }
    public double getSavingBalance(){
        return savingBalance;
    }
    public void setCheckingBalance(double checkingBalance){
        this.checkingBalance += checkingBalance;
    }
    public void setSavingBalance(double savingBalance){
        this.savingBalance = savingBalance;
    }

    public void Deposit(String type, double amount){
        if(type == "Checking" || type == "Checking"){
            setCheckingBalance(getCheckingBalance() + amount);
            totalAmount += amount;
        }
        if(type == "Savings" || type == "savings"){
            setSavingBalance(getSavingBalance() + amount);
            totalAmount += amount;
        }
        else{
            System.out.println("Choose between checking or savings:");
        }

    }
    public void Withdraw(String type, double amount){
        if(type == "Checking" || type == "Checking"){
            if(getCheckingBalance() < amount){
                System.out.println("Not enough balance in you checking.");
            }
            else{
            setCheckingBalance(getCheckingBalance() - amount);
            totalAmount -= amount;
            }
        }
        if(type == "Savings" || type == "savings"){
            if(getSavingBalance() < amount){
                System.out.println("Not enough balance in your savings.");
            }
            else{
            setSavingBalance(getSavingBalance() - amount);
            totalAmount -= amount;
            }
        }
        else{
            System.out.println("Choose between checking or savings:");
        }

    }
    public double Balance(){
        double balance = checkingBalance + savingBalance;
        System.out.println("Your Balance:");
        return balance;
    }

}