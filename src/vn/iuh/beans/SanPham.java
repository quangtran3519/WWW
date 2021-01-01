package vn.iuh.beans;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
@Entity
public class SanPham implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int maSP;
	@javax.validation.constraints.NotBlank(message = "Bạn hãy nhập tên sản phẩm")
	private String tenSP;
	
	@ManyToOne
	@JoinColumn(name = "maNuoc")
	private NuocSanXuat nuocsanxuat;
	
	@ManyToOne
	@JoinColumn(name ="maNhaSX")
	private NhaSanXuat nhasanxuat;
	
	
	@OneToOne
	@PrimaryKeyJoinColumn
	private CauHinh cauHinh;
	
	
	public SanPham(int maSP, String tenSP, double gia) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.gia = gia;
	}

	@ManyToOne
	@JoinColumn(name = "maLoai")
	private LoaiSP loai;
	@NotNull(message = "Bạn hãy nhập giá")
	@DecimalMin(value = "1", message = "giá phải lớn hơn 0")
	private double gia;
	
	
	@ManyToOne
	@JoinColumn(name = "maMau")
	private MauSac mauSac;
	
	@javax.validation.constraints.NotBlank(message = "Bạn chưa chọn hình")
	private String urlHinh;
	
	public SanPham() {
		// TODO Auto-generated constructor stub
	}
	
	public SanPham(String tenSP, double gia) {
		super();
		this.tenSP = tenSP;
		this.gia = gia;
	}

	
	public int getMaSP() {
		return maSP;
	}

	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public NuocSanXuat getNuocsanxuat() {
		return nuocsanxuat;
	}

	public void setNuocsanxuat(NuocSanXuat nuocsanxuat) {
		this.nuocsanxuat = nuocsanxuat;
	}

	public NhaSanXuat getNhasanxuat() {
		return nhasanxuat;
	}

	public void setNhasanxuat(NhaSanXuat nhasanxuat) {
		this.nhasanxuat = nhasanxuat;
	}

	public CauHinh getCauHinh() {
		return cauHinh;
	}

	public void setCauHinh(CauHinh cauHinh) {
		this.cauHinh = cauHinh;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}




	public MauSac getMauSac() {
		return mauSac;
	}

	public void setMauSac(MauSac mauSac) {
		this.mauSac = mauSac;
	}

	public LoaiSP getLoai() {
		return loai;
	}

	public void setLoai(LoaiSP loai) {
		this.loai = loai;
	}

	public String getUrlHinh() {
		return urlHinh;
	}

	public void setUrlHinh(String urlHinh) {
		this.urlHinh = urlHinh;
	}

	@Override
	public String toString() {
		return "SanPham [maSP=" + maSP + ", tenSP=" + tenSP + ", gia=" + gia + ", mauSac=" + mauSac + ", urlHinh="
				+ urlHinh + "]";
	}

	
	
}
