package com.chaca.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chaca.review.db.BoardDAO;
import com.chaca.review.db.BoardDTO;

public class BoardContentAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from BoardContentAction) M: execute() 메서드 호출됨");
		
		int bno = Integer.parseInt(request.getParameter("bno"));  // DB에 int로 넘겨야 하니까 형변환
		String pageNum = request.getParameter("pageNum"); // 얘는 또 넘기면 String으로 넘어갈텐데 왜 굳이 int로 하나요 ㅎ
		
		BoardDAO dao = new BoardDAO();
		dao.updateReadcount(bno); // 4. 조회수 1 증가 메서드!!
		System.out.println("(from BoardContentAction) M: 조회수 +1 완");
		
		// 게시판 글 1개의 정보를 가져와서 출력 == 멤버 1명 정보 출력했었던 거랑 똑같음!!
//		BoardDTO dto = dao.getBoard(bno); // 5. 특정 글 1개 정보 조회 메서드
		
		// (Model에서 정보 출력 X) View에서 정보 출력해서 보여주기 위해서~~
		// 지금,, 여기,, action 페이지,,=Model에 있는 정보를  --> view로 이동시키자!!!!!!!
		// 用 request 영역!!
//		request.setAttribute("dto", dto);
		request.setAttribute("dto", dao.getBoard(bno)); // 위에 두 과정 합쳐서 이렇게 더 많이 쓴다!!
		request.setAttribute("pageNum", pageNum); // 출력할 때 사용
		
		// 정보 출력할 view 페이지로 이동~ 통행권 만들고
		ActionForward forward = new ActionForward();
		forward.setPath("./reviewContent.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
