package org.cd2h.STRAPITagLib.pressReleases;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.util.Date;
import java.sql.Timestamp;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;


import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PressReleases extends STRAPITagLibTagSupport {

	static PressReleases currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PressReleases.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String title = null;
	String description = null;
	Date date = null;
	String url = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private PressReleases cachedPressReleases = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			PressReleasesIterator thePressReleasesIterator = (PressReleasesIterator)findAncestorWithClass(this, PressReleasesIterator.class);

			if (thePressReleasesIterator != null) {
				ID = thePressReleasesIterator.getID();
			}

			if (thePressReleasesIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PressReleases and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PressReleases from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select title,description,date,url,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.press_releases where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (title == null)
						title = rs.getString(1);
					if (description == null)
						description = rs.getString(2);
					if (date == null)
						date = rs.getDate(3);
					if (url == null)
						url = rs.getString(4);
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
			PressReleases currentPressReleases = (PressReleases) pageContext.getAttribute("tag_pressReleases");
			if(currentPressReleases != null){
				cachedPressReleases = currentPressReleases;
			}
			currentPressReleases = this;
			pageContext.setAttribute((var == null ? "tag_pressReleases" : var), currentPressReleases);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPressReleases != null){
				pageContext.setAttribute((var == null ? "tag_pressReleases" : var), this.cachedPressReleases);
			}else{
				pageContext.removeAttribute((var == null ? "tag_pressReleases" : var));
				this.cachedPressReleases = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.press_releases set title = ?, description = ?, date = ?, url = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, title );
				stmt.setString( 2, description );
				stmt.setDate( 3, date == null ? null : new java.sql.Date( date.getTime() ) );
				stmt.setString( 4, url );
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
			log.debug("generating new PressReleases " + ID);
		}

		if (title == null){
			title = "";
		}
		if (description == null){
			description = "";
		}
		if (url == null){
			url = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.press_releases(title,description,date,url,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,title);
		stmt.setString(2,description);
		stmt.setDate(3,date == null ? null : new java.sql.Date(date.getTime()));
		stmt.setString(4,url);
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

		log.debug("generating new PressReleases " + ID);

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

	public String getTitle () {
		if (commitNeeded)
			return "";
		else
			return title;
	}

	public void setTitle (String title) {
		this.title = title;
		commitNeeded = true;
	}

	public String getActualTitle () {
		return title;
	}

	public String getDescription () {
		if (commitNeeded)
			return "";
		else
			return description;
	}

	public void setDescription (String description) {
		this.description = description;
		commitNeeded = true;
	}

	public String getActualDescription () {
		return description;
	}

	public Date getDate () {
		return date;
	}

	public void setDate (Date date) {
		this.date = date;
		commitNeeded = true;
	}

	public Date getActualDate () {
		return date;
	}

	public void setDateToNow ( ) {
		this.date = new java.util.Date();
		commitNeeded = true;
	}

	public String getUrl () {
		if (commitNeeded)
			return "";
		else
			return url;
	}

	public void setUrl (String url) {
		this.url = url;
		commitNeeded = true;
	}

	public String getActualUrl () {
		return url;
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

	public static String titleValue() throws JspException {
		try {
			return currentInstance.getTitle();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function titleValue()");
		}
	}

	public static String descriptionValue() throws JspException {
		try {
			return currentInstance.getDescription();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function descriptionValue()");
		}
	}

	public static Date dateValue() throws JspException {
		try {
			return currentInstance.getDate();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function dateValue()");
		}
	}

	public static String urlValue() throws JspException {
		try {
			return currentInstance.getUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function urlValue()");
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
		title = null;
		description = null;
		date = null;
		url = null;
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
