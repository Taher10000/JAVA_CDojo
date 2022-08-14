package com.codingdojo.savetravels.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.savetravels.dojosandninjas.models.Dojo;
import com.codingdojo.savetravels.dojosandninjas.services.DojoService;

@Controller
public class DojoController {
	
	@Autowired
	private DojoService dojoServ;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/dojos/new";
	}
		
//	@GetMapping("/dojos/new")
//	public String dojos(Model model) {
//		List<Dojo> listOfDojos = dojoServ.allDojos();
//		
//		model.addAttribute("dojos", listOfDojos);
//		
//		return "newDojo.jsp";
//	}
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("newDojo") Dojo newDojo) {		
		return "newDojo.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String oneDojo(@PathVariable("id") Long id, Model model) {		
		model.addAttribute("dojo", dojoServ.findDojo(id));	
		return "DojoPage.jsp";
	}
	
		
	@PostMapping("/dojos/create")
	public String createDojo(@Valid @ModelAttribute("newDojo") Dojo newDojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		}
		
		dojoServ.createDojo(newDojo);
		
		return "redirect:/dojos/new";
	}
	
	
	}
	
	
