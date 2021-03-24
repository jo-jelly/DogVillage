package team.Ad_Review;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Alias("Ad_reviewVO")
public class Ad_ReviewVO {
	

	
	Integer r_code,p_code;
	String id,r_content,r_image,r_title,p_name;
	
	Date r_regdate;

	MultipartFile p_imgfileFF;

	
	

	
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public MultipartFile getP_imgfileFF() {
		return p_imgfileFF;
	}
	public void setP_imgfileFF(MultipartFile p_imgfileFF) {
		this.p_imgfileFF = p_imgfileFF;
		r_image= p_imgfileFF.getOriginalFilename();
	}
	public Integer getR_code() {
		return r_code;
	}
	public void setR_code(Integer r_code) {
		this.r_code = r_code;
	}
	public Integer getP_code() {
		return p_code;
	}
	public void setP_code(Integer p_code) {
		this.p_code = p_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_image() {
		return r_image;
	}
	public void setR_image(String r_image) {
		this.r_image = r_image;
	}
	public Date getR_regdate() {
		return r_regdate;
	}
	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}

	
	
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	@Override
	public String toString() {
		return "Ad_ReviewVO [r_code=" + r_code + ", p_code=" + p_code + ", id=" + id + ", r_content=" + r_content
				+ ", r_image=" + r_image + ", r_title=" + r_title + ", p_name=" + p_name + ", r_regdate=" + r_regdate
				+ ", p_imgfileFF=" + p_imgfileFF + "]";
	}


	

	

	
	
	
	
}
