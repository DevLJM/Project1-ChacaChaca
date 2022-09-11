package com.chaca.review.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BoardFrontController extends HttpServlet {
			// Controller == 서블릿
	
	// doProcess 시작 //////////////////////////////////////////////////////////////////////
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("(from BoardFrontController_doProcess) C: doProcess(= doGet+doPost) 실행");
		
		System.out.println("\n1. 가상 주소 계산 시작---------------------------------");
		String requestURI = request.getRequestURI();
		System.out.println("(from BoardFrontController_doProcess) C: requestURI: " + requestURI);
		
		String ctxPath = request.getContextPath();
		System.out.println("(from BoardFrontController_doProcess) C: contextPath: " + ctxPath);
		
		String command = requestURI.substring(ctxPath.length());
		System.out.println("(from BoardFrontController_doProcess) C: command: " + command);
		System.out.println("1. 가상 주소 계산 끝---------------------------------\n");

		
		System.out.println("\n2. 가상 주소 매핑 시작---------------------------------");
		Action action = null; // ~~action 리턴타입= ActionForward!!!
		ActionForward forward = null; // 통행권
		
		if(command.equals("/BoardWrite.bo")){
			// 패턴1
			System.out.println("(from BoardFrontController_doProcess) C: /BoardWrite.bo 주소 호출됨");
			System.out.println("(from BoardFrontController_doProcess) C: DB 정보 필요 X -> view 페이지(writeForm.jsp)로 이동시킬거");
			
			forward = new ActionForward();
			forward.setPath("./review/writeForm.jsp");
			forward.setRedirect(false); // forward 방식으로 이동
			
		}// if --- 패턴1 끝 --- /BoardWrite.bo

		else if(command.equals("/BoardWriteAction.bo")){
			// 패턴2
			System.out.println("(from BoardFrontController_doProcess) C: /BoardWriteAction.bo 주소 호출됨");
			System.out.println("(from BoardFrontController_doProcess) C: 패턴2= DB 정보 필요 O + 페이지 이동 O");
			
			action = new BoardWriteAction(); 
			// 上              下             upcasting
			
			try {
				forward = action.execute(request, response); // execute 메서드 실행 결과 forward 갖고 오니까
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}// else if  -- 패턴2 끝 -- /BoardWriteAction.bo
		
		else if(command.equals("/BoardList.bo")){
			// 패턴3
			System.out.println("(from BoardFrontController_doProcess) C: /BoardList.bo 주소 호출됨");
			System.out.println("(from BoardFrontController_doProcess) C: 패턴3= DB 정보 필요 O, 페이지 이동 X, 기존 페이지에 출력은 O");
			
			action = new BoardListAction();
			// 上              下             upcasting
			
			try {
				System.out.println("(from BoardFrontController_doProcess) C: 해당 Model 객체 호출할 거");
				forward = action.execute(request, response);
						// execute 메서드 리턴 타입이 ActionForward니까, AF 타입인 forward 변수로 받아주기
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}// else if  -- 패턴3 끝 -- /BoardList.bo
		
		else if(command.equals("/BoardContent.bo")){
			System.out.println("(from BoardFrontController_doProcess) C: /BoardContent.bo 호출");
			System.out.println("(from BoardFrontController_doProcess) C: 패턴3= DB 정보 필요 O, 페이지 이동 X, 기존 페이지에 출력은 O");
			
			action = new BoardContentAction();
			// 上              下             upcasting
			
			try {
				System.out.println("(from BoardFrontController_doProcess) C: 해당 Model 객체 호출할 거");
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}// else if --- 패턴3 끝 --- /BoardContent.bo 
		
		System.out.println("2. 가상 주소 매핑 끝---------------------------------\n");

		System.out.println("\n3. 가상 주소 이동 시작---------------------------------");
		if(forward != null){
			if(forward.isRedirect()){
				// isRedirect == true => sendRedirect 방식으로 이동
				System.out.println("(from BoardFrontController_doProcess) C: isRedirect? true -> sendRedirect 방식으로, " + forward.getPath()+"로 이동");
				response.sendRedirect(forward.getPath());
			} else {
				// isRedirect == false => forward 방식으로 이동
				System.out.println("(from BoardFrontController_doProcess) C: isRedirect? false -> forward 방식으로, " + forward.getPath()+"로 이동");
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
		}
		System.out.println("3. 가상 주소 이동 끝---------------------------------\n\n");
	} // doProcess 끝 //////////////////////////////////////////////////////////////////////
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("(from BoardFrontController_doGet) C: doGet() 실행 -> doProcess 호출하겠슴다");
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("(from BoardFrontController_doPost) C: doPost() 실행 -> doProcess 호출하겠슴다");
		doProcess(request, response);
	}
	
}

