package vn.iuh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.NuocSanXuat;
import vn.iuh.beans.SanPham;

@Repository
public class NuocDao {
	@Autowired
	SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	public List<NuocSanXuat> getListNuoc(){
		List<NuocSanXuat> list = new ArrayList<NuocSanXuat>();
		 Session session = factory.getCurrentSession();
		 
		 try {
			list = session.createNativeQuery("SELECT * FROM dbo.NuocSanXuat", NuocSanXuat.class).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public boolean themNuoc(NuocSanXuat x ) {
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

	public NuocSanXuat getNuocSX(int maNuoc) {
		NuocSanXuat ncNX = new NuocSanXuat();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			ncNX = session.find(NuocSanXuat.class,maNuoc);
			transaction.commit();			
		} catch (Exception e) {
			transaction.rollback();
		}		
		return ncNX;
	}

}
