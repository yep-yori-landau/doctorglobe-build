package com.dg.drgdataloader.model;

import java.util.StringTokenizer;

public class DrgHospitalEntry {
	private String drgDefinition;
	private String drgCode;
	private String drgProviderId;
	private String providerName;
	private String providerStreetAddress;
	private String providerCity;
	private String providerStateCode;
	private String providerZip;
	private String providerHRR;
	private int	   providerDischarges;
	private double providerCoveredChrges;
	private float  providerTotalPayment;
	private float  providerMedicarePayment;
	private String currency1;
	private String currency2;
	private String currency3;
	
	public DrgHospitalEntry() {
	}

	public void init(String line, String delim) {
		String 			tmp;
		StringTokenizer st = new StringTokenizer(line, delim);

		drgDefinition 	= (String)st.nextElement();
		drgProviderId 	= (String)st.nextElement();
		providerName 	= (String)st.nextElement();
		providerStreetAddress = (String)st.nextElement();
		providerCity 	= (String)st.nextElement();
		providerStateCode = (String)st.nextElement();
		providerZip 	= (String)st.nextElement();
		providerHRR 	= (String)st.nextElement();
		
		tmp = ((String)st.nextElement()).trim().replace(",",  "");
		providerDischarges = new Integer(tmp).intValue();
		
		tmp = ((String)st.nextElement()).trim().replace(",",  "");
		currency1 = tmp.substring(0,1);
		providerCoveredChrges = new Double(tmp.substring(1)).floatValue();
		
		tmp = ((String)st.nextElement()).trim().replace(",",  "");
		currency2 = tmp.substring(0,1);
		providerTotalPayment = new Float(tmp.substring(1)).floatValue();

		tmp = ((String)st.nextElement()).trim().replace(",",  "");
		currency3 = tmp.substring(0,1);
		providerMedicarePayment = new Float(tmp.substring(1)).floatValue();
		
		if (!currency1.equals("$") || !currency2.equals("$") || !currency3.equals("$"))
			System.out.println("Bad currency for: " + drgDefinition + " " + drgProviderId + " [" + currency1 + " " + currency2 + "" + currency3);
		
		int drgCodeEndPosition = drgDefinition.indexOf(" ");
		drgCode = drgDefinition.substring(0, drgCodeEndPosition);
	}
	
	public String getDrgCode() {
		return drgCode;
	}

	public String getProviderName() {
		return providerName;
	}

	public String getProviderAddress() {
		return providerStreetAddress;
	}

	public String getProviderCity() {
		return providerCity;
	}

	public String getProviderStateCode() {
		return providerStateCode;
	}
	
	public String getProviderZip() {
		return providerZip;
	}
	
	public double getProviderCoveredCharged() {
		return providerCoveredChrges;
	}

	public int getProviderDischarges() {
		return providerDischarges;
	}
	
	public String getProviderId() {
		return drgProviderId;
	}
	
	public String getProviderHRR() {
		return providerHRR;
	}
}
