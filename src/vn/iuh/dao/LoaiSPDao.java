package vn.iuh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.MauSac;
import vn.iuh.beans.SanPham;

@Repository
public class LoaiSPDao {
	@Autowired
	SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	public List<LoaiSP> getListLoaiSP(){
		Session session = factory.getCurrentSession();
		
		List<LoaiSP> list = null;
		try {
		list = session.createNativeQuery("select * from loaiSP", LoaiSP.class).getResultList();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public boolean themLoaiSP(LoaiSP x ) {
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
	public LoaiSP getLoaiSP(int maloai) {
		LoaiSP loaiSP = new LoaiSP();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			loaiSP = session.find(LoaiSP.class,maloai);
			transaction.commit();			
		} catch (Exception e) {
			transaction.rollback();
		}		
		return loaiSP;
		
	}
	
}
