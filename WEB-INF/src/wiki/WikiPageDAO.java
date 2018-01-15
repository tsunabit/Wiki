package wiki;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import fw.DBManager;
import fw.ResultSetBeanMapping;

public class WikiPageDAO {
	
	// ResultSetの1行をWikiPageDTOのインスタンスに変換するクラス
	// ここでしか利用されないため、無名クラスとしてこの場所でインスタンス化する
	private ResultSetBeanMapping<WikiPageDTO> allMapping = new ResultSetBeanMapping<WikiPageDTO>() {
		public WikiPageDTO createFormResultSet(ResultSet rs) throws SQLException {
			WikiPageDTO page = new WikiPageDTO();
			page.setName(rs.getString("name"));
			page.setContent(rs.getString("content"));
			page.setTimestamp(rs.getTimestamp("update_time"));
			return page;
		}
		@Override
		public WikiPageDTO createFromResultSet(ResultSet rs) throws SQLException {
			// TODO Auto-generated method stub
			WikiPageDTO page = new WikiPageDTO();
			page.setName(rs.getString("name"));
			page.setContent(rs.getString("content"));
			page.setTimestamp(rs.getTimestamp("update_time"));
			return page;
			// return null;
		}
	};
	
	// このクラスのインスタンスを取得
	public static WikiPageDAO getInstance() {
		return new WikiPageDAO();
	}
	
	// 全件検索を実施
	public List<WikiPageDTO> findALL() throws SQLException {
		String sql = "select * from wiki_page order by update_time desc";
		return DBManager.simpleFind(sql, allMapping);
	}
	
	// 指定した名前に一致するレコードを検索する
	public WikiPageDTO findByName(String name) throws SQLException {
		String sql = "select * from wiki_page where name = '" + name + "'";
		
		List<WikiPageDTO> list = DBManager.simpleFind(sql, allMapping);
		if(list.size() == 0) {
			return null;
		}else if(list.size() > 1) {
			throw new IllegalArgumentException("record > 1");
		}
		return list.get(0);
	}
	
	// 指定したWikiPageを元にINSERTを実行します
	public void insert(WikiPageDTO page) throws SQLException {
		String sql = "insert into wiki_page (name, content)"
					+ "values(" + "'" + page.getName() + "'"
					+ ",'" + page.getContent() + "'"
					+ ")";
		DBManager.simpleUpdate(sql);
	}
	
	// 指定したwikipageを元にupdateを実行します
	public void update(WikiPageDTO page) throws SQLException {
		String sql = "update wiki_page"
					+ " set"
					+ " content='" + page.getContent() + "'"
					+ " where name='" + page.getName() + "'";
		DBManager.simpleUpdate(sql);
	}
	
	// 指定したwikipageを元にdeleteを実行します
	public void delete(WikiPageDTO page) throws SQLException {
		String sql = "delete from wiki_page where name='"
					+ page.getName() + "'";
		DBManager.simpleUpdate(sql);
	}
	
	
	
}
