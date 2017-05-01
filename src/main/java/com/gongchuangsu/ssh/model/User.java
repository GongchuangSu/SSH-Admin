package com.gongchuangsu.ssh.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name="user_info")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private long id;              // �û�ID
	
	@NotNull
	@Pattern(regexp="^[a-zA-Z][a-zA-Z0-9_]{2,19}$"
			, message="����ĸ��ͷ��������3~20֮�䣬ֻ�ܰ�����ĸ�����ֺ��»���")
	@Column(name="username")
	private String username;      // �û���
	
	@NotNull
	@Pattern(regexp="^[a-zA-Z]\\w{5,17}$"
			, message="����ĸ��ͷ��������6~18֮�䣬ֻ�ܰ�����ĸ�����ֺ��»���")
	@Column(name="password")
	private String password;      // �û�����
	
	@NotNull
	@Column(name="emailaddress")
	private String emailaddress;  // �ʼ���ַ
	
	@NotNull
	@Pattern(regexp="^((13[0-9])|(14[5,7])|(15[^4,\\D])|(17[6-8])|(18[0-9]))\\d{8}$"
			, message="��ʽ����")
	@Column(name="phonenumber")
	private String phonenumber;   // �ֻ���
	
	@NotNull
	@Column(name="sex")
	private String sex;           // �Ա�
	
	@Column(name="enabled")
	private byte enabled = 1;
	
	public long getId(){
		return id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailaddress() {
		return emailaddress;
	}

	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public byte getEnabled() {
		return enabled;
	}

//	public void setEnabled(byte enabled) {
//		this.enabled = enabled;
//	}
}
