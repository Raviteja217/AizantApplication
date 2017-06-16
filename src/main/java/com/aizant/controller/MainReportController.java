package com.aizant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.MainReportDAO;
import com.aizant.model.MainReport;

import com.google.gson.Gson;

@Controller
public class MainReportController {
	
	@Autowired
	private MainReportDAO mainReportDAO ;
	
	
/*create mainReport*/
	@RequestMapping("/create_mainReport")
	public ModelAndView display1() {
		ModelAndView m1 = new ModelAndView("create_mainReport");
		return m1;
	}
	@RequestMapping("/nodata")
	public ModelAndView displaydata() {
		ModelAndView m1 = new ModelAndView("nodata");
		return m1;
	}
	@ModelAttribute("MainReport")
	public MainReport MainReport() {
		return new MainReport();
	}
	
	/*storemainReport*/
	@RequestMapping(value = "/store_mainReport", method = RequestMethod.POST)
	@Transactional
	public ModelAndView storemainReport(@RequestBody MainReport mainReport, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/create_mainReport");
		}
		mainReportDAO.saveOrUpdate(mainReport);
		return new ModelAndView("redirect:/show_mainReports");
	}
	
	/*update*/
	
	@RequestMapping(value = "/update_mainReport", method = RequestMethod.POST)
	public ModelAndView updatemainReport(HttpServletRequest request,@RequestParam int id,@ModelAttribute("MainReport") MainReport mainReport) {
		
		mainReport.setId(id);
		mainReportDAO.saveOrUpdate(mainReport);
		return new ModelAndView("redirect:/show_mainReports");
	}
	@RequestMapping(value = "edit_mainReport", method = RequestMethod.GET)
	public ModelAndView editmainReport(@RequestParam int id, @ModelAttribute("MainReport") MainReport mainReport) {
		MainReport cp = mainReportDAO.get(id);
		return new ModelAndView("edit_mainReport", "MainReport", cp);
	}
	
	/*delete mainReport*/
	/*@RequestMapping(value = "/delete_mainReport", method = RequestMethod.POST)
	public @ResponseBody String deleteuser(@RequestParam int id) {

		mainReportDAO.deleteProject(id);
		Gson u = new Gson();
		String json = u.toJson(id);
		return json;
	}*/
	@RequestMapping(value = "/list2", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<MainReport> list=mainReportDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	/*admin panel*/
	
	/*display mainReports*/
	
	@RequestMapping("/show_mainReports")
	public ModelAndView retriveRecords() throws Exception {
		ModelAndView m1 = new ModelAndView("show_mainReports");
		
		return m1;
	}
	
	/*@RequestMapping("/deleteReport")
	public ModelAndView deletemainReport(@RequestParam int id) {
		System.out.println("hello");
		mainReportDAO.deleteMainReport(id);
		return new ModelAndView("redirect:/show_mainReports");
	}*/
	@RequestMapping(value = "/delete_mainReport", method = RequestMethod.POST)
	public @ResponseBody String delete(@RequestParam int mainFormId) {
		System.out.println("hello " + mainFormId);
		mainReportDAO.deleteMainReport(mainFormId);
		System.out.println("deleted  Id :" + mainFormId);
		Gson u = new Gson();
		String json = u.toJson(mainFormId);
		return json;
	}
	@RequestMapping(value = "data", method = RequestMethod.GET)
	@Transactional
	public ModelAndView view(@RequestParam String projectNo, String crfNo,String userName) {
		ModelAndView mr = mainReportDAO.getDetails(projectNo, crfNo, userName);
		return mr;
		}
	}
	

