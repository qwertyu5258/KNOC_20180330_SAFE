package kr.co.knoc.survey;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SurveyForm {
	private String creator;				/* ���� ����� */
	
	private int surveyNum;				/* ���� �Ϸù�ȣ */
	private String title;				/* ���� ���� */
	private String purpose;				/* ���� ���� */
	
	private String startDate;			/* ���� ���� �� */
	private String startYear;			/* ���� ���� �⵵ */
	private String startMonth;			/* ���� ���� �� */
	private String startDay;			/* ���� ���� �� */
	private String startTime;			/* ���� ���� �ð� */
	
	private String endDate;				/* ���� ���� �� */
	private String endYear;			/* ���� ���� �⵵ */
	private String endMonth;			/* ���� ���� �� */
	private String endDay;			/* ���� ���� �� */
	private String endTime;			    /* ���� ���� �ð� */
	
	private String serviceFlag;			/* ��뿩�� */	
	private int maxVote;				/* �ִ� ���� �ο� 0 �̸� ������*/
	private int totalVote;				/* �� ���� �ο� */
	private Date createDate;			/* ���������� */
	private String dupleType;			/* ���� ��� �ߺ� Ÿ�� */
	private String isLogin;						/* �α��� üũ���� */
	
	private int questionNum;			/* ���� ������ȣ */
	private int questionCount;			/* ���� ���� */	
	
	private String[] questionType;					/* ���� Ÿ�� ( �ְ���, ������ ) */
	private String[] question;						/* ���� */
	private String[] example;						/* ���� */
	private String[] maxSelection;					/* �ִ� ���� ���� ���� ���� */
	
	private String initEx;						/* ���� ���� ���� */
		
	
	public SurveyForm() {
		//questionType = new ArrayList();
		//question = new ArrayList();
		//example = new ArrayList();
		//maxSelection = new ArrayList();
	}

	public String getInitEx() { 
		return this.initEx;
	}
	
	public void setInitEx(String initEx) {
		this.initEx = initEx;
	}
	
	public String getCreator() { 
		return this.creator;
	}
	
	public void setCreator(String creator) {
		this.creator = creator;
	}
	
	public int getSurveyNum() {
		return surveyNum;
	}

	public void setSurveyNum(int surveyNum) {
		this.surveyNum = surveyNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getStartYear() {
		return startYear;
	}

	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}
	
	public String getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}
	
	public String getStartDay() {
		return startDay;
	}

	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	public String getEndYear() {
		return endYear;
	}

	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}
	
	public String getEndMonth() {
		return endMonth;
	}

	public void setEndMonth(String endMonth) {
		this.endMonth = endMonth;
	}
	
	public String getEndDay() {
		return endDay;
	}

	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getMaxVote() {
		return maxVote;
	}

	public void setMaxVote(int maxVote) {
		this.maxVote = maxVote;
	}
	
	public int getTotalVote() {
		return totalVote;
	}

	public void setTotalVote(int totalVote) {
		this.totalVote = totalVote;
	}

	public String getDupleType() {
		return dupleType;
	}

	public void setDupleType(String dupleType) {
		this.dupleType = dupleType;
	}
	
	public int getQuestionNum() {
		return questionNum;
	}

	public void setQuestionNum(int questionNum) {
		this.questionNum = questionNum;
	}

	public int getQuestionCount() {
		return questionCount;
	}

	public void setQuestionCount(int questionCount) {
		this.questionCount = questionCount;
	}

	public String getServiceFlag() {
		return serviceFlag;
	}

	public void setServiceFlag(String serviceFlag) {
		this.serviceFlag = serviceFlag;
	}

	public String[] getQuestionType() {
		return questionType;
	}

	public void setQuestionType(String[] questionType) {
		this.questionType = questionType;
	}

	public String[] getQuestion() {
		return question;
	}

	public void setQuestion(String[] question) {
		this.question = question;
	}

	public String[] getExample() {
		return example;
	}

	public void setExample(String[] example) {
		this.example = example;
	}
	
	public String[] getMaxSelection() { 
		return this.maxSelection;
	}
	
	public void setMaxSelection(String[] maxSelection){
		this.maxSelection = maxSelection;
	}

	public String getIsLogin() {
		return isLogin;
	}

	public void setIsLogin(String isLogin) {
		this.isLogin = isLogin;
	}
	
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getCreateDateString() {
		return getCreateDateString("yyyy-MM-dd HH:mm:ss");
	}
	public String getCreateDateString(String pattern) {
		SimpleDateFormat df = new SimpleDateFormat(pattern);
		if(createDate == null) return df.format(new Date());
		return df.format(this.createDate);
	}
	public void setCreateDateString(String format, String value) {
	    SimpleDateFormat df = new SimpleDateFormat(format);
	    try {
	        this.createDate = df.parse(value);
	    }catch(ParseException e) { ; }
	}
}
