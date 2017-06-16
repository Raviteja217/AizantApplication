package com.aizant.DAO;

import java.util.List;

import com.aizant.model.CreateProject;

public interface CreateProjectDAO {
public List<CreateProject> list();
	
	public CreateProject get(int id);
	public void saveOrUpdate(CreateProject CreateProject);

	public List getAllprojects();
	
	public List<CreateProject> getProjectByPage(int pageid, int total);
	
	public void deleteProject(int id);
	public int getPageCount();
}
