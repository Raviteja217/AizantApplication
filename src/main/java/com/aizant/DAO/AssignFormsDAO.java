package com.aizant.DAO;

import java.util.List;

import com.aizant.model.AssignForms;


public interface AssignFormsDAO {
	public List<AssignForms> list();
	public List<AssignForms> listProjects();
	public List<AssignForms> listCrf();
	public AssignForms get(int id);
	public void saveOrUpdate(AssignForms assignForms);

	public List getAllAssignForms();
	public List<AssignForms> getAssignFormsByPage(int pageid, int total);
	public void delete(int id);
	public int getPageCount();


}
