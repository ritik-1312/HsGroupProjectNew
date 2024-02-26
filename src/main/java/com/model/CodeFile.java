package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
public class CodeFile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(columnDefinition = "TEXT")
	private String UploadFile;
	@Transient
	private CommonsMultipartFile uploadfiles;
	
	@ManyToOne
    @JoinColumn(name = "subtopic_name_id", referencedColumnName = "subtopic_name_id")
	private SubTopic sub_topic;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUploadFile() {
		return UploadFile;
	}

	public void setUploadFile(String uploadFile) {
		UploadFile = uploadFile;
	}

	public CommonsMultipartFile getUploadfiles() {
		return uploadfiles;
	}

	public void setUploadfiles(CommonsMultipartFile uploadfiles) {
		this.uploadfiles = uploadfiles;
	}

	public SubTopic getSub_topic() {
		return sub_topic;
	}

	public void setSub_topic(SubTopic sub_topic) {
		this.sub_topic = sub_topic;
	}
	
}
