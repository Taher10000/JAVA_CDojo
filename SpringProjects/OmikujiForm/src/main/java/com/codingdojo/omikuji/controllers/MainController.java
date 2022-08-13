package com.codingdojo.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@GetMapping("/omikuji")
	public String omikuji() {
		
		return "index.jsp";

}
	@PostMapping("/submitForm")
	public String submitForm(
			@RequestParam(value="num") Integer num,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="work") String work,
			@RequestParam(value="living") String living,
			@RequestParam(value="nice") String nice,
			HttpSession session
			
			) {
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("work", work);
		session.setAttribute("living", living);
		session.setAttribute("nice", nice);

		return "redirect:/omikuji/show";
	}
	@GetMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("num", session.getAttribute("num"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("work", session.getAttribute("work"));
		model.addAttribute("living", session.getAttribute("living"));
		model.addAttribute("nice", session.getAttribute("nice"));

		return "show.jsp";

}
}