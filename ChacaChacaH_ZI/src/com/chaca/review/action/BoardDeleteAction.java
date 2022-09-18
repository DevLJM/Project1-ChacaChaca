package com.chaca.review.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chaca.review.db.BoardDAO;
import com.chaca.review.db.BoardDTO;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println("(from BoardDeleteAction) M: execute 메서드 호출됨");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		String password = request.getParameter("password");

		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.getBoard(bno);
		
		System.out.println("(from BoardDleteAction) M: 삭제할 데이터" + dto);

		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("password", password);

		ActionForward forward = new ActionForward();
		forward.setPath("./reviewDeleteForm.jsp");
		forward.setRedirect(false); // forward 방식으로 이동

		return forward;

	}
}