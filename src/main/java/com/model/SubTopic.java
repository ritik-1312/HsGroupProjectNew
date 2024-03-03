package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class SubTopic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "subtopic_name_id")
	private long id;
	private String subtopic_name;
	private String intro;
	
	@ManyToOne
    @JoinColumn(name = "topic_name_id", referencedColumnName = "topic_name_id")
	private SidebarTopic sidebar_topic;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "subtopic_name_id")	   
	private List<CodeFile> codefile;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "subtopic_name_id")	   
	private List<Outputfile> outputfile;
	
	@Transient
	private List<String> file_content;   //to save read file content 

	@Transient 
	private List<String> image_file;		// to save image name 
	 
	@Transient 
	private List<String> file_name;		// to save File name

	
	
	public List<String> getFile_name() {
		return file_name;
	}

	public void setFile_name(List<String> file_name) {
		this.file_name = file_name;
	}

	public List<String> getImage_file() {
		return image_file;
	}

	public void setImage_file(List<String> image_file) {
		this.image_file = image_file;
	}

	public long getId() {
		return id;
	}

	public List<String> getFile_content() {
		return file_content;
	}

	public void setFile_content(List<String> file_content) {
		this.file_content = file_content;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSubtopic_name() {
		return subtopic_name;
	}

	public void setSubtopic_name(String subtopic_name) {
		this.subtopic_name = subtopic_name;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public SidebarTopic getSidebar_topic() {
		return sidebar_topic;
	}

	public void setSidebar_topic(SidebarTopic sidebar_topic) {
		this.sidebar_topic = sidebar_topic;
	}

	public List<CodeFile> getCodefile() {
		return codefile;
	}

	public void setCodefile(List<CodeFile> codefile) {
		this.codefile = codefile;
	}

	public List<Outputfile> getOutputfile() {
		return outputfile;
	}

	public void setOutputfile(List<Outputfile> outputfile) {
		this.outputfile = outputfile;
	}
	
	
}