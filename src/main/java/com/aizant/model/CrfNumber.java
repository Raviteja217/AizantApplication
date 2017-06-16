package com.aizant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "tbl_CRFs")
@Component
public class CrfNumber {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String project_Number;
	private String crf_Number;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProject_Number() {
		return project_Number;
	}
	public void setProject_Number(String project_Number) {
		this.project_Number = project_Number;
	}
	public String getCrf_Number() {
		return crf_Number;
	}
	public void setCrf_Number(String crf_Number) {
		this.crf_Number = crf_Number;
	}
	
	}
	
	
	

