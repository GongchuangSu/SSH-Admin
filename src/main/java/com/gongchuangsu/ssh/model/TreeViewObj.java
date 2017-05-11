package com.gongchuangsu.ssh.model;

import java.io.Serializable;
import java.util.ArrayList;

public class TreeViewObj implements Serializable{
	private static final long serialVersionUID = 1L;

	private String text;
	
	private String selfId;
	
	private String parentId;
	
	private ArrayList<TreeViewObj> nodes;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getSelfId() {
		return selfId;
	}

	public void setSelfId(String selfId) {
		this.selfId = selfId;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public ArrayList<TreeViewObj> getNodes() {
		return nodes;
	}

	public void setNodes(ArrayList<TreeViewObj> nodes) {
		this.nodes = nodes;
	}
}
