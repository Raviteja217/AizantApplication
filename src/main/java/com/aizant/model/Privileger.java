package com.aizant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity

@Table(name = "tbl_Privileges")
@Component
public class Privileger {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String userName;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	private String projectNo;
	private String crfNo;
	private String forms;
	private boolean addflag=false;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}
	public String getCrfNo() {
		return crfNo;
	}
	public void setCrfNo(String crfNo) {
		this.crfNo = crfNo;
	}
	public String getForms() {
		return forms;
	}
	public void setForms(String forms) {
		this.forms = forms;
	}
	public boolean getAddflag() {
		return addflag;
	}
	public void setAddflag(boolean addflag) {
		this.addflag = addflag;
	}
	
}
