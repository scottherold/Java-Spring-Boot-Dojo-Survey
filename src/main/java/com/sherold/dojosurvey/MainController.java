package com.sherold.dojosurvey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// Annotation to use class as controller
@Controller

// Annotation catch-all for root route
@RequestMapping("/")
public class MainController {
	// GET route for root route
	@RequestMapping("")
	public String index() {
		return "index.jsp";
	}
	
	// POST route for results
	@RequestMapping(value="/results", method=RequestMethod.POST)
	
	// Includes parameters from form and model to send data to the results page
	// RedirectAttributes included for null name
	public String results(@RequestParam(value="name", required=false) String name, @RequestParam("location") String location, @RequestParam("language") String language, @RequestParam(value="comment", required=false) String comment, Model model, RedirectAttributes redirectAttributes) {
		// Adds model attributes
		
		// Event handler for flash message if name is blank
		if (name.equals("")) {
			// If name is blank, throw an error
			redirectAttributes.addFlashAttribute("nameError", "Name cannot be blank!");
			return "redirect:/";
		}
		model.addAttribute("name", name);
		model.addAttribute("location", location);
		model.addAttribute("language", language);
		if (!comment.equals(null)) {
			model.addAttribute("comment", comment);
		} else {
			model.addAttribute("comment", "");
		}
		
		return "result.jsp";
	}
}
