package vn.iuh.beans;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "CauHinh")
public class CauHinh implements Serializable {
	
	@NotBlank( message = "Bạn chưa nhập trông tin cho cpu")
	private String cpu;
	@NotBlank( message = "Bạn chưa nhập ram")
	private String ram;
	@NotBlank( message = "Bạn chưa nhập ổ cứng")
	private String oCung;
	@NotBlank( message = "Bạn chưa nhập  màn hình")
	private String manHinh;
	@NotBlank( message = "Bạn chưa nhập Card đồ họa")
	private String cardDohoa;
	
	@NotBlank( message = "Bạn chưa nhập cổng kết nối")
	private String congKetnoi;
	
	@NotBlank( message = "Bạn chưa nhập hệ điều hành")
	private String hdh;
	
	@NotBlank( message = "Bạn chưa nhập thiết kế")
	private String thietKe;
	
	@NotBlank( message = "Bạn chưa nhập kích thước")
	private String kichThuoc;
	
	@NotBlank( message = "Bạn chưa nhập trông tin  năm sản xuất")
	private String namSX;
	@Id
	@OneToOne
	
	@JoinColumn(name = "maSP")
	private SanPham sanPham;
	
	
	public CauHinh() {
		// TODO Auto-generated constructor stub
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getoCung() {
		return oCung;
	}
	public void setoCung(String oCung) {
		this.oCung = oCung;
	}
	public String getManHinh() {
		return manHinh;
	}
	public void setManHinh(String manHinh) {
		this.manHinh = manHinh;
	}
	public String getCardDohoa() {
		return cardDohoa;
	}
	public void setCardDohoa(String cardDohoa) {
		this.cardDohoa = cardDohoa;
	}
	public String getCongKetnoi() {
		return congKetnoi;
	}
	public void setCongKetnoi(String congKetnoi) {
		this.congKetnoi = congKetnoi;
	}
	public String getHdh() {
		return hdh;
	}
	public void setHdh(String hdh) {
		this.hdh = hdh;
	}
	public String getThietKe() {
		return thietKe;
	}
	public void setThietKe(String thietKe) {
		this.thietKe = thietKe;
	}
	public String getKichThuoc() {
		return kichThuoc;
	}
	public void setKichThuoc(String kichThuoc) {
		this.kichThuoc = kichThuoc;
	}

	public String getNamSX() {
		return namSX;
	}
	public void setNamSX(String namSX) {
		this.namSX = namSX;
	}
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public CauHinh(String cpu, String ram, String oCung, String manHinh, String cardDohoa, String congKetnoi,
			String hdh, String thietKe, String kichThuoc, String namSX) {
		super();
		this.cpu = cpu;
		this.ram = ram;
		this.oCung = oCung;
		this.manHinh = manHinh;
		this.cardDohoa = cardDohoa;
		this.congKetnoi = congKetnoi;
		this.hdh = hdh;
		this.thietKe = thietKe;
		this.kichThuoc = kichThuoc;
		this.namSX = namSX;
	
	}
	
	

}
