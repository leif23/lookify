package com.assignment.controllers;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment.models.Lookify;
import com.assignment.service.lookifyService;

@Controller
public class lookifyController {
	
	@Autowired
	lookifyService lookifyServ;
	
	
	@GetMapping("/")
	public String index() {
		
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashBoard() {
		
		return "dashboard.jsp";	}
	
	@GetMapping("/create/song")
	public String createSong(@ModelAttribute("song") Lookify lookfiy, Model model) {
		
		return "addnewsong.jsp";
	}
	
	@PostMapping("/create/song")
	public String createSongs(@ModelAttribute("song") @Valid Lookify lookify,BindingResult result,Model model) {
		if(result.hasErrors()) {
			model.addAttribute("allSongs",lookifyServ.addNewSong(lookify));
			return "addnewsong.jsp";
		}
		
		lookifyServ.addNewSong(lookify);
		return "redirect:/dashboard";
	}
	
	

}
