package vn.iuh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.HoaDon;
@Repository
public class HoaDonDao {
	@Autowired
	SessionFactory factory;
	
	
	public SessionFactory getFactory() {
		return factory;
	}


	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	public boolean addHD(HoaDon x ) {	
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			session.save(x);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
		}
		
		
		return false;
	}
}
