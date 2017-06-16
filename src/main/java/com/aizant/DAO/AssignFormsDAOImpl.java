package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.AssignForms;
import com.aizant.model.User;

@Repository("assignFormsDAO")
public class AssignFormsDAOImpl implements AssignFormsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public AssignFormsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(AssignForms assignForms) {
		sessionFactory.getCurrentSession().saveOrUpdate(assignForms);
	}

	@Transactional
	public void delete(int id){
		AssignForms formDelete = new AssignForms();
		formDelete.setId(id);
		sessionFactory.getCurrentSession().delete(formDelete );

	}

	@Transactional
	public AssignForms get(int id) {
		String hql = "from AssignForms where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AssignForms> list = (List<AssignForms>) query.getResultList();
		if (list != null || list.isEmpty()) {
			return list.get(0);
		}
		return null;

	}
	public int getPageCount() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Long count = (Long) session.createQuery("SELECT COUNT(id) FROM AssignForms").getSingleResult();
		tx.commit();
		session.close();

		return (int) Math.ceil(count / 10.0);
	}



	@Transactional
	public List<AssignForms> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<AssignForms> list = session.createQuery("from AssignForms").list();
		tx.commit();
		session.close();
		return list;
	}
	@Transactional
	public List<AssignForms> listProjects() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<AssignForms> listProjects = session.createQuery("select distinct project_Number from AssignForms").list();
		tx.commit();
		session.close();
		return listProjects;
	}
	@Transactional
	public List<AssignForms> listCrf() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<AssignForms> listcrf = session.createQuery("select distinct crfNo from AssignForms").list();
		tx.commit();
		session.close();
		return listcrf;
	}
	@Transactional
	public List getAllAssignForms() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from AssignForms").list();
		tx.commit();
		session.close();

		return list;
	}
	public List<AssignForms> getAssignFormsByPage(int pageid,int total){
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("FROM AssignForms");
		query.setFirstResult((pageid - 1) * total);
		query.setMaxResults(total);


		List<AssignForms> list =(List<AssignForms>) query.getResultList();

		session.close();
		return list;
	}







/*	@Transactional
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		User user = (User) session.load(User.class, id);
		session.delete(user);
		tx.commit();

		session.close();

	}*/
	
}
