package com.aizant.controller;

import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.PrivilegerDAO;
import com.aizant.model.AZ_Form_3;
import com.aizant.model.CrfNumber;
import com.aizant.model.Privileger;

import com.google.gson.Gson;

@Controller
public class PrivilegerController {
	
	@Autowired
	private PrivilegerDAO privilegerDAO ;
	@Autowired
	private Privileger privileger;
	
/*create privileger*/
	@RequestMapping("/create_privileger")
	public ModelAndView show1() {
		ModelAndView m1 = new ModelAndView("create_privileger");
		return m1;
	}
	@ModelAttribute("Privileger")
	public Privileger Privileger() {
		return new Privileger();
	}
	
	/*storeprivileger*/
	@RequestMapping("/store_privileger")
	public ModelAndView storeprivileger(HttpServletRequest request,@ModelAttribute("Privileger") Privileger privileger,
			BindingResult result) {
		
		String s = "what";
		s.split(",");
		String[] form=privileger.getForms().split(",");
		for(int i=0;i<form.length;i++){
			Privileger newexp=new Privileger();
			newexp.setForms(form[i]);
			newexp.setProjectNo(privileger.getProjectNo());
			newexp.setUserName(privileger.getUserName());
			newexp.setCrfNo(privileger.getCrfNo());
			System.out.println("h2");
			
			
			privilegerDAO.save(newexp);
			System.out.println("value"+newexp);
		}



		if (result.hasErrors()) {
			return new ModelAndView("redirect:/create_privileger");
		}

		return new ModelAndView("redirect:/show_privilegers");
	}


	
	/*update*/
	
	@RequestMapping(value = "/update_privileger", method = RequestMethod.POST)
	public ModelAndView updateprivileger(HttpServletRequest request,@RequestParam int id,@ModelAttribute("Privileger") Privileger privileger) {
		
		privileger.setId(id);
		privilegerDAO.Update(privileger);
		return new ModelAndView("redirect:/show_privilegers");
	}
	@RequestMapping(value = "edit_privileger", method = RequestMethod.GET)
	public ModelAndView editprivileger(@RequestParam int id, @ModelAttribute("Privileger") Privileger privileger) {
		Privileger cp = privilegerDAO.get(id);
		return new ModelAndView("edit_privileger", "Privileger", cp);
	}
	
	@RequestMapping(value = "/delete_privileger", method = RequestMethod.POST)
	public @ResponseBody String delete(@RequestParam int privilegesId) {
		privilegerDAO.deletePrivileger(privilegesId);
		Gson u = new Gson();
		String json = u.toJson(privilegesId);
		return json;
	}
	@RequestMapping(value = "/list4", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<Privileger> list=privilegerDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	@RequestMapping(value = "/listOfProjectsinPrivileges", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showListProjects(HttpSession session) {
		
		String userName=(String) session.getAttribute("loggedInUser");
		System.out.println("my name"+userName);
		List<Privileger> list=privilegerDAO.listProjects(userName);
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	@RequestMapping(value = "/listOfCrfinPrivileges", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showListcrf(HttpSession session) {
		String userName=(String) session.getAttribute("loggedInUser");
		List<Privileger> list=privilegerDAO.listCrf(userName);
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}

	/*admin panel*/
	
	/*show privilegers*/
	
	@RequestMapping("/show_privilegers")
	public ModelAndView retriveRecords() throws Exception {
		ModelAndView m1 = new ModelAndView("show_privilegers");
		
		return m1;
	}
	
	/*@RequestMapping("/deletePrivileger")
	public ModelAndView deleteprivileger(@RequestParam int id) {
		System.out.println("hello");
		privilegerDAO.deletePrivileger(id);
		return new ModelAndView("redirect:/show_privilegers");
	}*/
	
	@RequestMapping(value = "Forms", method = RequestMethod.GET)
	public ModelAndView forms(@RequestParam String projectNo, String crfNo,String userName) {
	
		List<Privileger> cp = privilegerDAO.getForms(projectNo, crfNo, userName);

		
		return new ModelAndView("Forms", "privileger", cp);	
	}
}

		
		


