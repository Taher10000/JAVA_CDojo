package com.codingdojo.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/your_server")
public class MainController {
	@RequestMapping("")
	public String index (HttpSession session) {
		
		if(session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		else {
			Integer currCount = (Integer) session.getAttribute("count");
			currCount++;
			session.setAttribute("count", currCount);
		}
		return "index.jsp";
	}
	@RequestMapping("/counter")
	public String counter (HttpSession session, Model model) {
		Integer currCount = (Integer) session.getAttribute("count");
		model.addAttribute("showCount", currCount);
		return "showCount.jsp";
		}

}
