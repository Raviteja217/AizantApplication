package com.aizant.DAO;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.aizant.model.MainReport;
import com.aizant.model.Privileger;

public interface MainReportDAO {
	public List<MainReport> list();
	
	public MainReport get(int id);
	public void saveOrUpdate(MainReport mainReport);
	public MainReport getmainFormDetails(String projectNo, String crfNo);
	public List getAllMainReports();
	
	public List<MainReport> getReportByPage(int pageid, int total);
	
	public void deleteMainReport(int id);
	public int getPageCount();
	public ModelAndView getDetails(String projectNo, String crfNo, String userName);

}
