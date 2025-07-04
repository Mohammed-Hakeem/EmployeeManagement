package com.flm.controller;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/murty")
public class HelloController {

	@RequestMapping("/test")
	public String sayHello() {
		System.out.println("test....");
	//	ModelAndView mv = new ModelAndView("/WEB-INF/views/hello.jsp");
		return "hello";
	}

	@RequestMapping("/say")
	public ModelAndView sayHello1() {
		System.out.println("test1111....");
		ModelAndView mv = new ModelAndView("hello2");
		return mv;
	}
//	@RequestMapping("/showdate")
//	public ModelAndView showdate() {
//		
//		Date date= new Date();
//		String name="hakeem";
//		ModelAndView mv = new ModelAndView("/WEB-INF/views/showdate.jsp","abc",date);
//		mv.addObject("xyz",name);
//		return mv;
//	}
	@RequestMapping("/showdate")
	public String showdate1(Model model) {
		HashMap<String,Object> data= new HashMap<>();
		
		Date date= new Date();
		String name="ASHA";
		
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
		String time= LocalTime.now().format(formatter);
		
		//ModelAndView mv = new ModelAndView("/WEB-INF/views/showdate.jsp","abc",date);
		//mv.addObject("xyz",name);
		
		data.put("name", name);
		data.put("date", date);
		data.put("time", time);
		model.addAttribute("data",data);
		
		return "showdate";
	}
}
