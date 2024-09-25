package com.wia.domain;

import org.springframework.web.multipart.MultipartFile;

public class Alarm {
	
	//tb_alarm_info 테이블
	private int ai_idx;
	private String ai_webdir;	//오토닉스 그룹태그명
	private String ai_webclass;	//웹 클래스명
	private String ai_plcaddr;
	private String ai_plcname;
	
	//알람 팝업 데이터 tb_alarm_cmt 테이블
	private String ac_regtime;
	private String ac_webdir;
	private String ac_webclass;
	private String ac_comment;
	private String ac_filename;
	private String ac_pdf_filename;
	private int ac_count;
	private String ac_yn;
	
	//파일유무 구분
	private int fileGb;
	
	//코멘트 저장, 수정 구분
	private String dbSaveGb;
	
	private MultipartFile fileInput;
	private MultipartFile pdfInput;
	
	public int getAi_idx() {
		return ai_idx;
	}
	public void setAi_idx(int ai_idx) {
		this.ai_idx = ai_idx;
	}
	public String getAi_webdir() {
		return ai_webdir;
	}
	public void setAi_webdir(String ai_webdir) {
		this.ai_webdir = ai_webdir;
	}
	public String getAi_webclass() {
		return ai_webclass;
	}
	public void setAi_webclass(String ai_webclass) {
		this.ai_webclass = ai_webclass;
	}
	public String getAi_plcaddr() {
		return ai_plcaddr;
	}
	public void setAi_plcaddr(String ai_plcaddr) {
		this.ai_plcaddr = ai_plcaddr;
	}
	public String getAi_plcname() {
		return ai_plcname;
	}
	public void setAi_plcname(String ai_plcname) {
		this.ai_plcname = ai_plcname;
	}
	
	
	public String getAc_regtime() {
		return ac_regtime;
	}
	public void setAc_regtime(String ac_regtime) {
		this.ac_regtime = ac_regtime;
	}
	public String getAc_webdir() {
		return ac_webdir;
	}
	public void setAc_webdir(String ac_webdir) {
		this.ac_webdir = ac_webdir;
	}
	public String getAc_webclass() {
		return ac_webclass;
	}
	public void setAc_webclass(String ac_webclass) {
		this.ac_webclass = ac_webclass;
	}
	public String getAc_comment() {
		return ac_comment;
	}
	public void setAc_comment(String ac_comment) {
		this.ac_comment = ac_comment;
	}
	public String getAc_filename() {
		return ac_filename;
	}
	public void setAc_filename(String ac_filename) {
		this.ac_filename = ac_filename;
	}
	public String getAc_pdf_filename() {
		return ac_pdf_filename;
	}
	public void setAc_pdf_filename(String ac_pdf_filename) {
		this.ac_pdf_filename = ac_pdf_filename;
	}
	public String getAc_yn() {
		return ac_yn;
	}
	public void setAc_yn(String ac_yn) {
		this.ac_yn = ac_yn;
	}
	public int getFileGb() {
		return fileGb;
	}
	public void setFileGb(int fileGb) {
		this.fileGb = fileGb;
	}
	public MultipartFile getFileInput() {
		return fileInput;
	}
	public void setFileInput(MultipartFile fileInput) {
		this.fileInput = fileInput;
	}
	public MultipartFile getPdfInput() {
		return pdfInput;
	}
	public void setPdfInput(MultipartFile pdfInput) {
		this.pdfInput = pdfInput;
	}
	public String getDbSaveGb() {
		return dbSaveGb;
	}
	public void setDbSaveGb(String dbSaveGb) {
		this.dbSaveGb = dbSaveGb;
	}
	public int getAc_count() {
		return ac_count;
	}
	public void setAc_count(int ac_count) {
		this.ac_count = ac_count;
	}
	
}
