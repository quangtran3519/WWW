package vn.iuh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.SanPham;
import vn.iuh.beans.TaiKhoan;

@Repository
public class TaiKhoanDao {
	@Autowired
	SessionFactory factory;
	
	
	public SessionFactory getFactory() {
		return factory;
	}


	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	public TaiKhoan getTaikhoan(String tenTk){
		TaiKhoan taiKhoan = null;
		Session session = factory.getCurrentSession();
		try {
			List<TaiKhoan>list = session.createNativeQuery("select * from TaiKhoan where tenTk ='"+tenTk+"'", TaiKhoan.class).getResultList();
			for (TaiKhoan x : list) {
				taiKhoan = x;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return taiKhoan;
	}


	public boolean addKH(TaiKhoan taiKhoan) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			session.save(taiKhoan);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
		}
		
		
		return false;
		
	}


	public void doiMK(TaiKhoan x) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {		
			session.update(x);
			transaction.commit();
			
		} catch (Exception e) {
			transaction.rollback();
		}
		
	}
	

}
