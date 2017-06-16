package com.aizant.Application;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.aizant.DAO.AZ_Form_3DAO;
import com.aizant.DAO.AZ_Form_3DAOImpl;
import com.aizant.DAO.AvlFormsDAO;
import com.aizant.DAO.AvlFormsDAOImpl;
import com.aizant.DAO.CreateProjectDAO;
import com.aizant.DAO.CreateProjectDAOImpl;
import com.aizant.DAO.CrfNumberDAO;
import com.aizant.DAO.CrfNumberDAOImpl;
import com.aizant.DAO.MainReportDAO;
import com.aizant.DAO.MainReportDAOImpl;
import com.aizant.DAO.PrivilegerDAO;
import com.aizant.DAO.PrivilegerDAOImpl;
import com.aizant.DAO.UserDAO;
import com.aizant.DAO.UserDAOImpl;
import com.aizant.model.AZ_Form_3;
import com.aizant.model.AssignForms;
import com.aizant.model.AvlForms;
import com.aizant.model.CreateProject;
import com.aizant.model.CrfNumber;
import com.aizant.model.MainReport;
import com.aizant.model.Privileger;
import com.aizant.model.User;

@Configuration
@ComponentScan("com.aizant")
@EnableTransactionManagement
public class ApplicationContextConfig {
	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/aizantForms");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;

	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		//properties.put("hibernate.id.new_generator_mappings","true");

		return properties;

	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionFactoryBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionFactoryBuilder.addProperties(getHibernateProperties());
		sessionFactoryBuilder.addAnnotatedClass(User.class);
		sessionFactoryBuilder.addAnnotatedClass(MainReport.class);
		sessionFactoryBuilder.addAnnotatedClass(Privileger.class);
		sessionFactoryBuilder.addAnnotatedClass(CreateProject.class);
		sessionFactoryBuilder.addAnnotatedClass(CrfNumber.class);
		sessionFactoryBuilder.addAnnotatedClass(AssignForms.class);
		sessionFactoryBuilder.addAnnotatedClass(AZ_Form_3.class);
		sessionFactoryBuilder.addAnnotatedClass(AvlForms.class);
		return sessionFactoryBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	
	@Autowired
	@Bean(name = "userDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
		return new UserDAOImpl(sessionFactory);
	}

	@Autowired
	@Bean(name = "createProjectDAO")
	public CreateProjectDAO getCreateProjectDAO(SessionFactory sessionFactory) {
		return new CreateProjectDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "crfNumberDAO")
	public CrfNumberDAO getCrfNumberDAO(SessionFactory sessionFactory) {
		return new CrfNumberDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "mainReportDAO")
	public MainReportDAO getMainReportDAO(SessionFactory sessionFactory) {
		return new MainReportDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "privilegerDAO")
	public PrivilegerDAO getPrivilegerDAO(SessionFactory sessionFactory) {
		return new PrivilegerDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "AZForm3DAO")
	public AZ_Form_3DAO getAZ_Form_3DAO(SessionFactory sessionFactory) {
		return new AZ_Form_3DAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "avlformsDAO")
	public AvlFormsDAO getAvlFormsDAO(SessionFactory sessionFactory) {
		return new AvlFormsDAOImpl(sessionFactory);
	}
	
}