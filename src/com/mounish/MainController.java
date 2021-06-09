package com.mounish;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homepage() {
		return "hello";
	}
	
//	@RequestMapping("displayname")
//	public String displayName(HttpServletRequest request) {
//		String firstName = request.getParameter("firstName");
//		request.setAttribute("firstName", firstName);
//		return "display";
//	}
	
	@RequestMapping("name")
	public ModelAndView displayName(@RequestParam("firstName") String firstName, ModelAndView modelAndView) {
		Date date = new Date();
		List<String> names = new ArrayList<>();
		names.add("Mounish");
		names.add("Nitin");
		names.add("Poojitha");
		names.add("Shambhavi");
		modelAndView.addObject("firstName", firstName);
		modelAndView.addObject("date", date);
		modelAndView.addObject("teams",names);
		return modelAndView;
	}
}
