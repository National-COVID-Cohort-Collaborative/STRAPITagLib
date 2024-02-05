package org.cd2h.STRAPITagLib.footers;

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
public class Footers extends STRAPITagLibTagSupport {

	static Footers currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Footers.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String grantCite = null;
	String credits = null;
	String signup = null;
	String social = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Footers cachedFooters = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			FootersIterator theFootersIterator = (FootersIterator)findAncestorWithClass(this, FootersIterator.class);

			if (theFootersIterator != null) {
				ID = theFootersIterator.getID();
			}

			if (theFootersIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Footers and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Footers from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select grant_cite,credits,signup,social,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.footers where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (grantCite == null)
						grantCite = rs.getString(1);
					if (credits == null)
						credits = rs.getString(2);
					if (signup == null)
						signup = rs.getString(3);
					if (social == null)
						social = rs.getString(4);
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
			Footers currentFooters = (Footers) pageContext.getAttribute("tag_footers");
			if(currentFooters != null){
				cachedFooters = currentFooters;
			}
			currentFooters = this;
			pageContext.setAttribute((var == null ? "tag_footers" : var), currentFooters);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFooters != null){
				pageContext.setAttribute((var == null ? "tag_footers" : var), this.cachedFooters);
			}else{
				pageContext.removeAttribute((var == null ? "tag_footers" : var));
				this.cachedFooters = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.footers set grant_cite = ?, credits = ?, signup = ?, social = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, grantCite );
				stmt.setString( 2, credits );
				stmt.setString( 3, signup );
				stmt.setString( 4, social );
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
			log.debug("generating new Footers " + ID);
		}

		if (grantCite == null){
			grantCite = "";
		}
		if (credits == null){
			credits = "";
		}
		if (signup == null){
			signup = "";
		}
		if (social == null){
			social = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.footers(grant_cite,credits,signup,social,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,grantCite);
		stmt.setString(2,credits);
		stmt.setString(3,signup);
		stmt.setString(4,social);
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

		stmt.close();

		log.debug("generating new Footers " + ID);

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

	public String getGrantCite () {
		if (commitNeeded)
			return "";
		else
			return grantCite;
	}

	public void setGrantCite (String grantCite) {
		this.grantCite = grantCite;
		commitNeeded = true;
	}

	public String getActualGrantCite () {
		return grantCite;
	}

	public String getCredits () {
		if (commitNeeded)
			return "";
		else
			return credits;
	}

	public void setCredits (String credits) {
		this.credits = credits;
		commitNeeded = true;
	}

	public String getActualCredits () {
		return credits;
	}

	public String getSignup () {
		if (commitNeeded)
			return "";
		else
			return signup;
	}

	public void setSignup (String signup) {
		this.signup = signup;
		commitNeeded = true;
	}

	public String getActualSignup () {
		return signup;
	}

	public String getSocial () {
		if (commitNeeded)
			return "";
		else
			return social;
	}

	public void setSocial (String social) {
		this.social = social;
		commitNeeded = true;
	}

	public String getActualSocial () {
		return social;
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

	public static String grantCiteValue() throws JspException {
		try {
			return currentInstance.getGrantCite();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function grantCiteValue()");
		}
	}

	public static String creditsValue() throws JspException {
		try {
			return currentInstance.getCredits();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function creditsValue()");
		}
	}

	public static String signupValue() throws JspException {
		try {
			return currentInstance.getSignup();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function signupValue()");
		}
	}

	public static String socialValue() throws JspException {
		try {
			return currentInstance.getSocial();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function socialValue()");
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
		grantCite = null;
		credits = null;
		signup = null;
		social = null;
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
