package com.codingdojo.lognreg.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.lognreg.models.Book;
import com.codingdojo.lognreg.repositories.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepo;
	

	public Book save(Book b) {
		return bookRepo.save(b);
	}


	public List<Book> getAll() {
		return bookRepo.findAll();
	}
	

	public Book getOne(Long id) {
		return bookRepo.findById(id).orElse(null);
	}

	
	public void delete(Long id) {
		bookRepo.deleteById(id);
	}
}
