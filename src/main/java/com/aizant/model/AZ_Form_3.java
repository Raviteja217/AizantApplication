package com.aizant.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "tbl_AZ_Form_3")
@Component
public class AZ_Form_3 {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String projectNo ;
	private String crfNo;
	private String periodNo;
	private String registrationNo;
	private String subjectNo;
	private String a;
	private String b;
	private String c_1;
	private String c_2;
	private String c_3;
	private String c_4;
	private String c_5;
	private String c_6;
	private String c_7;
	private String restriction_compliance;
	private String comments;
	private String recorded_By;
	private String reviewed_By;
	private Timestamp dt;
	

	

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC_1() {
		return c_1;
	}
	public void setC_1(String c_1) {
		this.c_1 = c_1;
	}
	public String getC_2() {
		return c_2;
	}
	public void setC_2(String c_2) {
		this.c_2 = c_2;
	}
	public String getC_3() {
		return c_3;
	}
	public void setC_3(String c_3) {
		this.c_3 = c_3;
	}
	public String getC_4() {
		return c_4;
	}
	public void setC_4(String c_4) {
		this.c_4 = c_4;
	}
	public String getC_5() {
		return c_5;
	}
	public void setC_5(String c_5) {
		this.c_5 = c_5;
	}
	public String getC_6() {
		return c_6;
	}
	public void setC_6(String c_6) {
		this.c_6 = c_6;
	}
	public String getC_7() {
		return c_7;
	}
	public void setC_7(String c_7) {
		this.c_7 = c_7;
	}

	public String getRestriction_compliance() {
		return restriction_compliance;
	}
	public void setRestriction_compliance(String restriction_compliance) {
		this.restriction_compliance = restriction_compliance;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public String getRecorded_By() {
		return recorded_By;
	}
	public void setRecorded_By(String recorded_By) {
		this.recorded_By = recorded_By;
	}
	public String getReviewed_By() {
		return reviewed_By;
	}
	public void setReviewed_By(String reviewed_By) {
		this.reviewed_By = reviewed_By;
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

	public String getPeriodNo() {
		return periodNo;
	}
	public void setPeriodNo(String periodNo) {
		this.periodNo = periodNo;
	}
	public String getRegistrationNo() {
		return registrationNo;
	}
	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}
	public String getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(String subjectNo) {
		this.subjectNo = subjectNo;
	}

	public Timestamp getDt() {
		return dt;
	}

	public void setDt(Timestamp dt) {
		this.dt = dt;
	}



	
	
}
