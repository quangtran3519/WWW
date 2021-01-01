package vn.iuh.beans;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "HoaDon")
public class HoaDon implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maHD;
	
	@ManyToOne
	@JoinColumn(name = "maKH")
	private KhachHang khachHang;

	
	private LocalDate ngayLap;
	@OneToMany(mappedBy = "hoaDon")
	private List<CTHD> cthds;
	public HoaDon( KhachHang khachHang, LocalDate ngayLap) {
	
		this.khachHang = khachHang;
		this.ngayLap = ngayLap;
	}
	public HoaDon() {
		// TODO Auto-generated constructor stub
	}
	public int getMahD() {
		return maHD;
	}
	public int getMaHD() {
		return maHD;
	}
	public void setMaHD(int maHD) {
		this.maHD = maHD;
	}
	public void setMahD(int mahD) {
		this.maHD = mahD;
	}
	public KhachHang getKhachHang() {
		return khachHang;
	}
	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}
	public LocalDate getNgayLap() {
		return ngayLap;
	}
	public void setNgayLap(LocalDate ngayLap) {
		this.ngayLap = ngayLap;
	}
	public List<CTHD> getCthds() {
		return cthds;
	}
	public void setCthds(List<CTHD> cthds) {
		this.cthds = cthds;
	}
	
	
	

}
