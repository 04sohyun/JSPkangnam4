package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ModifyArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();

	public void modify(ModifyRequest modReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			//게시글 번호에 해당하는 Article 객체 생성
			Article article = articleDao.selectById(conn, 
					modReq.getArticleNumber());
			if (article == null) {//게시글 x -> 예외 발생
				throw new ArticleNotFoundException();
			}
			if (!canModify(modReq.getUserId(), article)) {//사용자id랑 게시글작성id랑 동일하지 않으면 예외 발생
				throw new PermissionDeniedException();
			}
			articleDao.update(conn, 
					modReq.getArticleNumber(), modReq.getTitle());//제목 수정
			contentDao.update(conn, 
					modReq.getArticleNumber(), modReq.getContent());//내용 수정
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private boolean canModify(String modfyingUserId, Article article) {
		return article.getWriter().getId().equals(modfyingUserId);//사용자id랑 게시글작성id랑 동일하면 true
	}
}
