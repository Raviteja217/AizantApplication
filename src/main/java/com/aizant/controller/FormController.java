package com.aizant.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.MainReportDAO;
import com.aizant.DAO.PrivilegerDAO;
import com.aizant.model.MainReport;

@Controller
public class FormController {
	@Autowired
	private MainReportDAO mainReportDAO ;
	@Autowired
	private PrivilegerDAO privilegerDAO ;
	SessionFactory sessionFactory;
	
	@RequestMapping(value="/Subject_Form",method = RequestMethod.GET)
	public ModelAndView Subject_Form() {//@RequestParam String userName,@ModelAttribute("Privileger") Privileger privileger
//		List<Privileger> pr=privilegerDAO.UserByProjects(userName);
//		privilegerDAO.ProjectByCrf(projectNo, userName);
//		System.out.println(privilegerDAO.ProjectByCrf(projectNo, userName));
		return new ModelAndView("Subject_Form");
	}
	@RequestMapping("/AZ_Form_2")
	public ModelAndView Form2() {
		ModelAndView f1 = new ModelAndView("AZ_Form_2");
		return f1;
	}

	@RequestMapping("/AZ_Form_4")
	public ModelAndView Form4() {
		ModelAndView f2 = new ModelAndView("AZ_Form_4");
		return f2;
	}
	@RequestMapping("/AZ_Form_5")
	public ModelAndView Form5() {
		ModelAndView f3 = new ModelAndView("AZ_Form_5");
		return f3;
	}
	@RequestMapping("/AZ_Form_6")
	public ModelAndView Form6() {
		ModelAndView f4 = new ModelAndView("AZ_Form_6");
		return f4;
	}
	@RequestMapping("/AZ_Form_7")
	public ModelAndView Form7() {
		ModelAndView f5 = new ModelAndView("AZ_Form_7");
		return f5;
	}
	@RequestMapping("/AZ_Form_8")
	public ModelAndView Form8() {
		ModelAndView f6 = new ModelAndView("AZ_Form_8");
		return f6;
	}
	@RequestMapping("/AZ_Form_9")
	public ModelAndView Form9() {
		ModelAndView f7 = new ModelAndView("AZ_Form_9");
		return f7;
	}
	@RequestMapping("/AZ_Form_10")
	public ModelAndView Form10() {
		ModelAndView f8 = new ModelAndView("AZ_Form_10");
		return f8;
	}
	@RequestMapping("/AZ_Form_11")
	public ModelAndView Form11() {
		ModelAndView f9 = new ModelAndView("AZ_Form_11");
		return f9;
	}
	@RequestMapping("/AZ_Form_12")
	public ModelAndView Form12() {
		ModelAndView f10 = new ModelAndView("AZ_Form_12");
		return f10;
	}
	@RequestMapping("/AZ_Form_13")
	public ModelAndView Form13() {
		ModelAndView f11 = new ModelAndView("AZ_Form_13");
		return f11;
	}
	@RequestMapping("/AZ_Form_14")
	public ModelAndView Form14() {
		ModelAndView f12 = new ModelAndView("AZ_Form_14");
		return f12;
	}
	@RequestMapping("/AZ_Form_15")
	public ModelAndView Form15() {
		ModelAndView f13 = new ModelAndView("AZ_Form_15");
		return f13;
	}
	@RequestMapping("/AZ_Form_16")
	public ModelAndView Form16() {
		ModelAndView f14 = new ModelAndView("AZ_Form_16");
		return f14;
	}
}
