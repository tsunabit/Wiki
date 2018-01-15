package wiki;

import java.sql.Timestamp;

public class WikiPageDTO {
	
	// ページの名前
	private String name;
	// ページの内容
	private String content;
	// 更新日時
	private Timestamp updateTime;
	
	// 整形を行った内容を返す
	public String getFormatedContent() {
		WikiFromater formater = new WikiFromater();
		return formater.formatText(this.content);
	}
	
	// ゲッタ、セッタ
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContent() {
		return this.content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public Timestamp getTimestamp() {
		return this.updateTime;
	}
	public void setTimestamp(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
}
