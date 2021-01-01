package vn.iuh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.CauHinh;
import vn.iuh.beans.SanPham;
@Repository
public class CauHinhDao {
	@Autowired
	SessionFactory factory;
	
	
	public SessionFactory getFactory() {
		return factory;
	}


	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}


	public boolean themCH(CauHinh x ) {
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


	public boolean  suaCH(CauHinh ch) {
		
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			session.merge(ch);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
		}
		
		
		return false;
		
		
	}
	
}
