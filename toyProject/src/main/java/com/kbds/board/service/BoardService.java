package com.kbds.board.service;

import java.util.List;

import com.kbds.board.domain.BoardVO;
 
public interface  BoardService {
	
    public List<BoardVO> boardListService() throws Exception;
    
    public BoardVO boardDetailService(int bno) throws Exception;
    
    public int boardInsertService(BoardVO board) throws Exception;
    
    public int boardUpdateService(BoardVO board) throws Exception;
    
    public int boardDeleteService(int bno) throws Exception;
}