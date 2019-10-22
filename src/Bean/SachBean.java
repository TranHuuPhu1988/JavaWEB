package Bean;

public class SachBean {
	private String maSach;
	private String tenSach;
	private String tacGiaSach;
	private String anhSach;
	private long giaSach;

	public SachBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMaSach() {
		return maSach;
	}

	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}

	public String getTenSach() {
		return tenSach;
	}

	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}

	public String getTacGiaSach() {
		return tacGiaSach;
	}

	public void setTacGiaSach(String tacGiaSach) {
		this.tacGiaSach = tacGiaSach;
	}

	public String getAnhSach() {
		return anhSach;
	}

	public void setAnhSach(String anhSach) {
		this.anhSach = anhSach;
	}

	public long getGiaSach() {
		return giaSach;
	}

	public void setGiaSach(long giaSach) {
		this.giaSach = giaSach;
	}

	public SachBean(String maSach, String tenSach, String tacGiaSach, String anhSach, long giaSach) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.tacGiaSach = tacGiaSach;
		this.anhSach = anhSach;
		this.giaSach = giaSach;
	}

}
