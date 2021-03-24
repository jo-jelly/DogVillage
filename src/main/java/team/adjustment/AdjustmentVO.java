package team.adjustment;

import java.util.Date;

public class AdjustmentVO {
	String adj_name, adj_cate, adj_cate_d, adj_pid;
	Integer adj_code, adj_price, adj_amount, adj_totalprice, total_amount, total_price, month;
	
	Date adj_sdate;

	
	
	
	
	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}

	public Integer getTotal_price() {
		return total_price;
	}

	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}

	public String getAdj_name() {
		return adj_name;
	}

	public void setAdj_name(String adj_name) {
		this.adj_name = adj_name;
	}

	public String getAdj_cate() {
		return adj_cate;
	}

	public void setAdj_cate(String adj_cate) {
		this.adj_cate = adj_cate;
	}

	public String getAdj_cate_d() {
		return adj_cate_d;
	}

	public void setAdj_cate_d(String adj_cate_d) {
		this.adj_cate_d = adj_cate_d;
	}

	public String getAdj_pid() {
		return adj_pid;
	}

	public void setAdj_pid(String adj_pid) {
		this.adj_pid = adj_pid;
	}

	public Integer getAdj_code() {
		return adj_code;
	}

	public void setAdj_code(Integer adj_code) {
		this.adj_code = adj_code;
	}

	public Integer getAdj_price() {
		return adj_price;
	}

	public void setAdj_price(Integer adj_price) {
		this.adj_price = adj_price;
	}

	public Integer getAdj_amount() {
		return adj_amount;
	}

	public void setAdj_amount(Integer adj_amount) {
		this.adj_amount = adj_amount;
	}

	public Integer getAdj_totalprice() {
		return adj_totalprice;
	}

	public void setAdj_totalprice(Integer adj_totalprice) {
		this.adj_totalprice = adj_totalprice;
	}

	public Date getAdj_sdate() {
		return adj_sdate;
	}

	public void setAdj_sdate(Date adj_sdate) {
		this.adj_sdate = adj_sdate;
	}

	@Override
	public String toString() {
		return "AdjustmentVO [adj_name=" + adj_name + ", adj_cate=" + adj_cate + ", adj_cate_d=" + adj_cate_d
				+ ", adj_pid=" + adj_pid + ", adj_code=" + adj_code + ", adj_price=" + adj_price + ", adj_amount="
				+ adj_amount + ", adj_totalprice=" + adj_totalprice + ", adj_sdate=" + adj_sdate + "]";
	}
	
	
}
