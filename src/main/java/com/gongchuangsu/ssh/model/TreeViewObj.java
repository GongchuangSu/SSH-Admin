package com.gongchuangsu.ssh.model;

import java.io.Serializable;
import java.util.ArrayList;

public class TreeViewObj implements Serializable{
	private static final long serialVersionUID = 1L;

	private String text;
	
	private ArrayList<TreeViewObj> nodes;
	
	public TreeViewObj(String text, ArrayList<TreeViewObj> nodes){
		this.text = text;
		this.nodes = nodes;
	}
	
	public TreeViewObj(String text){
		this.text = text;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public ArrayList<TreeViewObj> getNodes() {
		return nodes;
	}

	public void setNodes(ArrayList<TreeViewObj> nodes) {
		this.nodes = nodes;
	}
}
