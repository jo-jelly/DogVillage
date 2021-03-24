package team.Cart;
public class CartVO {

	//테이블3개  회원은 아직안했음
	int c_code,p_code,p_amount,p_price,money,orders;
	//	장바구니번호,상품번호,재고,한개가격,   총합계    ,  주문량
	String id,p_name,name,p_image;
	//	회원아이디,상품이름,회원이름,이미지
	
	
	
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public int getP_amount() {
		return p_amount;
	}
	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getOrders() {
		return orders;
	}
	public void setOrders(int orders) {
		this.orders = orders;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "CartVO [c_code=" + c_code + ", p_code=" + p_code + ", p_amount=" + p_amount + ", p_price=" + p_price
				+ ", money=" + money + ", orders=" + orders + ", id=" + id + ", p_name=" + p_name + ", name=" + name
				+ ", p_image=" + p_image + "]";
	}

	
	
	
	


	
	
	
}
