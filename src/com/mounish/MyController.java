package com.mounish;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mounish.model.User;

@Controller
public class MyController {
	
	@GetMapping("/")
	public ModelAndView userInfo() {
		ModelAndView modelAndView = new ModelAndView("userinfo");
		User user = new User();
		modelAndView.addObject("user", user);
		
		Map<String,String> genderMap = new HashMap<String,String>();
		genderMap.put("male", "Male");
		genderMap.put("female", "Female");
		modelAndView.addObject("gender", genderMap);
		
		Map<String,String> countryMap = new HashMap<String, String>();
		countryMap.put("India", "India");
		countryMap.put("USA", "USA");
		countryMap.put("UK", "UK");
		countryMap.put("Iran", "Iran");
		modelAndView.addObject("country", countryMap);
		
		String info = new String("");
		modelAndView.addObject("info", info);
		
		Map<String,String> skillsMap = new HashMap<String, String>();
		skillsMap.put("Java", "Java");
		skillsMap.put("Python", "Python");
		skillsMap.put("Spring", "Spring");
		skillsMap.put("MySQL", "MySQL");
		skillsMap.put("GIT", "GIT");
		skillsMap.put("AWS", "AWS");
		modelAndView.addObject("skills", skillsMap);
		
		return modelAndView;
	}
	
	@PostMapping("displayuser")
	public ModelAndView displayUser(User user) {
		ModelAndView modelAndView = new ModelAndView("displayuser");
		return modelAndView;
	}

}
