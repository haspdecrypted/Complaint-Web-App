package com.accenture.lkm.business.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

public class CompliantBean {
	private Integer compliantId;
	@NotBlank(message="Please enter customer name")
	private String customerName;
	private String description;
	@NotNull(message="Please enter date of incidence")
	@Past(message="Date of Incidence must be past date")
	@DateTimeFormat(pattern="dd-MMM-yyyy")
	private Date dateOfIncidence;
	@NotNull(message="Please mention the total amount of loss you have suffered through the incident")
	private Double amount;
	@NotNull(message="Please enter customer type")
	private Integer compliantTypeId;
	public Integer getCompliantId() {
		return compliantId;
	}
	public void setCompliantId(Integer compliantId) {
		this.compliantId = compliantId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDateOfIncidence() {
		return dateOfIncidence;
	}
	public void setDateOfIncidence(Date dateOfIncidence) {
		this.dateOfIncidence = dateOfIncidence;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Integer getCompliantTypeId() {
		return compliantTypeId;
	}
	public void setCompliantTypeId(Integer compliantTypeId) {
		this.compliantTypeId = compliantTypeId;
	}
	
}
