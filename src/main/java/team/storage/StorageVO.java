package team.storage;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("StorageVO")
public class StorageVO {

	String p_name, p_image, p_image_d, p_image_m, p_cate, p_cate_d, p_content;
	Integer p_code, p_price, p_amount, fileNum, io_before_amount;
	
	Date p_regdate, p_mdate;
	MultipartFile p_imageFF,p_imageFF_d,p_imageFF_m;
	
	
	
	public Integer getIo_before_amount() {
		return io_before_amount;
	}
	public void setIo_before_amount(Integer io_before_amount) {
		this.io_before_amount = io_before_amount;
	}
	public Integer getFileNum() {
		return fileNum;
	}
	public void setFileNum(Integer fileNum) {
		this.fileNum = fileNum;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_image_d() {
		return p_image_d;
	}
	public void setP_image_d(String p_image_d) {
		this.p_image_d = p_image_d;
	}
	public String getP_image_m() {
		return p_image_m;
	}
	public void setP_image_m(String p_image_m) {
		this.p_image_m = p_image_m;
	}
	public String getP_cate() {
		return p_cate;
	}
	public void setP_cate(String p_cate) {
		this.p_cate = p_cate;
	}
	public String getP_cate_d() {
		return p_cate_d;
	}
	public void setP_cate_d(String p_cate_d) {
		this.p_cate_d = p_cate_d;
	}
	public String getP_content() {
		if(p_content==null)
			p_content = "";
		return p_content;
	}
	public String getP_contentBr() {
		return getP_content().replaceAll("\n", "<br>");
	}
	
	public void setP_content(String p_content) {
		if(p_content==null)
			p_content = "";
		this.p_content = p_content;
	}
	public Integer getP_code() {
		return p_code;
	}
	public void setP_code(Integer p_code) {
		this.p_code = p_code;
	}
	public Integer getP_price() {
		return p_price;
	}
	public void setP_price(Integer p_price) {
		this.p_price = p_price;
	}
	public Integer getP_amount() {
		return p_amount;
	}
	public void setP_amount(Integer p_amount) {
		this.p_amount = p_amount;
	}
	public Date getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
	}
	public Date getP_mdate() {
		return p_mdate;
	}
	public void setP_mdate(Date p_mdate) {
		this.p_mdate = p_mdate;
	}
	public MultipartFile getP_imageFF() {
		return p_imageFF;
	}
	public void setP_imageFF(MultipartFile p_imageFF) {
		this.p_imageFF = p_imageFF;
		p_image = p_imageFF.getOriginalFilename();
	}
	public MultipartFile getP_imageFF_d() {
		return p_imageFF_d;
	}
	public void setP_imageFF_d(MultipartFile p_imageFF_d) {
		this.p_imageFF_d = p_imageFF_d;
		p_image_d = p_imageFF_d.getOriginalFilename();
	}
	public MultipartFile getP_imageFF_m() {
		return p_imageFF_m;
	}
	public void setP_imageFF_m(MultipartFile p_imageFF_m) {
		this.p_imageFF_m = p_imageFF_m;
		p_image_m = p_imageFF_m.getOriginalFilename();
	}



	@Override
	public String toString() {
		return "StorageVO [p_name=" + p_name + ", p_image=" + p_image + ", p_image_d=" + p_image_d + ", p_image_m="
				+ p_image_m + ", p_cate=" + p_cate + ", p_cate_d=" + p_cate_d + ", p_content=" + p_content + ", p_code="
				+ p_code + ", p_price=" + p_price + ", p_amount=" + p_amount + ", p_regdate=" + p_regdate + ", p_mdate="
				+ p_mdate + ", p_imageFF=" + p_imageFF + ", p_imageFF_d=" + p_imageFF_d + ", p_imageFF_m=" + p_imageFF_m
				+ "]";
	}

	
	
	
		
	
	
	
	
}
