package com.codingdojo.savetravels.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.savetravels.dojosandninjas.models.Dojo;
import com.codingdojo.savetravels.dojosandninjas.models.Ninja;
import com.codingdojo.savetravels.dojosandninjas.services.DojoService;
import com.codingdojo.savetravels.dojosandninjas.services.NinjaService;

@Controller
public class NinjaController {
	@Autowired
	private NinjaService ninjaServ;
	
	@Autowired
	private DojoService dojoServ;
		
	@GetMapping("/ninjas/new")
	public String ninjas(@ModelAttribute("newNinja") Ninja newNinja, Model model) {
		List<Dojo> allDojos = dojoServ.allDojos();
		model.addAttribute("allDojos", allDojos);
		
		return "newNinja.jsp";
	}
	
	
	
	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("newNinja") Ninja newNinja, BindingResult result, Model model) {
		if (result.hasErrors()) {			
			return "newNinja.jsp";
		}
		ninjaServ.save(newNinja);
		
		return "redirect:/ninjas/new";
	}
	
}
