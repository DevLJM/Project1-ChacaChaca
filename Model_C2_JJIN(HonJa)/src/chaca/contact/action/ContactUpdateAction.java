package chaca.contact.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chaca.contact.db.BoardDAO;
import chaca.contact.db.BoardDTO;

public class ContactUpdateAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest requset, HttpServletResponse response) throws Exception {
		System.out.println("M: ContactUpdateAction_execute 호출");
		
		//전달된 정보 저장 (bno,pageNum)
		int num = Integer.parseInt(requset.getParameter("bno"));
		String pageNum = requset.getParameter("pageNum");
		
		//전달된 글번호 바탕으로 해당 글정보 모두를 가져오기 
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.getBoard(num);
		
		System.out.println("M :수정할 데이터(기존데이터)"+dto);
		//DB에서 가져온 정보를 requsetuest 영역에 저장 
		requset.setAttribute("dto", dto);
		requset.setAttribute("pageNum", pageNum);
		//페이지 이동 (View:./board.updateForm.jsp -> 출력)
		ActionForward forward = new ActionForward();
		forward.setPath("./contact/updateForm.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
