package com.blogweb.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseLessonsType<M extends BaseLessonsType<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setTypeDes(java.lang.String typeDes) {
		set("type_des", typeDes);
	}

	public java.lang.String getTypeDes() {
		return get("type_des");
	}

	public void setState(java.lang.String state) {
		set("state", state);
	}

	public java.lang.String getState() {
		return get("state");
	}

	public void setNotes(java.lang.String notes) {
		set("notes", notes);
	}

	public java.lang.String getNotes() {
		return get("notes");
	}

}
