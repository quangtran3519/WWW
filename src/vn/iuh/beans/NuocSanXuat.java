package vn.iuh.beans;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "NuocSanXuat")
public class NuocSanXuat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maNuoc;
	private String tenNuoc;
	@OneToMany(mappedBy = "nuocsanxuat")
	private List<SanPham> sanPhams;
	public NuocSanXuat() {
		// TODO Auto-generated constructor stub
	}
	
	public NuocSanXuat(int maNuoc, String tenNuoc) {
		super();
		this.maNuoc = maNuoc;
		this.tenNuoc = tenNuoc;
	}

	public List<SanPham> getSanPhams() {
		return sanPhams;
	}

	public void setSanPhams(List<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}

	public int getMaNuoc() {
		return maNuoc;
	}
	public void setMaNuoc(int maNuoc) {
		this.maNuoc = maNuoc;
	}
	public String getTenNuoc() {
		return tenNuoc;
	}
	public void setTenNuoc(String tenNuoc) {
		this.tenNuoc = tenNuoc;
	}
	
}
