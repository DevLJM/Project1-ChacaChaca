package com.chaca.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	/**
	 * 1. 추상메서드이며, 반드시 오버라이딩해서 사용해야 함
	 * 2. 실행할 때 request, response 정보를 매개변수로 전달해야만 이 메서드 호출 가능^^
	 * 3. 메서드 호출이 완료되면, ActionForward(=주소(어디로 갈지)+이동방식(어떻게 갈지)이 담긴 객체) 정보를 리턴
	 * 
	 * @param request
	 * @param response
	 * @return ActionForward
	 * @throws Exception
	 */
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
