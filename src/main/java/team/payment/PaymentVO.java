package team.payment;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("PaymentVO")
public class PaymentVO {
	
	public Integer or_no=0, 
	delivery_cost=0, payment_cost=0;
	
	public String or_id="", or_name="",or_amount="", or_p_name="", zipcode="", or_address="",
	pay_with="",consent="",or_p_price="", or_p_code="", or_tel="",or_p_option="", delivery_msg="",
	card1="",card2="",card3="",card4="";
	
	Date or_date;

	public Integer getOr_no() {
		return or_no;
	}

	public void setOr_no(Integer or_no) {
		this.or_no = or_no;
	}

	public Integer getDelivery_cost() {
		return delivery_cost;
	}

	public void setDelivery_cost(Integer delivery_cost) {
		this.delivery_cost = delivery_cost;
	}

	public Integer getPayment_cost() {
		return payment_cost;
	}

	public void setPayment_cost(Integer payment_cost) {
		this.payment_cost = payment_cost;
	}

	public String getOr_id() {
		return or_id;
	}

	public void setOr_id(String or_id) {
		this.or_id = or_id;
	}

	public String getOr_name() {
		return or_name;
	}

	public void setOr_name(String or_name) {
		this.or_name = or_name;
	}

	public String getOr_amount() {
		return or_amount;
	}

	public void setOr_amount(String or_amount) {
		this.or_amount = or_amount;
	}

	public String getOr_p_name() {
		return or_p_name;
	}

	public void setOr_p_name(String or_p_name) {
		this.or_p_name = or_p_name;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getOr_address() {
		return or_address;
	}

	public void setOr_address(String or_address) {
		this.or_address = or_address;
	}

	public String getPay_with() {
		return pay_with;
	}

	public void setPay_with(String pay_with) {
		this.pay_with = pay_with;
	}

	public String getConsent() {
		return consent;
	}

	public void setConsent(String consent) {
		this.consent = consent;
	}

	public String getOr_p_price() {
		return or_p_price;
	}

	public void setOr_p_price(String or_p_price) {
		this.or_p_price = or_p_price;
	}

	public String getOr_p_code() {
		return or_p_code;
	}

	public void setOr_p_code(String or_p_code) {
		this.or_p_code = or_p_code;
	}

	public String getOr_tel() {
		return or_tel;
	}

	public void setOr_tel(String or_tel) {
		this.or_tel = or_tel;
	}

	public String getOr_p_option() {
		return or_p_option;
	}

	public void setOr_p_option(String or_p_option) {
		this.or_p_option = or_p_option;
	}

	public String getDelivery_msg() {
		return delivery_msg;
	}

	public void setDelivery_msg(String delivery_msg) {
		this.delivery_msg = delivery_msg;
	}

	public Date getOr_date() {
		return or_date;
	}

	public void setOr_date(Date or_date) {
		this.or_date = or_date;
	}

	public String getCard1() {
		return card1;
	}

	public void setCard1(String card1) {
		this.card1 = card1;
	}

	public String getCard2() {
		return card2;
	}

	public void setCard2(String card2) {
		this.card2 = card2;
	}

	public String getCard3() {
		return card3;
	}

	public void setCard3(String card3) {
		this.card3 = card3;
	}

	public String getCard4() {
		return card4;
	}

	public void setCard4(String card4) {
		this.card4 = card4;
	}

	@Override
	public String toString() {
		return "PaymentVO [or_no=" + or_no + ", delivery_cost=" + delivery_cost + ", payment_cost=" + payment_cost
				+ ", or_id=" + or_id + ", or_name=" + or_name + ", or_amount=" + or_amount + ", or_p_name=" + or_p_name
				+ ", zipcode=" + zipcode + ", or_address=" + or_address + ", pay_with=" + pay_with + ", consent="
				+ consent + ", or_p_price=" + or_p_price + ", or_p_code=" + or_p_code + ", or_tel=" + or_tel
				+ ", or_p_option=" + or_p_option + ", delivery_msg=" + delivery_msg + ", card1=" + card1 + ", card2="
				+ card2 + ", card3=" + card3 + ", card4=" + card4 + ", or_date=" + or_date + "]";
	}


	
	
	
	}
