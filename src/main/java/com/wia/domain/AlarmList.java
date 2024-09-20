package com.wia.domain;

public class AlarmList {
    private String acTag;
    private String acComment;
    private String acFilename; 
    private String acRegtime; 

    // Getters and Setters
    public String getAcTag() {
        return acTag;
    }

    public void setAcTag(String acTag) {
        this.acTag = acTag;
    }

    public String getAcComment() {
        return acComment;
    }

    public void setAcComment(String acComment) {
        this.acComment = acComment;
    }

    public String getAcFilename() {
        return acFilename;
    }

    public void setAcFilename(String acFilename) {
        this.acFilename = acFilename;
    }

    public String getAcRegtime() { 
        return acRegtime;
    }

    public void setAcRegtime(String acRegtime) { 
        this.acRegtime = acRegtime;
    }
}
