package member.model;

public class MemberInfo {
	
	String id;
	String pw;
	String name;
	String img;
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", img=" + img + "]";
	}

	MemberInfo(){
	}
	
	public MemberInfo(String id, String pw, String name, String img){
		
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.img = img;
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}
