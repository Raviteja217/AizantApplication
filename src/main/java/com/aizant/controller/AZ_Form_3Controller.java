package com.aizant.controller;

import java.sql.Timestamp;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.xml.ws.Response;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.omg.CORBA.Current;
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

import com.aizant.DAO.AZ_Form_3DAO;
import com.aizant.DAO.MainReportDAO;
import com.aizant.DAO.PrivilegerDAO;
import com.aizant.model.AZ_Form_3;
import com.aizant.model.MainReport;
import com.aizant.model.Privileger;
import com.google.gson.Gson;

@Controller
public class AZ_Form_3Controller extends AZ_Form_3{
	/*
	 * ------------------------------------- DAO declaration
	 * --------------------------------------
	 */

	@Autowired
	private AZ_Form_3DAO form3Dao;
	@Autowired
	private MainReportDAO mainReportDAO ;
	@Autowired
	private PrivilegerDAO privilegerDAO ;
	@Autowired
	private Privileger privileger;

	SessionFactory sessionFactory;


	@RequestMapping("/show_azform3")
	public ModelAndView retriveRecords() {
		ModelAndView m1 = new ModelAndView("show_azform3");

		return m1;
	}

	@RequestMapping(value = "AZ_Form_3", method = RequestMethod.GET)
	public ModelAndView forms(HttpServletRequest request,@RequestParam String projectNo, String crfNo,@ModelAttribute("MainReport") MainReport mainReport) {
		String uri = request.getRequestURI();
		String pageName = uri.substring(uri.lastIndexOf("/")+1);
		String pr=(String) pageName;
		MainReport mr = mainReportDAO.getmainFormDetails(projectNo, crfNo);
		
		return new ModelAndView("AZ_Form_3", "mainReport", mr);
	}

/*	@RequestMapping(value = "edit_AZ_Form_3", method = RequestMethod.GET)
	public ModelAndView editform3(@RequestParam String projectNo,String crfNo,@ModelAttribute AZ_Form_3 form3) {
		AZ_Form_3 u1 = form3Dao.getEditForm(projectNo, crfNo);
		return new ModelAndView("edit_AZ_Form_3", "form3", u1);
	}*/
	
	@RequestMapping(value = "AZ_Form_3_edit_angular", method = RequestMethod.GET)
	@Transactional
	public ModelAndView editformangular(@RequestParam int id, @ModelAttribute("AZ_Form_3") AZ_Form_3 form3) {
		AZ_Form_3 u1 = form3Dao.getEdit(id);
		System.out.println("details" + u1.getComments());
		return new ModelAndView("AZ_Form_3_edit_angular", "form3", u1);
	}
	
/*	@Transactional
	@RequestMapping(value = "edit_AZ_Form_3", method = RequestMethod.GET)
	
	public ModelAndView editform3(@RequestParam String projectNo,String crfNo,@ModelAttribute AZ_Form_3 form3) {
		ModelAndView u1 = form3Dao.getEditForm(projectNo, crfNo);
	
		return u1;
	}*/

	
	@RequestMapping(value = "/update_AZ_Form_3", method = RequestMethod.POST)
	public ModelAndView updateform3(HttpServletRequest request, @RequestParam String projectNo,String crfNo,
			@Valid@ModelAttribute("AZ_Form_3") AZ_Form_3 form3, BindingResult result) {
	
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	    System.out.println(timestamp);
	  form3.setDt(timestamp);
				form3Dao.save(form3);
		return new ModelAndView("redirect:/Subject_Form");
	}




	@RequestMapping(value = "/store_AZ_Form_3", method = RequestMethod.POST)
	@Transactional
	public ModelAndView addAZ_Form_3(HttpServletRequest request,@RequestBody AZ_Form_3 form3, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/AZ_Form_3");
		}
	
		
		/*Privileger pr=privilegerDAO.getChange(privileger.setProjectNo(form3.getProjectNo()),privileger.setCrfNo(form3.getCrfNo()),privileger.setForms(privileger.getForms()),privileger.setAddflag(true));
	System.out.println(privilegerDAO.getChange(privileger.getProjectNo(),privileger.getCrfNo(),privileger.getForms(),privileger.getAddflag()));
		privilegerDAO.save(pr);*/
	
		String projectNo=form3.getProjectNo();
		String crfNo=form3.getCrfNo();
		String forms=form3.getClass().getSimpleName();
		boolean addflag=true;
		System.out.println("Obj"+projectNo);
		System.out.println("Obj"+crfNo);
		System.out.println("Obj"+forms);
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		    form3.setDt(timestamp);
		    System.out.println(timestamp);
			form3Dao.save(form3);	
			System.out.println("stored");
//		privilegerDAO.updateAddFlag(projectNo, crfNo, forms, addflag);
			privilegerDAO.getChange(projectNo, crfNo, forms, addflag);

		return new ModelAndView("redirect:/Subject_Form");
	}

	@RequestMapping(value = "/list6", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<AZ_Form_3> list = form3Dao.list();
		Gson x = new Gson();
		String json = x.toJson(list);
		return json;
	}

	

	@ModelAttribute("AZ_Form_3")
	public AZ_Form_3 create() {
		return new AZ_Form_3();
	}

	
	@RequestMapping(value = "view_AZ_Form_3", method = RequestMethod.GET)
	public ModelAndView viewform3(@RequestParam String projectNo,String crfNo, @ModelAttribute AZ_Form_3 form3) {
	
		AZ_Form_3 use = form3Dao.getEditForm(projectNo, crfNo);
		return new ModelAndView("view_AZ_Form_3", "form3", use);

	}


	/*@RequestMapping(value = "/deleteform3", method = RequestMethod.POST)
	public @ResponseBody String deleteform3(@RequestParam int form3Id) {
		System.out.println("hello " + form3Id);

		form3Dao.delete(form3Id);
		System.out.println("deleted form3 Id :" + form3Id);
		Gson u = new Gson();
		String json = u.toJson(form3Id);
		return json;
	}*/
	@RequestMapping("/deleteform3")
	public ModelAndView deleteform3(@RequestParam int id) {
		System.out.println("hello");
		form3Dao.delete(id);
	System.out.println("deleted id"+id);
	return new ModelAndView("redirect:/show_AZ_Form_3");
	}
	

	@RequestMapping(value = "pin_AZ_Form_3", method = RequestMethod.GET)
	public ModelAndView pinform3(@RequestParam String pin, @ModelAttribute AZ_Form_3 form3) {
		System.out.println(pin);
	
		AZ_Form_3 use = form3Dao.getPin(pin);
		return new ModelAndView("pin_AZ_Form_3", "form3", use);
		// return new ModelAndView("viewproduct");
	}
	
	}

