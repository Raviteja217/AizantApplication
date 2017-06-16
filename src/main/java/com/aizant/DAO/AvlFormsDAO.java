package com.aizant.DAO;

import java.util.List;

import com.aizant.model.AvlForms;

public interface AvlFormsDAO {
	public List<AvlForms> list();

	public AvlForms get(int id);

	public void save(AvlForms avlForms);
	public void Update(AvlForms avlForms);
	public void delete(int id);


}
