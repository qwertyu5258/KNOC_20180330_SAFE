package kr.co.knoc.survey;

public class SurveyEntry {
	private int surveyNum;					/* ���� ��ȣ */
	private int entryNum;					/* ������ �Ϸù�ȣ */
	private String entryId;					/* ������ ���̵� */
	private String entryIp;					/* ������ ������ */
	private String entryDate;				/* ���� �� */
	private String entryTime;				/* ���� �ð� */
	
	public int getSurveyNum() {
		return surveyNum;
	}
	public void setSurveyNum(int surveyNum) {
		this.surveyNum = surveyNum;
	}
	public int getEntryNum() {
		return entryNum;
	}
	public void setEntryNum(int entryNum) {
		this.entryNum = entryNum;
	}
	public String getEntryId() {
		return entryId;
	}
	public void setEntryId(String entryId) {
		this.entryId = entryId;
	}
	public String getEntryIp() {
		return entryIp;
	}
	public void setEntryIp(String entryIp) {
		this.entryIp = entryIp;
	}
	public String getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}
	public String getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(String entryTime) {
		this.entryTime = entryTime;
	}	
}
