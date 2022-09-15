package com.chaca.review.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chaca.review.db.BoardDAO;
import com.chaca.review.db.BoardDTO;

public class BoardListAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from BoardListAction) M: execute 메서드를 호출하셨나요^^");
		
		// DB 관련 정보 처리할거니까(DB review 테이블에 저장된 애들 select 해와서 목록으로~) 
		// DAO 객체 생성
		BoardDAO dao = new BoardDAO();
		
		// 게시판에 작성되어 있는 전체 글 개수(3. getBoardCount 호출) -> cnt 변수에 저장
		int cnt = dao.getBoardCount();
		
		// 페이징 처리 -----------------------------------------------------------------------------
		// 한 페이지에 보여줄 글의 개수 설정
		String urlpageSize = request.getParameter("pageSize");
			if(urlpageSize == null) {
				urlpageSize = "5"; 
			}
		
		int pageSize = Integer.parseInt(urlpageSize);
		
		// 현 페이지가 몇 번째 페이지인지 계산...
		String pageNum = request.getParameter("pageNum");
		
			// 기존 페이지 정보가 없을 경우에는 항상 1페이지!로 설정할 거
		if(pageNum == null){
			pageNum = "1";
		}
		
		// 시작행 번호 계산
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage -1) * pageSize + 1;
		
		// 끝행 번호 계산
		int endRow = currentPage * pageSize;
		
		// 페이징 처리 끝-----------------------------------------------------------------------------
		
		
		// dao 메서드 중에서 게시판 글 정보 모두 한방에 가져오는~~ 게 아니라!! 
		// 나눠서 가져오기 위한^^ 메서드(2-1) 호출
		List<BoardDTO> boardList = dao.getBoardList(startRow, pageSize);
		System.out.println("(from BoardListAction) M: 게시판 글 정보 저장 완"); //????????

		
		// 페이징 처리2 (하단 페이지 링크... 이전, 다음,, 1 2 3페이지ㅡ,,,,,) ----------------------------
		// 전체 페이지 수 계산
		int pageCount = cnt / pageSize + (cnt % pageSize == 0 ? 0 : 1 );
		
		// 한 화면에 보여줄 페이지 수(= 페이지 블럭) 몇 개 할거냐??? 정하기
		//           이전 1 2 3 4 5.. 9 10 다음
		int pageBlock = 3;
		
		// 페이지 블럭의 시작 번호.. 1~10번 페이지블럭     11~20 페이지 블럭    21~30 페이지 블럭
	    //                               시작 번호: 1          11                   21
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		
		// 페이지 블럭의 끝번호 
		int endPage = startPage + pageBlock -1;
		
		// 총 페이지 수와 ---  페이지 블럭 끝번호 비교 ??????????
		if (endPage > pageCount) {
			endPage = pageCount;
		}
		// 페이징 처리2 끝 ------------------------------------------------------------------------------ 
		
		
		// Model(지금 여기.. Action) -> view 페이지로 boardList 정보 전달을 위해, request 영역에 저장
		request.setAttribute("boardList", boardList);
		System.out.println("(from BoardListAction) M: BoardList 정보 request 영역에 저장 완");
		
		// + 페이징 처리 정보 전달을 위해 request 영역에 저장
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("cnt", cnt);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		System.out.println("(from BoardListAction) M: 페이징 처리 정보 request 영역에 저장 완");
		
		
		// 페이지 이동(화면 전환)하기 위해 ActionForward 객체 생성
		ActionForward forward = new ActionForward();
		forward.setPath("./review.jsp");
		forward.setRedirect(false); // 화면만 바뀌는 forward 방식으로 갈거니까 false
		
		return forward;
		
	}// execute

}// BoardListAction class
