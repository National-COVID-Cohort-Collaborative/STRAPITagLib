package org.cd2h.STRAPITagLib.landingPages;

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
public class LandingPages extends STRAPITagLibTagSupport {

	static LandingPages currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(LandingPages.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String welcome = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String introduction = null;
	String researchers = null;

	private String var = null;

	private LandingPages cachedLandingPages = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			LandingPagesIterator theLandingPagesIterator = (LandingPagesIterator)findAncestorWithClass(this, LandingPagesIterator.class);

			if (theLandingPagesIterator != null) {
				ID = theLandingPagesIterator.getID();
			}

			if (theLandingPagesIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new LandingPages and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a LandingPages from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select welcome,created_at,updated_at,published_at,created_by_id,updated_by_id,introduction,researchers from strapi.landing_pages where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (welcome == null)
						welcome = rs.getString(1);
					if (createdAt == null)
						createdAt = rs.getTimestamp(2);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(3);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(4);
					if (createdById == 0)
						createdById = rs.getInt(5);
					if (updatedById == 0)
						updatedById = rs.getInt(6);
					if (introduction == null)
						introduction = rs.getString(7);
					if (researchers == null)
						researchers = rs.getString(8);
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
			LandingPages currentLandingPages = (LandingPages) pageContext.getAttribute("tag_landingPages");
			if(currentLandingPages != null){
				cachedLandingPages = currentLandingPages;
			}
			currentLandingPages = this;
			pageContext.setAttribute((var == null ? "tag_landingPages" : var), currentLandingPages);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedLandingPages != null){
				pageContext.setAttribute((var == null ? "tag_landingPages" : var), this.cachedLandingPages);
			}else{
				pageContext.removeAttribute((var == null ? "tag_landingPages" : var));
				this.cachedLandingPages = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.landing_pages set welcome = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, introduction = ?, researchers = ? where id = ? ");
				stmt.setString( 1, welcome );
				stmt.setTimestamp( 2, createdAt );
				stmt.setTimestamp( 3, updatedAt );
				stmt.setTimestamp( 4, publishedAt );
				stmt.setInt( 5, createdById );
				stmt.setInt( 6, updatedById );
				stmt.setString( 7, introduction );
				stmt.setString( 8, researchers );
				stmt.setInt(9,ID);
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
			log.debug("generating new LandingPages " + ID);
		}

		if (welcome == null){
			welcome = "";
		}
		if (introduction == null){
			introduction = "";
		}
		if (researchers == null){
			researchers = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.landing_pages(welcome,created_at,updated_at,published_at,created_by_id,updated_by_id,introduction,researchers) values (?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,welcome);
		stmt.setTimestamp(2,createdAt);
		stmt.setTimestamp(3,updatedAt);
		stmt.setTimestamp(4,publishedAt);
		stmt.setInt(5,createdById);
		stmt.setInt(6,updatedById);
		stmt.setString(7,introduction);
		stmt.setString(8,researchers);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new LandingPages " + ID);

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

	public String getWelcome () {
		if (commitNeeded)
			return "";
		else
			return welcome;
	}

	public void setWelcome (String welcome) {
		this.welcome = welcome;
		commitNeeded = true;
	}

	public String getActualWelcome () {
		return welcome;
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

	public String getIntroduction () {
		if (commitNeeded)
			return "";
		else
			return introduction;
	}

	public void setIntroduction (String introduction) {
		this.introduction = introduction;
		commitNeeded = true;
	}

	public String getActualIntroduction () {
		return introduction;
	}

	public String getResearchers () {
		if (commitNeeded)
			return "";
		else
			return researchers;
	}

	public void setResearchers (String researchers) {
		this.researchers = researchers;
		commitNeeded = true;
	}

	public String getActualResearchers () {
		return researchers;
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

	public static String welcomeValue() throws JspException {
		try {
			return currentInstance.getWelcome();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function welcomeValue()");
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

	public static String introductionValue() throws JspException {
		try {
			return currentInstance.getIntroduction();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function introductionValue()");
		}
	}

	public static String researchersValue() throws JspException {
		try {
			return currentInstance.getResearchers();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function researchersValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		welcome = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		introduction = null;
		researchers = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
