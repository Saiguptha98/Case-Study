package com.MyFSS.beans;

public class EmpBeans {
	
	private String employeeId;
	private String firstName;
	private String email;
	private String phoneNumber;
	private String position;
	private String doj;
	private String employeeGrade;
	private String team;
	private String companyName;
	

	public EmpBeans()
	{
		// Empty-constructor
	}
	
	
	
	public EmpBeans(String employeeId, String firstName, String lastName, String email, String phoneNumber, String dob,
			String position, String doj, String employeeGrade, String team, String companyName) {
		super();
		this.employeeId = employeeId;
		this.firstName = firstName;
		
		this.email = email;
		this.phoneNumber = phoneNumber;
		
		this.position = position;
		this.doj = doj;
		this.employeeGrade = employeeGrade;
		this.team = team;
		this.companyName = companyName;
	}



	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getEmployeeGrade() {
		return employeeGrade;
	}
	public void setEmployeeGrade(String employeeGrade) {
		this.employeeGrade = employeeGrade;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", firstName=" + firstName +  ", email="
				+ email + ", phoneNumber=" + phoneNumber +  ", position=" + position + ", doj=" + doj
				+ ", employeeGrade=" + employeeGrade + ", team=" + team + ", companyName=" + companyName + "]";
	}
	
	
	

}
