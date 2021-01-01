package vn.iuh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.MauSac;
import vn.iuh.beans.NhaSanXuat;
import vn.iuh.beans.SanPham;

@Repository
public class MauSacDao {
	
	@Autowired
	SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	public List<MauSac> getListMauSac(){
		Session session = factory.getCurrentSession();
		
		List<MauSac> list = null;
		try {
		list = session.createNativeQuery("select * from mausac", MauSac.class).getResultList();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public boolean themMau(MauSac x ) {
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

	public MauSac getListMauSac(int maMau) {
		MauSac mauSac = new MauSac();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			mauSac = session.find(MauSac.class,maMau);
			transaction.commit();			
		} catch (Exception e) {
			transaction.rollback();
		}		
		return mauSac;
		
		
		
	}

}
