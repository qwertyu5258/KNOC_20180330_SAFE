package kr.co.knoc.survey;

public class SurveyObjectiveAnswer {
	private int surveyNum;				/* ���� ��ȣ */
	private int questionNum;			/* ���� ��ȣ */
	private int exampleNum;				/* ���� ��ȣ */
	private int entryNum;				/* ������ �Ϸù�ȣ */
	
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
	public int getExampleNum() {
		return exampleNum;
	}
	public void setExampleNum(int exampleNum) {
		this.exampleNum = exampleNum;
	}
	public int getEntryNum() {
		return entryNum;
	}
	public void setEntryNum(int entryNum) {
		this.entryNum = entryNum;
	}
}
