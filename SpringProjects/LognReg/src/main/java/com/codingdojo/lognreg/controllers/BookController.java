package com.codingdojo.lognreg.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.lognreg.models.Book;
import com.codingdojo.lognreg.services.BookService;
import com.codingdojo.lognreg.services.UserService;


public class BookController {
	@Autowired
	BookService bookService;
	@Autowired
	UserService userServ;
	
	 @GetMapping("/books")
	 public String home(HttpSession session, Model model) {
		 if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
		 Long userId = (Long) session.getAttribute("userId");
		 model.addAttribute("user", userServ.findById(userId));
		 List<Book> books = bookService.getAll();
		    model.addAttribute("books", books);
		 return "home.jsp";
	 }
	
	@GetMapping ("/books/{id}")
	public String show(@PathVariable("id") Long id, Model model, HttpSession session){
		 if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
		Book book = bookService.getOne(id);
		model.addAttribute("book", book);
		return "showBook.jsp";
	}
	


	@GetMapping("/books/new")
	public String newBook(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
	    model.addAttribute("newBook", new Book());
	    return "newBook.jsp";
	}
	@PostMapping("/books")
	public String create(@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
	    if (result.hasErrors()) {
	        return "newBook.jsp";
	    } else {
	        bookService.save(book);
	        return "redirect:/books";
	    }
	}
	@GetMapping("/books/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
        Book book = bookService.getOne(id);
        model.addAttribute("book", book);
        return "EditBook.jsp";
    }
	
	@PutMapping(value="/books/{id}/edit")
    public String update(@PathVariable("id") Long id, 
			Model model, 
			@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			 return "redirect: /logout";
		 }
        if (result.hasErrors()) {
            return "EditBook.jsp";
        } else {
            bookService.save(book);
            return "redirect:/books";
        }
    }
}
