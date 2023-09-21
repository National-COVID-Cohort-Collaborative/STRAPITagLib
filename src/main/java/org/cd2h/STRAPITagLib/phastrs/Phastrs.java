package org.cd2h.STRAPITagLib.phastrs;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.sql.Timestamp;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;


import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class Phastrs extends STRAPITagLibTagSupport {

	static Phastrs currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Phastrs.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String about = null;
	String eligibility = null;
	String submission = null;
	String quickStart = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Phastrs cachedPhastrs = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			PhastrsIterator thePhastrsIterator = (PhastrsIterator)findAncestorWithClass(this, PhastrsIterator.class);

			if (thePhastrsIterator != null) {
				ID = thePhastrsIterator.getID();
			}

			if (thePhastrsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Phastrs and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Phastrs from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select about,eligibility,submission,quick_start,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.phastrs where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (about == null)
						about = rs.getString(1);
					if (eligibility == null)
						eligibility = rs.getString(2);
					if (submission == null)
						submission = rs.getString(3);
					if (quickStart == null)
						quickStart = rs.getString(4);
					if (createdAt == null)
						createdAt = rs.getTimestamp(5);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(6);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(7);
					if (createdById == 0)
						createdById = rs.getInt(8);
					if (updatedById == 0)
						updatedById = rs.getInt(9);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			}
		} catch (SQLException e) {
			log.error("JDBC error retrieving ID " + ID, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error retrieving ID " + ID,e);
			}

		} finally {
			freeConnection();
		}

		if(pageContext != null){
			Phastrs currentPhastrs = (Phastrs) pageContext.getAttribute("tag_phastrs");
			if(currentPhastrs != null){
				cachedPhastrs = currentPhastrs;
			}
			currentPhastrs = this;
			pageContext.setAttribute((var == null ? "tag_phastrs" : var), currentPhastrs);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPhastrs != null){
				pageContext.setAttribute((var == null ? "tag_phastrs" : var), this.cachedPhastrs);
			}else{
				pageContext.removeAttribute((var == null ? "tag_phastrs" : var));
				this.cachedPhastrs = null;
			}
		}

		try {
			Boolean error = null; // (Boolean) pageContext.getAttribute("tagError");
			if(pageContext != null){
				error = (Boolean) pageContext.getAttribute("tagError");
			}

			if(error != null && error){

				freeConnection();
				clearServiceState();

				Exception e = (Exception) pageContext.getAttribute("tagErrorException");
				String message = (String) pageContext.getAttribute("tagErrorMessage");

				Tag parent = getParent();
				if(parent != null){
					return parent.doEndTag();
				}else if(e != null && message != null){
					throw new JspException(message,e);
				}else if(parent == null){
					pageContext.removeAttribute("tagError");
					pageContext.removeAttribute("tagErrorException");
					pageContext.removeAttribute("tagErrorMessage");
				}
			}
			if (commitNeeded) {
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.phastrs set about = ?, eligibility = ?, submission = ?, quick_start = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, about );
				stmt.setString( 2, eligibility );
				stmt.setString( 3, submission );
				stmt.setString( 4, quickStart );
				stmt.setTimestamp( 5, createdAt );
				stmt.setTimestamp( 6, updatedAt );
				stmt.setTimestamp( 7, publishedAt );
				stmt.setInt( 8, createdById );
				stmt.setInt( 9, updatedById );
				stmt.setInt(10,ID);
				stmt.executeUpdate();
				stmt.close();
			}
		} catch (SQLException e) {
			log.error("Error: IOException while writing to the user", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: IOException while writing to the user");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: IOException while writing to the user");
			}

		} finally {
			clearServiceState();
			freeConnection();
		}
		return super.doEndTag();
	}

	public void insertEntity() throws JspException, SQLException {
		if (ID == 0) {
			ID = Sequence.generateID();
			log.debug("generating new Phastrs " + ID);
		}

		if (about == null){
			about = "";
		}
		if (eligibility == null){
			eligibility = "";
		}
		if (submission == null){
			submission = "";
		}
		if (quickStart == null){
			quickStart = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.phastrs(about,eligibility,submission,quick_start,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,about);
		stmt.setString(2,eligibility);
		stmt.setString(3,submission);
		stmt.setString(4,quickStart);
		stmt.setTimestamp(5,createdAt);
		stmt.setTimestamp(6,updatedAt);
		stmt.setTimestamp(7,publishedAt);
		stmt.setInt(8,createdById);
		stmt.setInt(9,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new Phastrs " + ID);

		freeConnection();
	}

	public int getID () {
		return ID;
	}

	public void setID (int ID) {
		this.ID = ID;
	}

	public int getActualID () {
		return ID;
	}

	public String getAbout () {
		if (commitNeeded)
			return "";
		else
			return about;
	}

	public void setAbout (String about) {
		this.about = about;
		commitNeeded = true;
	}

	public String getActualAbout () {
		return about;
	}

	public String getEligibility () {
		if (commitNeeded)
			return "";
		else
			return eligibility;
	}

	public void setEligibility (String eligibility) {
		this.eligibility = eligibility;
		commitNeeded = true;
	}

	public String getActualEligibility () {
		return eligibility;
	}

	public String getSubmission () {
		if (commitNeeded)
			return "";
		else
			return submission;
	}

	public void setSubmission (String submission) {
		this.submission = submission;
		commitNeeded = true;
	}

	public String getActualSubmission () {
		return submission;
	}

	public String getQuickStart () {
		if (commitNeeded)
			return "";
		else
			return quickStart;
	}

	public void setQuickStart (String quickStart) {
		this.quickStart = quickStart;
		commitNeeded = true;
	}

	public String getActualQuickStart () {
		return quickStart;
	}

	public Timestamp getCreatedAt () {
		return createdAt;
	}

	public void setCreatedAt (Timestamp createdAt) {
		this.createdAt = createdAt;
		commitNeeded = true;
	}

	public Timestamp getActualCreatedAt () {
		return createdAt;
	}

	public void setCreatedAtToNow ( ) {
		this.createdAt = new java.sql.Timestamp(new java.util.Date().getTime());
		commitNeeded = true;
	}

	public Timestamp getUpdatedAt () {
		return updatedAt;
	}

	public void setUpdatedAt (Timestamp updatedAt) {
		this.updatedAt = updatedAt;
		commitNeeded = true;
	}

	public Timestamp getActualUpdatedAt () {
		return updatedAt;
	}

	public void setUpdatedAtToNow ( ) {
		this.updatedAt = new java.sql.Timestamp(new java.util.Date().getTime());
		commitNeeded = true;
	}

	public Timestamp getPublishedAt () {
		return publishedAt;
	}

	public void setPublishedAt (Timestamp publishedAt) {
		this.publishedAt = publishedAt;
		commitNeeded = true;
	}

	public Timestamp getActualPublishedAt () {
		return publishedAt;
	}

	public void setPublishedAtToNow ( ) {
		this.publishedAt = new java.sql.Timestamp(new java.util.Date().getTime());
		commitNeeded = true;
	}

	public int getCreatedById () {
		return createdById;
	}

	public void setCreatedById (int createdById) {
		this.createdById = createdById;
		commitNeeded = true;
	}

	public int getActualCreatedById () {
		return createdById;
	}

	public int getUpdatedById () {
		return updatedById;
	}

	public void setUpdatedById (int updatedById) {
		this.updatedById = updatedById;
		commitNeeded = true;
	}

	public int getActualUpdatedById () {
		return updatedById;
	}

	public String getVar () {
		return var;
	}

	public void setVar (String var) {
		this.var = var;
	}

	public String getActualVar () {
		return var;
	}

	public static Integer IDValue() throws JspException {
		try {
			return currentInstance.getID();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function IDValue()");
		}
	}

	public static String aboutValue() throws JspException {
		try {
			return currentInstance.getAbout();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function aboutValue()");
		}
	}

	public static String eligibilityValue() throws JspException {
		try {
			return currentInstance.getEligibility();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function eligibilityValue()");
		}
	}

	public static String submissionValue() throws JspException {
		try {
			return currentInstance.getSubmission();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submissionValue()");
		}
	}

	public static String quickStartValue() throws JspException {
		try {
			return currentInstance.getQuickStart();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function quickStartValue()");
		}
	}

	public static Timestamp createdAtValue() throws JspException {
		try {
			return currentInstance.getCreatedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function createdAtValue()");
		}
	}

	public static Timestamp updatedAtValue() throws JspException {
		try {
			return currentInstance.getUpdatedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function updatedAtValue()");
		}
	}

	public static Timestamp publishedAtValue() throws JspException {
		try {
			return currentInstance.getPublishedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function publishedAtValue()");
		}
	}

	public static Integer createdByIdValue() throws JspException {
		try {
			return currentInstance.getCreatedById();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function createdByIdValue()");
		}
	}

	public static Integer updatedByIdValue() throws JspException {
		try {
			return currentInstance.getUpdatedById();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function updatedByIdValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		about = null;
		eligibility = null;
		submission = null;
		quickStart = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
