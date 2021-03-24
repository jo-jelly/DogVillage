package team.login;

public class LoginVO {

		String id , pw, name, grade;

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

		public final String getGrade() {
			return grade;
		}

		public final void setGrade(String grade) {
			this.grade = grade;
		}

		@Override
		public String toString() {
			return "LoginVO [id=" + id + ", pw=" + pw + ", name=" + name + ", grade=" + grade + "]";
		}
		
		
}
