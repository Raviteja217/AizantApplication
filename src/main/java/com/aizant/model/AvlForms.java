package com.aizant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity

@Table(name = "tbl_avl_forms")
@Component
public class AvlForms {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="id")
		private int id;
		private String forms;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getForms() {
			return forms;
		}
		public void setForms(String forms) {
			this.forms = forms;
		}
		
}
