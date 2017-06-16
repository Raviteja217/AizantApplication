package com.aizant.DAO;

import java.util.List;

import com.aizant.model.CrfNumber;

public interface CrfNumberDAO {
	public List<CrfNumber> list();

	public CrfNumber get(int id);

	public void save(CrfNumber crfNumber);

	public void Update(CrfNumber crfNumber);

	public void delete(int id);

	public List getAllExperiments();

	public int deleteexperiment(int id);

	public List<CrfNumber> getExperimentByPage(int pageid, int total);

	public long getPageCount();

	public CrfNumber getCrfNumber(String project_Number);

	public List<CrfNumber> listProjects();

	public List<CrfNumber> listCrf();
}
