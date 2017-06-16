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

import com.aizant.DAO.CreateProjectDAO;

import com.aizant.model.CreateProject;
import com.aizant.model.User;
import com.google.gson.Gson;

@Controller
public class ProjectController {
	
	@Autowired
	private CreateProjectDAO createProjectDAO ;
	
	@RequestMapping("/admin_panel")
	public ModelAndView display2() {
		ModelAndView m2 = new ModelAndView("admin_panel");
		return m2;
	}
	@RequestMapping("/Admin")
	public ModelAndView display3() {
		ModelAndView m2 = new ModelAndView("Admin");
		return m2;
	}
	
/*create project*/
	@RequestMapping("/create_project")
	public ModelAndView display1() {
		ModelAndView m1 = new ModelAndView("create_project");
		return m1;
	}
	@ModelAttribute("CreateProject")
	public CreateProject CreateProject() {
		return new CreateProject();
	}
	
	/*storeproject*/
	@RequestMapping(value = "/store_project", method = RequestMethod.POST)
	public ModelAndView storeproject(@Valid @ModelAttribute("CreateProject") CreateProject createProject, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/create_project");
		}
		createProjectDAO.saveOrUpdate(createProject);
		return new ModelAndView("redirect:/show_projects");
	}
	
	/*update*/
	
	@RequestMapping(value = "/update_project", method = RequestMethod.POST)
	public ModelAndView updateproject(HttpServletRequest request,@RequestParam int id,@ModelAttribute("CreateProject") CreateProject createProject) {
		
		createProject.setId(id);
		createProjectDAO.saveOrUpdate(createProject);
		return new ModelAndView("redirect:/show_projects");
	}
	@RequestMapping(value = "edit_project", method = RequestMethod.GET)
	public ModelAndView editproject(@RequestParam int id, @ModelAttribute("CreateProject") CreateProject createProject) {
		CreateProject cp = createProjectDAO.get(id);
		return new ModelAndView("edit_project", "CreateProject", cp);
	}
	
	/*delete project*/
	@RequestMapping(value = "/deleteproject", method = RequestMethod.POST)
	public @ResponseBody String deleteProject(@RequestParam int projectId) {
		createProjectDAO.deleteProject(projectId);
		Gson u = new Gson();
		String json = u.toJson(projectId);
		return json;
	}
	@RequestMapping(value = "/list1", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<CreateProject> list=createProjectDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	/*admin panel*/
	
	/*display projects*/
	
	@RequestMapping("/show_projects")
	public ModelAndView retriveRecords() throws Exception {
		ModelAndView m1 = new ModelAndView("show_projects");
		
		return m1;
	}
	
	/*@RequestMapping("/delete")
	public ModelAndView deleteproject(@RequestParam int id) {
		System.out.println("hello");
		createProjectDAO.deleteProject(id);
		return new ModelAndView("redirect:/show_projects");
	}*/
	
}

