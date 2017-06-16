package com.aizant.DAO;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.model.AZ_Form_3;
@Controller
@Repository("AZForm3DAO")
public class AZ_Form_3DAOImpl implements AZ_Form_3DAO {

	@Autowired
	private SessionFactory sessionFactory;

	public AZ_Form_3DAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(AZ_Form_3 form3) {
		sessionFactory.getCurrentSession().saveOrUpdate(form3);
	}
	@Transactional
	public void Update(AZ_Form_3 form3) {
		sessionFactory.getCurrentSession().update(form3);
	}
	@Transactional
	public void delete(int id) {
		AZ_Form_3 form3ToDelete = new AZ_Form_3();
		form3ToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(form3ToDelete);

	}

	@Transactional
	public AZ_Form_3 get(int id) {
		String hql = "from AZ_Form_3 where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AZ_Form_3> listAZ_Form_3 = (List<AZ_Form_3>) query.getResultList();
		if (listAZ_Form_3 != null || listAZ_Form_3.isEmpty()) {
			return listAZ_Form_3.get(0);
		}
		return null;

	}

	

	@Transactional
	public List<AZ_Form_3> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<AZ_Form_3> list = session.createQuery("from AZ_Form_3").list();
		tx.commit();
		session.close();
		return list;
	}

	@Transactional
	public List getAllAZ_Form_3() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from AZ_Form_3").list();
		tx.commit();
		session.close();

		return list;
	}

	@Transactional
	public void deleteAZ_Form_3(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		AZ_Form_3 form3 = (AZ_Form_3) session.load(AZ_Form_3.class, id);
		session.delete(form3);
		tx.commit();

		session.close();

	}

	@Transactional
	public AZ_Form_3 getPin(String pin) {
		String hql = "from AZ_Form_3 where pin=" + "'" + pin + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AZ_Form_3> listAZ_Form_3 = (List<AZ_Form_3>) query.getResultList();
		if (listAZ_Form_3 != null || listAZ_Form_3.isEmpty()) {
			return listAZ_Form_3.get(0);
		}
		return null;

}
	@Transactional
	public AZ_Form_3 getEditForm(String projectNo,String crfNo) {
		String hql = "from AZ_Form_3 where projectNo=" + "'" + projectNo + "' and crfNo=" + "'" + crfNo + "' order by dt desc";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AZ_Form_3> listAZ_Form_3 = (List<AZ_Form_3>) query.getResultList();
		if (listAZ_Form_3 != null || listAZ_Form_3.isEmpty()) {
			return listAZ_Form_3.get(0);
		}
		return null;

	}
	
	@Transactional
	public AZ_Form_3 getEdit(int id) {
		String hql = "from AZ_Form_3 where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AZ_Form_3> listAZ_Form_3 = (List<AZ_Form_3>) query.getResultList();
		if (listAZ_Form_3 != null || listAZ_Form_3.isEmpty()) {
			return listAZ_Form_3.get(0);
		}
		return null;

	}


		/*@Transactional
	public ModelAndView getEditForm(String projectNo,String crfNo) {
		String hql = "from AZ_Form_3 where projectNo=" + "'" + projectNo + "' and crfNo=" + "'" + crfNo + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AZ_Form_3> listAZ_Form_3 = (List<AZ_Form_3>) query.getResultList();
		ModelAndView modelAndView;
		
		if (listAZ_Form_3 != null) {

		     System.out.println("edit page");
		     return new ModelAndView("edit_AZ_Form_3", "form3", listAZ_Form_3);
//		     return "edit_AZ_Form_3?projectNo=C16430&crfNo=4CRF/01&username=user";	
			
		}
		else{
			
			System.out.println("add page");
			  return new ModelAndView("AZ_Form_3", "form3", listAZ_Form_3);
//		return "AZ_Form_3?projectNo=C16430&crfNo=4CRF/01&username=user";	
//			return new ModelAndView("redirect:/show_user");
//		return new ModelAndView("edit_AZ_Form_3", "form3", u1);
		}
	

	}*/
}

