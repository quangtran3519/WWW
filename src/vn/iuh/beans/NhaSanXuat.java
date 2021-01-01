package vn.iuh.beans;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "NhaSanXuat")
public class NhaSanXuat implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maNhaSX;
	private String tenNhaSX;
	
	@OneToMany(mappedBy = "nhasanxuat")
	private List<SanPham> sanPhams;
	public NhaSanXuat() {
		// TODO Auto-generated constructor stub
	}

	public NhaSanXuat(int maNhaSX, String tenNhaSX) {
		super();
		this.maNhaSX = maNhaSX;
		this.tenNhaSX = tenNhaSX;
	}



	public List<SanPham> getSanPhams() {
		return sanPhams;
	}

	public void setSanPhams(List<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}

	public int getMaNhaSX() {
		return maNhaSX;
	}

	public void setMaNhaSX(int maNhaSX) {
		this.maNhaSX = maNhaSX;
	}

	public String getTenNhaSX() {
		return tenNhaSX;
	}

	public void setTenNhaSX(String tenNhaSX) {
		this.tenNhaSX = tenNhaSX;
	}
	

}
