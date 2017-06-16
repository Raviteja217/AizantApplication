package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.CreateProject;

@Repository("createProjectDAO")
public class CreateProjectDAOImpl implements CreateProjectDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CreateProjectDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(CreateProject createProject) {
		sessionFactory.getCurrentSession().saveOrUpdate(createProject);
	}

	@Transactional
	public void deleteProject(int id) {
		CreateProject ProjectDelete = new CreateProject();
		ProjectDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProjectDelete );

	}

	@Transactional
	public CreateProject get(int id) {
		String hql = "from CreateProject where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<CreateProject> listUser = (List<CreateProject>) query.getResultList();
		if (listUser != null || listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;

	}
	public int getPageCount() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Long count = (Long) session.createQuery("SELECT COUNT(id) FROM CreateProject").getSingleResult();
		tx.commit();
		session.close();

		return (int) Math.ceil(count / 10.0);
	}



	@Transactional
	public List<CreateProject> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<CreateProject> list = session.createQuery("from CreateProject").list();
		tx.commit();
		session.close();
		return list;
	}

	@Transactional
	public List getAllprojects() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from CreateProject").list();
		tx.commit();
		session.close();

		return list;
	}
	public List<CreateProject> getProjectByPage(int pageid,int total){
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("FROM CreateProject");
		query.setFirstResult((pageid - 1) * total);
		query.setMaxResults(total);


		List<CreateProject> list =(List<CreateProject>) query.getResultList();

		session.close();
		return list;
	}




}

