
package team.join;

public class JoinVO {
	Integer no;
	public String id;
	String pw;
	public String name;
	String mail;
	String tel;
	String zipcode;
	String address;
	String dog_size;
	String dog_age;
	String grade;
	
	public JoinVO() {}
	
	public JoinVO(Integer no, String id, String pw, String name, String mail, String tel, String zipcode,
			String address, String dog_size, String dog_age, String grade) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mail = mail;
		this.tel = tel;
		this.zipcode = zipcode;
		this.address = address;
		this.dog_size = dog_size;
		this.dog_age = dog_age;
		this.grade = grade;
	}
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
		return "JoinVO [no=" + no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", mail=" + mail + ", tel=" + tel
				+ ", zipcode=" + zipcode + ", address=" + address + ", dog_size=" + dog_size + ", dog_age=" + dog_age
				+ ", grade=" + grade + "]";
	}


}
