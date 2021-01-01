package vn.iuh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.KhachHang;

@Repository
public class KhachHangDao {
	@Autowired
	SessionFactory factory;
	
	
	public SessionFactory getFactory() {
		return factory;
	}


	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}


	public KhachHang getKH(int id) {
		KhachHang x = new KhachHang();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			x =session.find(KhachHang.class, id);
			transaction.commit();
	
		} catch (Exception e) {
			transaction.rollback();
		}
		return x;
	}
	

}
