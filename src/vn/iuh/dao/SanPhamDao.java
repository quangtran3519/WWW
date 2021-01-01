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
public class SanPhamDao {
	@Autowired
	SessionFactory factory;
	
	
	public SessionFactory getFactory() {
		return factory;
	}


	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}


	public List<SanPham> getDSSP(){
		List<SanPham> list =null;
		Session session = factory.getCurrentSession();
		try {
			list = session.createNativeQuery("select * from SanPham", SanPham.class).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public boolean themSP(SanPham x ) {
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


	public boolean xoaSP(int id) {
		
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			SanPham sanPham = session.find(SanPham.class, id);
			CauHinh cauHinh = session.find(CauHinh.class, id);
			session.delete(cauHinh);	
			session.delete(sanPham);
					
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
		}	
		return false;
	}


	public SanPham getSP(int id) {
		
		SanPham x = new SanPham();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			 x =session.find(SanPham.class, id);
			transaction.commit();
		
		} catch (Exception e) {
			transaction.rollback();
		}
		return x;
	}


	public boolean sua(SanPham sanPham) {
		
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.merge(sanPham);
					
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
		}	
		return false;
	}


	public List<SanPham> getDStheoHang(int id) {
		List<SanPham> list =null;
		Session session = factory.openSession();
		try {
			list = session.createNativeQuery("select * from SanPham where maNhaSX ="+id, SanPham.class).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}


	public List<SanPham> getDStheoLoai(int id) {
		List<SanPham> list =null;
		Session session = factory.openSession();
		try {
			list = session.createNativeQuery("select * from SanPham where maLoai ="+id, SanPham.class).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}


	public List<SanPham> timkiemSP(String kq) {
		List<SanPham> list =null;
		Session session = factory.openSession();
		try {
			list = session.createNativeQuery("select * from SanPham where tenSP like '"+kq+"'", SanPham.class).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	
}
