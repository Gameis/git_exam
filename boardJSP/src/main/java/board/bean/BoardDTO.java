package board.bean;

import lombok.Data;

@Data
public class BoardDTO {
	
	private int seq;
	private String id;
	private String name;
	private String email;
	private String subject;
	private String content;
	
	private int ref;
	private int lev;
	private int step;
	private int pseq;
	private int reply;
	
	private int hit;
	private String logtime;
	
	public int getSeq() {
		return seq;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getSubject() {
		return subject;
	}
	public String getContent() {
		return content;
	}
	public int getRef() {
		return ref;
	}
	public int getLev() {
		return lev;
	}
	public int getStep() {
		return step;
	}
	public int getPseq() {
		return pseq;
	}
	public int getReply() {
		return reply;
	}
	public int getHit() {
		return hit;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
}
