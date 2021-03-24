package team.join;

public class AdminJoinVO {
	public String id;
	String pw;
	String name ;

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

	@Override
	public String toString() {
		return "AdminJoinVO [id=" + id + ", pw=" + pw + ", name=" + name + "]";
	}
	
	
}
