package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.model.CrfNumber;
import com.aizant.model.Privileger;

@Repository("privilegerDAO")
public class PrivilegerDAOImpl implements PrivilegerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public PrivilegerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(Privileger privileger) {
		sessionFactory.getCurrentSession().save(privileger);
	}

	@Transactional
	public void Update(Privileger privileger) {
		sessionFactory.getCurrentSession().update(privileger);
	}

	@Transactional
	public void deletePrivileger(int id) {
		Privileger PrivilegerDelete = new Privileger();
		PrivilegerDelete.setId(id);
		sessionFactory.getCurrentSession().delete(PrivilegerDelete);

	}

	@Transactional
	public Privileger get(int id) {
		String hql = "from Privileger where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<Privileger> list = (List<Privileger>) query.getResultList();
		if (list != null || list.isEmpty()) {
			return list.get(0);
		}
		return null;

	}

	public int getPageCount() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Long count = (Long) session.createQuery("SELECT COUNT(id) FROM Privileger").getSingleResult();
		tx.commit();
		session.close();

		return (int) Math.ceil(count / 10.0);
	}

	@Transactional
	public List<Privileger> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<Privileger> list = session.createQuery("from Privileger").list();
		tx.commit();
		session.close();
		return list;
	}
	@Transactional
	public List<Privileger> listProjects(String userName) {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<Privileger> listProjects = session.createQuery("select distinct projectNo from Privileger where userName=" + "'" + userName + "'").list();
		tx.commit();
		session.close();
		return listProjects;
	}
	@Transactional
	public List<Privileger> listCrf(String userName) {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<Privileger> listcrf = session.createQuery("select distinct crfNo from Privileger where userName=" + "'" + userName + "'").list();
		tx.commit();
		session.close();
		return listcrf;
	}

	@Transactional
	public List getAllPrivileger() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from Privileger").list();
		tx.commit();
		session.close();

		return list;
	}

	public List<Privileger> getPrivilegerByPage(int pageid, int total) {
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("FROM Privileger");
		query.setFirstResult((pageid - 1) * total);
		query.setMaxResults(total);

		List<Privileger> list = (List<Privileger>) query.getResultList();

		session.close();
		return list;
	}

	@Transactional
	public List<Privileger> getForms(String projectNo, String crfNo, String userName) {
		String hql = " from Privileger where projectNo=" + "'" + projectNo + "' and crfNo=" + "'" + crfNo
				+ "' and userName=" + "'" + userName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println("forms" + hql);
		List<Privileger> list = (List<Privileger>) query.getResultList();

		/*
		 * System.out.println("forms list"+ list.size());
		 * 
		 * if (list != null || list.isEmpty()) { return list.get(0); }
		 */
		return list;

	}

	@Transactional
	public List<Privileger> UserByProjects(String userName) {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<Privileger> list = session.createQuery("from Privileger where userName=" + "'" + userName + "'").list();
		tx.commit();
		session.close();
		return list;
	}

	@Transactional
	public List<Privileger> ProjectByCrf(String projectNo, String userName) {

		String hql = " from Privileger where projectNo=" + "'" + projectNo + "' and userName=" + "'" + userName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println("forms" + hql);
		List<Privileger> list = (List<Privileger>) query.getResultList();
		return list;
	}
	

	@Transactional
	public Privileger getChange(String projectNo, String crfNo, String forms,boolean addflag) {
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		System.out.println("hello change");
		String hql = " update Privileger set addflag=" + "'" + addflag + "' where forms=" + "'" + forms + "' and projectNo=" + "'" + projectNo + "' and crfNo=" + "'" + crfNo + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();

		tx.commit();
		session.close();
		return null;

	}
}

/*
 * @Transactional public void deleteUser(int id) { // TODO Auto-generated method
 * stub Session session = sessionFactory.openSession();
 * org.hibernate.Transaction tx = session.beginTransaction(); User user = (User)
 * session.load(User.class, id); session.delete(user); tx.commit();
 * 
 * session.close();
 * 
 * }
 */
