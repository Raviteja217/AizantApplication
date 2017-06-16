package com.aizant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "tbl_AssignForms")
@Component

public class AssignForms {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String project_Number;
	private String crfNo;
	private String form;

	public String getProject_Number() {
		return project_Number;
	}

	public void setProject_Number(String project_Number) {
		this.project_Number = project_Number;
	}

	public String getCrfNo() {
		return crfNo;
	}

	public void setCrfNo(String crfNo) {
		this.crfNo = crfNo;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

}
