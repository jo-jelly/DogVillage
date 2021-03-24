package team.notice;

import java.util.Date;

public class NoticeVO {
	String n_name,n_title,n_content;
	Integer n_code,n_cnt;
	Date n_regdate;
	
	public String getN_name() {
		return n_name;
	}
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		if(n_content==null)
			n_content = "";
		return n_content;
	}
	public void setN_content(String n_content) {
		if(n_content==null)
			n_content = "";
		this.n_content = n_content;
	}

	public String getN_contentBr() {
		return getN_content().replaceAll("\n", "<br>");
	}
	
	public Integer getN_code() {
		return n_code;
	}
	public void setN_code(Integer n_code) {
		this.n_code = n_code;
	}
	public Integer getN_cnt() {
		return n_cnt;
	}
	public void setN_cnt(Integer n_cnt) {
		this.n_cnt = n_cnt;
	}
	public Date getN_regdate() {
		return n_regdate;
	}
	public void setN_regdate(Date n_regdate) {
		this.n_regdate = n_regdate;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [n_name=" + n_name + ", n_title=" + n_title + ", n_content=" + n_content + ", n_code=" + n_code
				+ ", n_cnt=" + n_cnt + ", n_regdate=" + n_regdate + "]";
	}
	
	
}
