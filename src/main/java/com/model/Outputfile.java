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

import antlr.collections.List;




@Entity
public class Outputfile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(columnDefinition = "TEXT")
	private String OutputFile;
	@Transient
	private CommonsMultipartFile outputfiles;
	
	@ManyToOne
    @JoinColumn(name = "subtopic_name_id", referencedColumnName = "subtopic_name_id")
	private SubTopic sub_topic;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOutputFile() {
		return OutputFile;
	}

	public void setOutputFile(String outputFile) {
		OutputFile = outputFile;
	}

	public CommonsMultipartFile getOutputfile() {
		return outputfiles;
	}

	public void setOutputfile(CommonsMultipartFile outputfiles) {
		this.outputfiles = outputfiles;
	}

	public SubTopic getSub_topic() {
		return sub_topic;
	}

	public void setSub_topic(SubTopic sub_topic) {
		this.sub_topic = sub_topic;
	}
	
	
	
}
