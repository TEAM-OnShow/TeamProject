package member.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;


public class Member {
	private int num;

	@NotBlank(message = "아이디를 입력해주세요.")
	private String id;
	
	@NotBlank(message = "비밀번호를 입력해주세요.")
	private String password;
	
	@NotBlank(message = "비밀번호를 확인해주세요.")
	private String repassword;
	
	@NotBlank(message = "이름을 입력해주세요.")
	private String name;
	
	
	private String year;
	private String month;
	private String day;
	
	@NotBlank(message = "이메일을 입력해주세요.")
	private String email;
	
	private int hp1;
	private int hp2;
	private int hp3;
	
	private String add1;
	private String add2;
	
	
	private String style;
	private String cat;
	
	private int age;
	private String gender;
	
	public Member(int num, String id, String password, String repassword, String name, String year, String month,
			String day, String email, int hp1, int hp2, int hp3, String add1, String add2, String style, String cat,
			int age, String gender) {
		super();
		this.num = num;
		this.id = id;
		this.password = password;
		this.repassword = repassword;
		this.name = name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.email = email;
		this.hp1 = hp1;
		this.hp2 = hp2;
		this.hp3 = hp3;
		this.add1 = add1;
		this.add2 = add2;
		this.style = style;
		this.cat = cat;
		this.age = age;
		this.gender = gender;
	}
	public Member() {
		super();
	}
	

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getHp1() {
		return hp1;
	}
	public void setHp1(int hp1) {
		this.hp1 = hp1;
	}
	public int getHp2() {
		return hp2;
	}
	public void setHp2(int hp2) {
		this.hp2 = hp2;
	}
	public int getHp3() {
		return hp3;
	}
	public void setHp3(int hp3) {
		this.hp3 = hp3;
	}
	public String getAdd1() {
		return add1;
	}
	public void setAdd1(String add1) {
		this.add1 = add1;
	}
	public String getAdd2() {
		return add2;
	}
	public void setAdd2(String add2) {
		this.add2 = add2;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
