package jpa.po;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "users")
public class User {
	@Id
	// @GeneratedValue(strategy=GenerationType.AUTO)
	// @GeneratedValue(strategy=GenerationType.)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String uname;
	private int age;
	
	//boolean 类型的映射
	@Column(columnDefinition="char(2)")
	//@org.hibernate.annotations.TypeType(type="yes_no")
	private boolean sex;
	
	//组件类
	@Embedded
	@AttributeOverrides({@AttributeOverride(name="firstName",column=@Column(name="first_name"))
	,@AttributeOverride(name="lastName",column=@Column(name="last_name"))})
	private FullName fullName;

	//值类型集合
	@ElementCollection(fetch=FetchType.EAGER)
	@JoinTable(name="tels",joinColumns=@JoinColumn(name="u_id"))
	private Set<String> tels=new HashSet<String>();
	
//	@OneToOne(mappedBy="u")
//	private Addr addr;
//	
//	public Addr getAddr() {
//		return addr;
//	}
//
//	public void setAddr(Addr addr) {
//		this.addr = addr;
//	}

	public Set<String> getTels() {
		return tels;
	}

	public void setTels(Set<String> tels) {
		this.tels = tels;
	}

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
