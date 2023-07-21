package com.example.demo.image;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.boardservice.BoardService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ImageController {
	

	   @Autowired
	   BoardService boardService;

	   @GetMapping("/image.do")
	   public ModelAndView image(HttpServletRequest request, ModelAndView mav) {
		   
		   
	       return mav;
	   }

}
