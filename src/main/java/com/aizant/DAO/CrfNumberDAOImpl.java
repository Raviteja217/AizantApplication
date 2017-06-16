package com.aizant.DAO;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.AssignForms;
import com.aizant.model.CrfNumber;
import com.aizant.model.User;



@Repository("crfNumberDAO")
public class CrfNumberDAOImpl implements CrfNumberDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	public CrfNumberDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public void save(CrfNumber crfNumber) {
		sessionFactory.getCurrentSession().save(crfNumber);
	}
	@Transactional
	public void Update(CrfNumber crfNumber) {
		sessionFactory.getCurrentSession().update(crfNumber);
	}
	@Transactional
	public void delete(int id) {
		CrfNumber Delete =new CrfNumber();
		Delete.setId(id);
		sessionFactory.getCurrentSession().delete(Delete);
		
	}
	@Transactional
	public CrfNumber get(int id)
	{
		String hql ="from CrfNumber where id="+"'"+id+"'";
		Query query =(Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<CrfNumber> listExperiment =(List<CrfNumber>) query.getResultList();
		if(listExperiment != null || listExperiment.isEmpty())
		{
			return listExperiment.get(0);
		}	
		return null;
	
	}
	
	
@Transactional
	public List<CrfNumber> list() {
		
	Session session=sessionFactory.openSession();
	List<CrfNumber> list=session.createQuery("from CrfNumber").list();
	session.close();
	return list;
	}
@Transactional
public List<CrfNumber> listProjects() {

	Session session = sessionFactory.openSession();
	org.hibernate.Transaction tx = session.beginTransaction();
	List<CrfNumber> listProjects = session.createQuery("select distinct project_Number from CrfNumber").list();
	tx.commit();
	session.close();
	return listProjects;
}
@Transactional
public List<CrfNumber> listCrf() {

	Session session = sessionFactory.openSession();
	org.hibernate.Transaction tx = session.beginTransaction();
	List<CrfNumber> listcrf = session.createQuery("select distinct crf_Number from CrfNumber").list();
	tx.commit();
	session.close();
	return listcrf;
}	
@Transactional
public List getAllExperiments() {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	List list=session.createQuery("from CrfNumber").list();
	session.close();
	return list;
	}

@Transactional
public int deleteexperiment(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	org.hibernate.Transaction tx=session.beginTransaction();
	CrfNumber crfNumber=(CrfNumber)session.load(CrfNumber.class, id);
	session.delete(crfNumber);
	tx.commit();
	
	session.close();
	return id;
	
}

public List<CrfNumber> getExperimentByPage(int pageid,int total){  
	Session session = sessionFactory.openSession();

	Query query = session.createQuery("FROM CrfNumber");
	query.setFirstResult((pageid - 1) * total + 1);
	query.setMaxResults(total);
	
	
	List<CrfNumber> list =(List<CrfNumber>) query.getResultList();

	session.close();
	return list;
        }
@Override
public long getPageCount() {
	// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		long count= (long) session.createQuery("SELECT COUNT(id) FROM CrfNumber").getSingleResult();
		System.out.println("Count from db " + count);
		session.close();
		
	return (int)Math.ceil(count/10.0);
}
@Transactional
public CrfNumber getCrfNumber(String project_Number) {
	String hql = "from CrfNumber where project_Number=" + "'" + project_Number + "'";
	Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
	List<CrfNumber> listcrf = (List<CrfNumber>) query.getResultList();
	if (listcrf != null || listcrf.isEmpty()) {
		return listcrf.get(0);
	}
	return null;

}



}
