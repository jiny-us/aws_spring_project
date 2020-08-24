package com.kbds.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbds.board.mapper.BoardMapper;

@Controller
public class TestController {
    
	@RequestMapping("/")
	public String test() {
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String goToContent() {
		return "aboutUs";
	}
	
    @Autowired
    BoardMapper mBoardMapper;
    
    @RequestMapping("/test")
    private String dbTest() throws Exception{
       
       System.out.println("dbTest() START"); 
       System.out.println(mBoardMapper.boardCount()); 
       System.out.println("dbTest() END"); 

       return "test"; 
    }
}
