package com.codingdojo.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
private final ExpenseRepository expenseRepos;
	
	public ExpenseService(ExpenseRepository expenseRepos) {
		this.expenseRepos = expenseRepos;
	}
    public List<Expense> allExpenses() {
        return expenseRepos.findAll();
    }
    public Expense createExpense(Expense e) {
        return expenseRepos.save(e);
    }
    public Expense findExpense(Long id) {
        Optional<Expense> optionalExpense = expenseRepos.findById(id);
        if(optionalExpense.isPresent()) {
            return optionalExpense.get();
        } else {
            return null;
        }
    }
    
    public Expense updateExpense(Expense b) {
    	
    	return expenseRepos.save(b);

    }
    public void deleteExpense(Long id) {
    	expenseRepos.deleteById(id);
    }

}
