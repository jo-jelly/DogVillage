package team.storage;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("StorageIOVO")
public class StorageIOVO {
	String io_name, io_content;
	Integer io_code, io_before_amount, io_amount;
	
	Date io_regdate;
	

	public String getIo_name() {
		return io_name;
	}

	public void setIo_name(String io_name) {
		this.io_name = io_name;
	}

	public String getIo_content() {
		return io_content;
	}

	public void setIo_content(String io_content) {
		this.io_content = io_content;
	}

	public Integer getIo_code() {
		return io_code;
	}

	public void setIo_code(Integer io_code) {
		this.io_code = io_code;
	}

	public Integer getIo_before_amount() {
		return io_before_amount;
	}

	public void setIo_before_amount(Integer io_before_amount) {
		this.io_before_amount = io_before_amount;
	}

	public Integer getIo_amount() {
		return io_amount;
	}

	public void setIo_amount(Integer io_amount) {
		this.io_amount = io_amount;
	}

	public Date getIo_regdate() {
		return io_regdate;
	}

	public void setIo_regdate(Date io_regdate) {
		this.io_regdate = io_regdate;
	}

	
	
	@Override
	public String toString() {
		return "StorageIOVO [io_name=" + io_name + ", io_content=" + io_content + ", io_code=" + io_code
				+ ", io_before_amount=" + io_before_amount + ", io_amount=" + io_amount + ", io_regdate=" + io_regdate
				+ "]";
	}

	
	
}
