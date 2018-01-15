package wiki;

import java.sql.ResultSet;
import java.sql.SQLException;
import fw.ResultSetBeanMapping;

public class WikiPageMapping implements ResultSetBeanMapping<WikiPageDTO> {
	
	// ResultSetの1行をWikiPageDTOのインスタンスに変換するクラス
	public WikiPageDTO createFromResultSet(ResultSet rs) throws SQLException {
		
		WikiPageDTO page = new WikiPageDTO();
		page.setName(rs.getString("name"));
		page.setContent(rs.getString("content"));
		page.setTimestamp(rs.getTimestamp("update_time"));
		return page;
		
	}
}
