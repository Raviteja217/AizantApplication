package com.aizant.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.aizant.DAO.AvlFormsDAO;
import com.aizant.model.AssignForms;
import com.aizant.model.AvlForms;
import com.aizant.model.Privileger;
import com.google.gson.Gson;

@Controller
public class AvlFormsController {
	@Autowired
	private AvlFormsDAO avlFormsDAO;

	@RequestMapping("/add_forms")
	public ModelAndView display1() {
		ModelAndView m1 = new ModelAndView("add_forms");
		return m1;
	}

	@ModelAttribute("AvlForms")
	public AvlForms AssignForms() {
		return new AvlForms();
	}

	@RequestMapping(value = "/store_forms", method = RequestMethod.POST)
	public ModelAndView storeForm(@Valid @ModelAttribute("AvlForms") AvlForms avlForms, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/add_forms");
		}
		String s = "what";
		s.split(",");
		System.out.println(avlForms.getForms());
		String[] form = avlForms.getForms().split(",");
		for (int i = 0; i < form.length; i++) {
			AvlForms newexp = new AvlForms();
			newexp.setForms(form[i]);
			avlFormsDAO.save(newexp);
		
		}
		return new ModelAndView("redirect:/show_forms");

	}

	@RequestMapping("/show_forms")
	public ModelAndView retriveRecords() {
		ModelAndView m1 = new ModelAndView("show_forms");

		return m1;
	}

	@RequestMapping(value = "/list7", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<AvlForms> list = avlFormsDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
}
