package com.example.demo.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.boardservice.BoardService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MailController {
	

	   @Autowired
	   BoardService boardService;

	   @GetMapping("/mail.do")
	   public ModelAndView mail(HttpServletRequest request, ModelAndView mav) {
		   
		   
	       return mav;
	   }

}
