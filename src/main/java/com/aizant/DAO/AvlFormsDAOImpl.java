package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.AvlForms;

@Repository("avlformsDAO")
public class AvlFormsDAOImpl implements AvlFormsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public AvlFormsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void save(AvlForms avlForms) {
		sessionFactory.getCurrentSession().save(avlForms);
	}
	@Transactional
	public void Update(AvlForms avlForms) {
		sessionFactory.getCurrentSession().update(avlForms);
	}
	@Transactional
	public void delete(int id) {
		AvlForms avlFormsToDelete = new AvlForms();
		avlFormsToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(avlFormsToDelete);

	}

	@Transactional
	public AvlForms get(int id) {
		String hql = "from AvlForms where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<AvlForms> listAvlForms = (List<AvlForms>) query.getResultList();
		if (listAvlForms != null || listAvlForms.isEmpty()) {
			return listAvlForms.get(0);
		}
		return null;

	}
	@Transactional
	public List<AvlForms> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<AvlForms> list = session.createQuery("from AvlForms").list();
		tx.commit();
		session.close();
		return list;
	}
	
}
