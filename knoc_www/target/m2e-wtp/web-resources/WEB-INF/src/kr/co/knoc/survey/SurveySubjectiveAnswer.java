package kr.co.knoc.survey;

public class SurveySubjectiveAnswer {
	private int surveyNum;					/* ���� ��ȣ */
	private int questionNum;				/* ���� ��ȣ */
	private int entryNum;					/* ������ �Ϸù�ȣ */
	private String answer;					/* �ְ��� �亯 */
	
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
	public int getEntryNum() {
		return entryNum;
	}
	public void setEntryNum(int entryNum) {
		this.entryNum = entryNum;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
}
