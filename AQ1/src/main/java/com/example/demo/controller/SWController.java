package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SWController {


	@GetMapping("/sangwonlist.do")
	public String sangwonlist() {
		return "sangwonlist";
	}
	
	@GetMapping("/sangwonwrite.do")
	public String sangwonwrite() {
		return "sangwonwrite";
	}
	
	@GetMapping("/sangwonview.do")
	public String sangwonview() {
		return "sangwonview";
	}

	
}
