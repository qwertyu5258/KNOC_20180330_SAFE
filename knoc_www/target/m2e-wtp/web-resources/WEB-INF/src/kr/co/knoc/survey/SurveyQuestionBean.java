package kr.co.knoc.survey;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SurveyQuestionBean {
	private int surveyNum;				/* ���� ������ȣ */
	private int questionNum;			/* ���� ������ȣ */
	private int questionCount;			/* ���� ���� */	
	
	private String questionType;		/* ���� Ÿ�� ( �ְ���, ������ ) */
	private String question;			/* ���� */
	private String example;				/* ���� */
	private int maxSelection;			/* �ִ� ���� ���� ���� ���� */	
		
	
	public SurveyQuestionBean() {
	}
	
	public int getSurveyNum() {
		return surveyNum;
	}

	public void setSurveyNum(int surveyNum) {
		this.surveyNum = surveyNum;
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
	
	public String getQuestionType() {
		return questionType;
	}

	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getExample() {
		return example;
	}

	public void setExample(String example) {
		this.example = example;
	}
	
	public int getMaxSelection() { 
		return this.maxSelection;
	}
	
	public void setMaxSelection(int maxSelection){
		this.maxSelection = maxSelection;
	}	
}
