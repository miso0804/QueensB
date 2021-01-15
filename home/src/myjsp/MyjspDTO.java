package myjsp;

public class MyjspDTO {
	private String userid;
	private String userpw;
	private String name;
	private String email;
	private String hp;
	//getter,setter,toString,생성자
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	@Override
	public String toString() {
		return "MyjspDTO [userid=" + userid + ", userpw=" + userpw + ", name=" + name + ", email=" + email + ", hp="
				+ hp + "]";
	}
	public MyjspDTO() {
		
	}
	public MyjspDTO(String userid, String userpw, String name, String email, String hp) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.name = name;
		this.email = email;
		this.hp = hp;
	}
	

}
