package team.tms;

import java.util.Date;

public class TmsVO {
	public String t_pid,t_recipient,t_r_phone,
	 t_r_adress,t_r_zipcode,t_pname,
	 t_payment,t_status,t_invoicen,t_msg;
	public Integer t_no,t_amount,t_totalprice,t_fee;
	
	public Date t_bdate, t_date;

	public String getT_pid() {
		return t_pid;
	}

	public void setT_pid(String t_pid) {
		this.t_pid = t_pid;
	}

	public String getT_recipient() {
		return t_recipient;
	}

	public void setT_recipient(String t_recipient) {
		this.t_recipient = t_recipient;
	}

	public String getT_r_phone() {
		return t_r_phone;
	}

	public void setT_r_phone(String t_r_phone) {
		this.t_r_phone = t_r_phone;
	}

	public String getT_r_adress() {
		return t_r_adress;
	}

	public void setT_r_adress(String t_r_adress) {
		this.t_r_adress = t_r_adress;
	}

	public String getT_r_zipcode() {
		return t_r_zipcode;
	}

	public void setT_r_zipcode(String t_r_zipcode) {
		this.t_r_zipcode = t_r_zipcode;
	}

	public String getT_pname() {
		return t_pname;
	}

	public void setT_pname(String t_pname) {
		this.t_pname = t_pname;
	}

	public String getT_payment() {
		return t_payment;
	}

	public void setT_payment(String t_payment) {
		this.t_payment = t_payment;
	}

	public String getT_status() {
		return t_status;
	}

	public void setT_status(String t_status) {
		this.t_status = t_status;
	}

	public String getT_invoicen() {
		return t_invoicen;
	}

	public void setT_invoicen(String t_invoicen) {
		this.t_invoicen = t_invoicen;
	}

	public String getT_msg() {
		return t_msg;
	}

	public void setT_msg(String t_msg) {
		this.t_msg = t_msg;
	}

	public Integer getT_no() {
		return t_no;
	}

	public void setT_no(Integer t_no) {
		this.t_no = t_no;
	}

	public Integer getT_amount() {
		return t_amount;
	}

	public void setT_amount(Integer t_amount) {
		this.t_amount = t_amount;
	}

	public Integer getT_totalprice() {
		return t_totalprice;
	}

	public void setT_totalprice(Integer t_totalprice) {
		this.t_totalprice = t_totalprice;
	}

	public Integer getT_fee() {
		return t_fee;
	}

	public void setT_fee(Integer t_fee) {
		this.t_fee = t_fee;
	}

	public Date getT_bdate() {
		return t_bdate;
	}

	public void setT_bdate(Date t_bdate) {
		this.t_bdate = t_bdate;
	}

	public Date getT_date() {
		return t_date;
	}

	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}

	@Override
	public String toString() {
		return "TmsVO [t_pid=" + t_pid + ", t_recipient=" + t_recipient + ", t_r_phone=" + t_r_phone + ", t_r_adress="
				+ t_r_adress + ", t_r_zipcode=" + t_r_zipcode + ", t_pname=" + t_pname + ", t_payment=" + t_payment
				+ ", t_status=" + t_status + ", t_invoicen=" + t_invoicen + ", t_msg=" + t_msg + ", t_no=" + t_no
				+ ", t_amount=" + t_amount + ", t_totalprice=" + t_totalprice + ", t_fee=" + t_fee + ", t_bdate="
				+ t_bdate + ", t_date=" + t_date + "]";
	}

	

	
	
	
	
}
