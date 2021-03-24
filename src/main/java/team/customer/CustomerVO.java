package team.customer;

import org.apache.ibatis.type.Alias;



@Alias("customerVO")
public class CustomerVO {
	
	/*
	 * CREATE TABLE "TEAM"."CUSTOMER" ( 
	 * "ID" VARCHAR2(20), "PW" VARCHAR2(20) NOT
	 * NULL ENABLE, "NAME" VARCHAR2(20) NOT NULL ENABLE, "MAIL" VARCHAR2(30) NOT
	 * NULL ENABLE, "TEL" VARCHAR2(20), "ZIPCODE" VARCHAR2(30) NOT NULL ENABLE,
	 * "ADDRESS" VARCHAR2(100), "DOG_SIZE" VARCHAR2(30), "DOG_AGE" VARCHAR2(30),
	 * "NO" NUMBER(38,0),
	 *	PRIMARY KEY ("ID")
	 */
	
	public Integer no;
	public String id,pw,name,mail,tel,zipcode,address,dog_size,dog_age, grade;
	public final Integer getNo() {
		return no;
	}
	public final void setNo(Integer no) {
		this.no = no;
	}
	public final String getId() {
		return id;
	}
	public final void setId(String id) {
		this.id = id;
	}
	public final String getPw() {
		return pw;
	}
	public final void setPw(String pw) {
		this.pw = pw;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final String getMail() {
		return mail;
	}
	public final void setMail(String mail) {
		this.mail = mail;
	}
	public final String getTel() {
		return tel;
	}
	public final void setTel(String tel) {
		this.tel = tel;
	}
	public final String getZipcode() {
		return zipcode;
	}
	public final void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public final String getAddress() {
		return address;
	}
	public final void setAddress(String address) {
		this.address = address;
	}
	public final String getDog_size() {
		return dog_size;
	}
	public final void setDog_size(String dog_size) {
		this.dog_size = dog_size;
	}
	public final String getDog_age() {
		return dog_age;
	}
	public final void setDog_age(String dog_age) {
		this.dog_age = dog_age;
	}
	public final String getGrade() {
		return grade;
	}
	public final void setGrade(String grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "CustomerVO [no=" + no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", mail=" + mail + ", tel="
				+ tel + ", zipcode=" + zipcode + ", address=" + address + ", dog_size=" + dog_size + ", dog_age="
				+ dog_age + ", grade=" + grade + "]";
	}

	
}
