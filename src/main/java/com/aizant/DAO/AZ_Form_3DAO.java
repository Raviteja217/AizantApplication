package com.aizant.DAO;

import java.util.List;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.model.AZ_Form_3;
import com.aizant.model.User;

public interface AZ_Form_3DAO {
	public List<AZ_Form_3> list();

	public AZ_Form_3 get(int id);
	
	public void save(AZ_Form_3 form3);
	public void Update(AZ_Form_3 form3);
	public AZ_Form_3 getEdit(int id);

	public void delete(int id);

	public List getAllAZ_Form_3();

	public void deleteAZ_Form_3(int id);

	public AZ_Form_3 getPin(String pin);
	public AZ_Form_3 getEditForm(String projectNo,String crfNo);
//public ModelAndView getEditForm(String projectNo,String crfNo);
//	public ModelAndView getEditForm(String projectNo,String crfNo);

}
