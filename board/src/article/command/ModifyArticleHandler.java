package article.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.ArticleData;
import article.service.ArticleNotFoundException;
import article.service.ModifyArticleService;
import article.service.ModifyRequest;
import article.service.PermissionDeniedException;
import article.service.ReadArticleService;
import auth.service.User;
import mvc.command.CommandHandler;

public class ModifyArticleHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/modifyForm.jsp";

	//GET방식으로 폼을 요청할 때 수정할 데이터 내용을 폼에 채워서 보여줌 -> 읽기기능, 수정기능 필요
	private ReadArticleService readService = new ReadArticleService();
	private ModifyArticleService modifyService = new ModifyArticleService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		try {
			String noVal = req.getParameter("no");
			int no = Integer.parseInt(noVal);
			//폼에 보여줄 게시글 구하기. 게시글존재하지 않으면 ArticleNotFoundException발생
			ArticleData articleData = readService.getArticle(no, false);//읽기기능에서 가져옴. 
			//현재 로그인한 사용자 정보 구하기
			User authUser = (User) req.getSession().getAttribute("authUser");
			if (!canModify(authUser, articleData)) {//게시글 작성자 id랑 로그인한 사용자가 다르면 error
				res.sendError(HttpServletResponse.SC_FORBIDDEN);
				return null;
			}
			//폼에 데이터를 보여줄 때 사용할 객체 생성
			ModifyRequest modReq = new ModifyRequest(authUser.getId(), no,
					articleData.getArticle().getTitle(),
					articleData.getContent());

			req.setAttribute("modReq", modReq);
			return FORM_VIEW;
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

	private boolean canModify(User authUser, ArticleData articleData) {
		String writerId = articleData.getArticle().getWriter().getId();
		return authUser.getId().equals(writerId);
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		User authUser = (User) req.getSession().getAttribute("authUser");//게시글 수정을 요청한 사용자 정보 구하기
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);

		ModifyRequest modReq = new ModifyRequest(authUser.getId(), no,
				req.getParameter("title"),//요청파라미터로 제목과 내용 가져와서 ModifyRequest객체 생성
				req.getParameter("content"));
		req.setAttribute("modReq", modReq); //request의 modReq에 저장

		//에러 정보를 담을 맵 객체 생성
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		modReq.validate(errors);
		if (!errors.isEmpty()) {//errors가 비어있지 않다면 = 에러가 있다는것.
			return FORM_VIEW;// 유효하지 않은 데이터가 있으면 다시 폼을 보여줌
		}
		try {
			modifyService.modify(modReq);//게시글 수정 기능 실행
			return "/WEB-INF/view/modifySuccess.jsp";
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
