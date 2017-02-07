package com.ex.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import com.ex.util.JsonDateSerializer;

@Entity
@Table(name = "student")
public class Student {
	private long id;
	private String name;
	private String subject;
	
	private Date startday;
	private Date endday;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 50)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "subject", length = 50, nullable = false)
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "start")
	@JsonSerialize(using = JsonDateSerializer.class )
	public Date getStartday() {
		return startday;
	}
	@JsonSerialize(using=JsonDateSerializer.class)
	public void setStartday(Date startday) {
		this.startday = startday;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "end")
	@JsonSerialize(using = JsonDateSerializer.class )
	public Date getEndday() {
		return endday;
	}
	@JsonSerialize(using=JsonDateSerializer.class)
	public void setEndday(Date endday) {
		this.endday = endday;
	}

	public Student(long id, String name, String subject, Date startday, Date endday) {
		super();
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.startday = startday;
		this.endday = endday;
	}

	public Student() {
		super();
	}

}
