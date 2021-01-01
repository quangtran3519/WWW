package vn.iuh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.NhaSanXuat;
import vn.iuh.beans.SanPham;

@Repository
public class NhaSanXuatDao {
	@Autowired
	SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	public List<NhaSanXuat> getListNhaSX(){
		Session session = factory.getCurrentSession();
		
		List<NhaSanXuat> list = null;
		try {
		list = session.createNativeQuery("select * from nhasanxuat", NhaSanXuat.class).getResultList();	
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	public boolean themNhaSX(NhaSanXuat x ) {
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

	public NhaSanXuat getListNhaSX(int maNhaSX) {
		NhaSanXuat nhaSanXuat = new NhaSanXuat();
		
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			nhaSanXuat = session.find(NhaSanXuat.class,maNhaSX);
			transaction.commit();			
		} catch (Exception e) {
			transaction.rollback();
		}		
		return nhaSanXuat;
		
	}

}
