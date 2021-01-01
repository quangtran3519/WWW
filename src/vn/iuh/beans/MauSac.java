package vn.iuh.beans;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class MauSac {
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private  int maMau;
	private String tenMau;
	@OneToMany(mappedBy = "mauSac")
	private List<SanPham>sanPhams;
	
	public MauSac() {
		// TODO Auto-generated constructor stub
	}

	public MauSac(int maMau, String tenMau) {
		super();
		this.maMau = maMau;
		this.tenMau = tenMau;
	}

	public int getMaMau() {
		return maMau;
	}

	public void setMaMau(int maMau) {
		this.maMau = maMau;
	}

	public String getTenMau() {
		return tenMau;
	}

	public void setTenMau(String tenMau) {
		this.tenMau = tenMau;
	}
	

}
