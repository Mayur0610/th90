package com.torryharris.controllers;

import com.torryharris.model.UserLogin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	
	@RequestMapping("/login")
	public String login(@ModelAttribute("objUser") UserLogin user) {
		return "login";
	}

	@RequestMapping("/login-panel")
	public String home(@ModelAttribute("objUser") UserLogin login, Model model, @RequestParam("action") String click) {

		if (click.equalsIgnoreCase("login")) {
			// get data from db

				if (login.getUserName().equals("Manish") && login.getUserPasswd().equals("Manish123")) {
				return "index1";
			} else {
				model.addAttribute("msg", "----- Incorrect Username or Password -----");
				return "login";
			}
		} else if (click.equalsIgnoreCase("register now")) {
			return "redirect:/registration";
		}
		return "login";
	}

}
