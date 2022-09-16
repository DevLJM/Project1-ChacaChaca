package chaca.contact.action;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8088/Model2/contact2.bo
public class ContactFrontController extends HttpServlet{
	//프로젝트 우클릭 - 설정 - 자바필드패스 - 에드라이브러리 - 톰캣 추가
	

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET,POST방식 모두 호출 - doProcess()실행 ");
		
		System.out.println("\n 1.가상주소 계산 시작");
		//1.가상주소 계산--------------------------------------------------
			//req.getRequestURL();
			//URL: http://localhost:8088/Model2/contact2.bo
			String requestURI = request.getRequestURI();
			//URI:/Model2/contact2.bo
			System.out.println("C:requestURI :"+requestURI); //URI주소 확인
								//C: Controller의 의미 
			
			String ctxPath = request.getContextPath();
			System.out.println("C: ctxPath :"+ctxPath);
			
			//URI의 /Model2 부분 삭세
			String command = requestURI.substring(ctxPath.length());
			//substring : 데이터 자르기
			//ctxPath의 길이만큼 데이터를 잘라서 가져오겠다는 뜻 
			System.out.println("C: command :"+command);
		//1.가상주소 계산--------------------------------------------------
			System.out.println("\n 1.가상주소 계산 끝");
			
			System.out.println("\n 2.가상주소 매핑 시작");
		//2.가상주소 매핑--------------------------------------------------
			Action action = null;
			ActionForward forward = null; //여러번 사용할 예정이라 변수 미리 선언해놓음
		//ActionForward 자바 페이지 생성하여 사용 (페이지 이동을 위한 정보를 저장하는 객체)
		if(command.equals("/ContactWrite.cot")){ //만약 주소가 맞아서 실행된다면 
			System.out.println("C : /ContactWrite.cot 호출 ");
			System.out.println("C: DB정보가 필요없음 -view페이지로 이동");
			
			//글쓰기 페이지 보여주기(DB정보 필요없음 -> Model2방식에서 view로 보내야함) 
			//(DB정보 필요하면 -> M ionForward(); //객체 생성
			forward = new ActionForward();
			forward.setPath("./contact/writeForm.jsp"); //어디로 갈것인지 
			forward.setRedirect(false); //어떤 방식으로 갈 것인지 설정 
			//false니까 forward방식으로 이동 
			
			
		}else if(command.equals("/ContactWriteAction.cot")){
			System.out.println("C:/ContactWriteAction.cot호출");
			System.out.println("C:DB정보가 필요없음-view페이지로 이동");
			
			//ContactWriteAction bwAction = new ContactWriteAction();
			action = new ContactWriteAction();//인터페이스를 통해 자동형변환  -> 응집도를 떨어트리기 위해 이렇게 구현 (객체지향)
			try {
				System.out.println("11111111111111111111111111");
				//forward = bwAction.execute(req, resp);
				forward = action.execute(request, response); 
				System.out.println("22222222222222222222222222222222");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}                   
		}else if(command.equals("/ContactList.cot")){
			System.out.println("C : /ContactList.cot 호출");
			System.out.println("C : DB정보가 필요, 페이지 이동X, 페이지 출력O");
			action = new ContactListAction();
			//contactListAction 객체 생성
			//ContactListAction listAction = new ContactListAction();
			try {
				//forward = listAction.execute(req, resp); //예외처리해야 오류 안뜸 
				forward = action.execute(request, response);  
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/ContactContent.cot")){
			//게시판의 글을 누르면 글내용으로 이동하는 주소로 이동 			
			System.out.println(" C: /ContactContent.cot호출");
			System.out.println("C: DB정보 사용, 출력 ");
			
			//contactContentAction 객체 생성
			action = new ContactContentAction();
			//action에서 상속받은 execute재정의 메서드 이용~
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(command.equals("/ContactUpdate.cot")){
			System.out.println("C: /ContactUpdate.cot 호출");
			System.out.println("C: DB정보 사용, 출력 ");
			
			action = new ContactUpdateAction();
			//action에서 상속받은 execute재정의 메서드 이용~
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(command.equals("/ContactUpdatePro.cot")){
			System.out.println("C: /ContactUpdatePro.cot 호출");
			System.out.println("C: DB가서 수정,페이지 이동 ");
			
			action = new ContactUpdateProAction();
			//action에서 상속받은 execute재정의 메서드 이용~
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/ContactDelete.cot")){
			System.out.println("C: /ContactDelete.cot 호출");
			System.out.println("C: DB가서 정보 삭제, 페이지 이동");
			
			action = new ContactDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//2.가상주소 매핑--------------------------------------------------
		System.out.println("\n 2.가상주소 매핑 끝");
		
		System.out.println("\n 3.가상주소 이동 시작");
		//3.가상주소 이동--------------------------------------------------
			if(forward != null){
				if(forward.isRedirect()){
					//true -> sendRedirect 방식으로 움직임
					
					System.out.println("C : true"+forward.getPath()+"이동, sendRedirect방식 ");
					
					response.sendRedirect(forward.getPath());
				}else{
					//false -> forward 방식으로 움직임 
					System.out.println("C : true"+forward.getPath()+"이동, forward방식 ");
					RequestDispatcher dis
					= request.getRequestDispatcher(forward.getPath());
					dis.forward(request, response);
				}
			}
		
		//3.가상주소 이동--------------------------------------------------
		System.out.println("\n 3.가상주소 이동 끝");
		
	
	}//////////////////////////////doProcess///////////////////////////////
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET방식 호출 - doGET()실행 ");
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST방식 호출 - doPOST()실행 ");
		doProcess(request, response);
	}

}
