package bid.sell;

public class seller {

	private int id;
	private String Ename;
	private String Eaddress;
	private String EphoneNo;
	private String Eproduct;
	private String duration;
	
	
	public seller(int id, String ename, String eaddress, String ephoneNo, String eproduct,String duration) {
		this.id = id;
		Ename = ename;
		Eaddress = eaddress;
		EphoneNo = ephoneNo;
		Eproduct = eproduct;
		this.duration = duration;
	}


	public int getId() {
		return id;
	}

	public String getEname() {
		return Ename;
	}


	public String getEaddress() {
		return Eaddress;
	}


	public String getEphoneNo() {
		return EphoneNo;
	}
	
	public String getEproduct() {
		return Eproduct;
	}
	public String getduration() {
		return duration;
	}
	
}
