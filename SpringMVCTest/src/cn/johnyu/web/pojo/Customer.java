package cn.johnyu.web.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Customer {
	private Integer id;
	private String cname;
	private double salary;
	private boolean sex;
	private String psd;
	private Date birh;
	private List<String> favs=new ArrayList<String>();
	
	
	
 	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Date getBirh() {
		return birh;
	}
	public void setBirh(Date birh) {
		this.birh = birh;
	}
	public List<String> getFavs() {
		return favs;
	}
	public void setFavs(List<String> favs) {
		this.favs = favs;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPsd() {
		return psd;
	}
	public void setPsd(String psd) {
		this.psd = psd;
	}
	
}
