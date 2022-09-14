package chaca.contact.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chaca.contact.db.BoardDAO;
import chaca.contact.db.BoardDTO;

public class ContactWriteAction implements Action{
	//오버라이딩 단축키 : alt+shift+s+v
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M(model):BoardWriteAction.execute()호출");
		//한글처리 
		request.setCharacterEncoding("UTF-8");
		//전달정보 저장(제목,비밀번호,이름,내용)
		//BoardDTO 객체 생성 
		BoardDTO dto = new BoardDTO();
		dto.setName(request.getParameter("name")); //메서드에 request정의되어 있어 사용 가능 
		dto.setPass(request.getParameter("pass"));
		dto.setSubject(request.getParameter("subject"));
		dto.setContent(request.getParameter("content"));
		
		//IP주소 추가
		
		dto.setIp(request.getRemoteAddr());
		System.out.println("M :"+dto);
		
		
		System.out.println(" N :"+ dto);
		
		//DB에 정보 저장
		//BoardDAO 생성 
		BoardDAO dao = new BoardDAO();
		
		//DB에 글 정보를 저장 
		dao.boradWrite(dto);
		
		//페이지 이동 정보 저장(리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./ContactList.cot"); //어디로 갈건지 
		forward.setRedirect(true);//어떻게 갈건지 
		//true - sendRedirect()방식, false - forward()방식
		//주소랑 화면이 같이 바껴야할 것 같음 -> sendRedirect
		
		return forward;
	}
	
	
}
