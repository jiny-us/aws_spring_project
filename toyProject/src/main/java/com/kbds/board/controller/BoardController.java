package com.kbds.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbds.board.domain.BoardVO;
import com.kbds.board.service.BoardServiceImpl;
 
@Controller
public class BoardController {
 
	@Autowired
	BoardServiceImpl boardServiceImpl;
	
    @RequestMapping("/list") 
    private String boardList(Model model) throws Exception{
        
        model.addAttribute("list", boardServiceImpl.boardListService());

        return "list"; 
    }
    
    @RequestMapping("/detail/{bno}") 
    private String boardDetail(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", boardServiceImpl.boardDetailService(bno));
        
        return "detail";
    }
    
    @RequestMapping("/insert")
    private String boardInsertForm(){
        
        return "insert";
    }
    
    @RequestMapping("/insertProc")
    private String boardInsertProc(HttpServletRequest request) throws Exception{
        
        BoardVO board = new BoardVO();
        
        board.setSubject(request.getParameter("subject"));
        board.setContent(request.getParameter("content"));
        board.setWriter(request.getParameter("writer"));
        
        boardServiceImpl.boardInsertService(board);
        
        return "redirect:/list";
    }

    @RequestMapping("/update/{bno}") //게시글 수정폼 호출  
    private String boardUpdateForm(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", boardServiceImpl.boardDetailService(bno));
        
        return "update";
    }

    @RequestMapping("/updateProc")
    private String boardUpdateProc(HttpServletRequest request) throws Exception{
        
        BoardVO board = new BoardVO();
        board.setSubject(request.getParameter("subject"));
        board.setContent(request.getParameter("content"));
        board.setBno(Integer.parseInt(request.getParameter("bno")));
        
        boardServiceImpl.boardUpdateService(board);
        
        return "redirect:/detail/"+request.getParameter("bno"); 
    }

    @RequestMapping("/delete/{bno}")
    private String boardDelete(@PathVariable int bno) throws Exception{
        
        boardServiceImpl.boardDeleteService(bno);
        
        return "redirect:/list";
    }
}