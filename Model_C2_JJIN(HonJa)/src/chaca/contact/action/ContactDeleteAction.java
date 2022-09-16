package chaca.contact.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chaca.contact.db.BoardDAO;
import chaca.contact.db.BoardDTO;

public class ContactDeleteAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M(model) : ContactDeleteAction_execute() 호출");
		
		//BoardDAO 객체 생성
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.getBoard(bno);
		System.out.println(dto);
		
		boolean result = dao.deleteBoard(dto);
		
		ActionForward forward = new ActionForward();
		if(result){
			forward.setPath("./ContactList.cot");
			forward.setRedirect(true);
		}
		return forward;

	}
}
