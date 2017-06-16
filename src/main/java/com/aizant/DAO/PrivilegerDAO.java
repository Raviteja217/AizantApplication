package com.aizant.DAO;

import java.util.List;

import com.aizant.model.CrfNumber;
import com.aizant.model.Privileger;

public interface PrivilegerDAO {
	public List<Privileger> list();
	public Privileger get(int id);

	public void save(Privileger privileger);

	public void Update(Privileger privileger);

	public List getAllPrivileger();

	public List<Privileger> getPrivilegerByPage(int pageid, int total);

	public void deletePrivileger(int id);

	public int getPageCount();
    public List<Privileger> getForms(String projectNo, String crfNo,String userName);
    public Privileger getChange(String projectNo, String crfNo, String forms,boolean addflag);
    public List<Privileger> listProjects(String userName);

	public List<Privileger> listCrf(String userName);

}
