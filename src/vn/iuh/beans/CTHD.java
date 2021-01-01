package vn.iuh.beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CTHD")
@IdClass(CTHD_PK.class)
public class CTHD  implements Serializable{
	@Id
	@ManyToOne
	@JoinColumn(name = "maHD")
	private HoaDon  hoaDon;
	@Id
	@ManyToOne
	@JoinColumn(name ="maSP")
	private SanPham sanPham;
	public CTHD(SanPham sanPham, int soLuong) {
		
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

	private int soLuong;
	
	public CTHD() {
		// TODO Auto-generated constructor stub
	}

	

	public CTHD(HoaDon hoaDon, SanPham sanPham, int soLuong) {
		super();
		this.hoaDon = hoaDon;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}



	public HoaDon getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
}
