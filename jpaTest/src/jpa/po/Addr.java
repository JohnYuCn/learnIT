package jpa.po;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="addr")
public class Addr {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String addrName;
	
	@OneToOne(cascade=CascadeType.REFRESH,fetch=FetchType.LAZY,targetEntity=User.class)
	@JoinColumn(name="u_id",nullable=false)
	private User u;
	
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddrName() {
		return addrName;
	}
	public void setAddrName(String addrName) {
		this.addrName = addrName;
	}
	
}
