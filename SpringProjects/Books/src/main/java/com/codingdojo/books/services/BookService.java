package com.codingdojo.books.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.books.models.Book;
import com.codingdojo.books.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepos;
	
	public BookService(BookRepository bookRepos) {
		this.bookRepos = bookRepos;
	}
	  // returns all the books
    public List<Book> allBooks() {
        return bookRepos.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepos.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepos.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    public Book updateBook(Book b) {
    	
    	return bookRepos.save(b);

    }
    public void deleteBook(Long id) {
    	bookRepos.deleteById(id);
    }
}
