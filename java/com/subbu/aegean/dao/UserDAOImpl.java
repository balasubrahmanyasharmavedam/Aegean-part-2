package com.subbu.aegean.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.subbu.aegean.model.User;

@SuppressWarnings("deprecation")
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);

	}

	@Transactional
	public void delete(int id) {
		User user = new User();
		user.setId(id);
		sessionFactory.getCurrentSession().delete(user);

	}

	@Transactional
	public User get(int id) {
		String hql = "from User where id=" + "'" + id + "'";
		@SuppressWarnings({ "rawtypes" })
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings({ "unchecked" })
		List<User> listUser = (List<User>) query.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);

		}
		return null;
	}

	@Transactional
	public List<User> list() {
		@SuppressWarnings({ "unchecked" })
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUser;

	}

	@Transactional
	public boolean isValidUser(String email, String password) {
		String hql = "from User where email='" + email + "' and password = '" + password + "'";
		@SuppressWarnings("rawtypes")
		Query q = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("rawtypes")
		List list = q.list();
		if (list == null || list.isEmpty()) {
			return false;

		} else {
			return true;

		}
	}
	
	@Transactional
	public boolean isAdmin(String email, String password) {
		String hql = "from User where email='"+ email + "' and password = '" + password + "'and role ='a'";
		@SuppressWarnings("rawtypes")
		Query q = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("rawtypes")
		List list = q.list();
		if (list == null || list.isEmpty()) {
			return false;

		} else {
			return true;

		}
	}
	
	@Transactional
	public boolean isSupplier(String email, String password) {
		String hql = "from User where email='" + email + "' and password = '" + password + "' and role ='s'";
		@SuppressWarnings("rawtypes")
		Query q = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("rawtypes")
		List list = q.list();
		if (list == null || list.isEmpty()) {
			return false;

		} else {
			return true;

		}
	}
	
	@Transactional
	public User getByEmail(String email) {
		String hql = "from User where email=" + "'" + email + "'";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}

		return null;

	}

}