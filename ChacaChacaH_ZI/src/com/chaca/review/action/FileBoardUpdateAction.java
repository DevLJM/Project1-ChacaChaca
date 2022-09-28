package com.chaca.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chaca.review.db.BoardDAO;
import com.chaca.review.db.BoardDTO;


public class FileBoardUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
//		String pageNum = request.getParameter("pageNum");
		int bno=Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		BoardDAO dao = new BoardDAO();
		//메서드 호출
		BoardDTO dto=dao.getBoard(bno);
		// 데이터 저장 => 이동할정보 저장
		request.setAttribute("dto", dto);
		request.setAttribute("bno", bno);
		request.setAttribute("pageNum", pageNum);
		
		ActionForward forward=new ActionForward();
		forward.setPath("./reviewUpdateForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
