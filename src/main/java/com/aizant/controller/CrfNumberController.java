package com.aizant.controller;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.CrfNumberDAO;
import com.aizant.model.CrfNumber;
import com.google.gson.Gson;


@Controller
public class CrfNumberController {

@Autowired
private CrfNumberDAO crfNumberDAO;



@RequestMapping("/create_crf")
public ModelAndView display() {
	ModelAndView create = new ModelAndView("create_crf");
	return create;
}
@RequestMapping("/store_crf")
public ModelAndView addexpriment(HttpServletRequest request, @Valid @ModelAttribute("CrfNumber") CrfNumber crfNumber,
		BindingResult result) {
	
	String s = "what";
	s.split(",");
	String[] crf_Number=crfNumber.getCrf_Number().split(",");

	for(int i=0;i<crf_Number.length;i++){
		CrfNumber newexp=new CrfNumber();
		newexp.setCrf_Number(crf_Number[i]);
		newexp.setProject_Number(crfNumber.getProject_Number());
		crfNumberDAO.save(newexp);
	}
	if (result.hasErrors()) {
		return new ModelAndView("creare_crf");
	}
	return new ModelAndView("redirect:/show_crf");
}

@ModelAttribute("CrfNumber")
public CrfNumber createExperiment() {
	return new CrfNumber();
}

@RequestMapping(value = "view_crf", method = RequestMethod.GET)
public ModelAndView viewvolunteer(@RequestParam int id, @ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	System.out.println(id);
	System.out.println(crfNumber.getId());
	CrfNumber exp = crfNumberDAO.get(id);
	return new ModelAndView("view_crf", "crfNumber", exp);
	
}
@RequestMapping("/show_crf")
public ModelAndView retriveRecords() {
	ModelAndView show = new ModelAndView("show_crf");

	return show;
}

@RequestMapping(value = "edit_crf", method = RequestMethod.GET)
public ModelAndView editCrf(@RequestParam int id, @ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	CrfNumber edit = crfNumberDAO.get(id);
	return new ModelAndView("edit_crf", "crfNumber", edit);
}


@RequestMapping(value = "/update_crf", method = RequestMethod.POST)
public ModelAndView updateCrf(HttpServletRequest request, @RequestParam int id,
		@Valid@ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	System.out.println(crfNumber.getId());
	
	crfNumber.setId(id);

	crfNumberDAO.Update(crfNumber);
	return new ModelAndView("redirect:/show_crf");
}


/*@RequestMapping("/deletecrf")
public ModelAndView deleteCrf(@RequestParam int id) {
	System.out.println("hello");
	crfNumberDAO.delete(id);
System.out.println("deleted id"+id);
return new ModelAndView("redirect:/show_crf");
}*/
@RequestMapping(value = "/deletecrf", method = RequestMethod.POST)
public @ResponseBody String delete(@RequestParam int crfId) {
	System.out.println("hello " + crfId);
	crfNumberDAO.delete(crfId);
	System.out.println("deleted Id :" + crfId);
	Gson u = new Gson();
	String json = u.toJson(crfId);
	return json;
}
@RequestMapping(value = "/list3", method = RequestMethod.GET, produces = "application/json")
public @ResponseBody String showList() {
	List<CrfNumber> list = crfNumberDAO.list();
	Gson x = new Gson();
	String json = x.toJson(list);
	return json;
}
@RequestMapping(value = "/listOfProjectsinCrf", method = RequestMethod.GET, produces = "application/json")
public @ResponseBody String showListProjects() {
	List<CrfNumber> list=crfNumberDAO.listProjects();
	Gson u = new Gson();
	String json = u.toJson(list);
	return json;
}
@RequestMapping(value = "/listOfCrfinCrf", method = RequestMethod.GET, produces = "application/json")
public @ResponseBody String showListcrf() {
	List<CrfNumber> list=crfNumberDAO.listCrf();
	Gson u = new Gson();
	String json = u.toJson(list);
	return json;
}
@RequestMapping("/all_Crf")
public ModelAndView allCrf(@RequestParam String project_Number) {
	System.out.println("hello");
	crfNumberDAO.getCrfNumber(project_Number);
	System.out.println("all crf"+project_Number);
	System.out.println(project_Number.length());
return new ModelAndView("redirect:/show_crf");
}	
}
