package com.test.memo;

import lombok.Data;

@Data
public class MemoDTO {
	// DTO 멤버변수 = 데이터베이스 
	// 1. Table column name
	// 2. input name
	// 3. DTO member name
	
	private String seq;
	private String name;
	private String pw;
	private String memo;
	private String regdate;
	
	

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	
	

}

