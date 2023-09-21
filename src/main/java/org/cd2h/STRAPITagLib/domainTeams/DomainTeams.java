package org.cd2h.STRAPITagLib.domainTeams;

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
public class DomainTeams extends STRAPITagLibTagSupport {

	static DomainTeams currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(DomainTeams.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String name = null;
	String description = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String summary = null;
	String supplementalInformation = null;
	String googleDriveUrl = null;
	String googleDriveLinkText = null;
	String googleGroupEmail = null;
	String joinUrl = null;
	String joinLinkText = null;
	String slackUrl = null;
	String slackLinkText = null;
	boolean crossCutting = false;

	private String var = null;

	private DomainTeams cachedDomainTeams = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			DomainTeamsIterator theDomainTeamsIterator = (DomainTeamsIterator)findAncestorWithClass(this, DomainTeamsIterator.class);

			if (theDomainTeamsIterator != null) {
				ID = theDomainTeamsIterator.getID();
			}

			if (theDomainTeamsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new DomainTeams and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a DomainTeams from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select name,description,created_at,updated_at,published_at,created_by_id,updated_by_id,summary,supplemental_information,google_drive_url,google_drive_link_text,google_group_email,join_url,join_link_text,slack_url,slack_link_text,cross_cutting from strapi.domain_teams where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (name == null)
						name = rs.getString(1);
					if (description == null)
						description = rs.getString(2);
					if (createdAt == null)
						createdAt = rs.getTimestamp(3);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(4);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(5);
					if (createdById == 0)
						createdById = rs.getInt(6);
					if (updatedById == 0)
						updatedById = rs.getInt(7);
					if (summary == null)
						summary = rs.getString(8);
					if (supplementalInformation == null)
						supplementalInformation = rs.getString(9);
					if (googleDriveUrl == null)
						googleDriveUrl = rs.getString(10);
					if (googleDriveLinkText == null)
						googleDriveLinkText = rs.getString(11);
					if (googleGroupEmail == null)
						googleGroupEmail = rs.getString(12);
					if (joinUrl == null)
						joinUrl = rs.getString(13);
					if (joinLinkText == null)
						joinLinkText = rs.getString(14);
					if (slackUrl == null)
						slackUrl = rs.getString(15);
					if (slackLinkText == null)
						slackLinkText = rs.getString(16);
					if (crossCutting == false)
						crossCutting = rs.getBoolean(17);
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
			DomainTeams currentDomainTeams = (DomainTeams) pageContext.getAttribute("tag_domainTeams");
			if(currentDomainTeams != null){
				cachedDomainTeams = currentDomainTeams;
			}
			currentDomainTeams = this;
			pageContext.setAttribute((var == null ? "tag_domainTeams" : var), currentDomainTeams);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedDomainTeams != null){
				pageContext.setAttribute((var == null ? "tag_domainTeams" : var), this.cachedDomainTeams);
			}else{
				pageContext.removeAttribute((var == null ? "tag_domainTeams" : var));
				this.cachedDomainTeams = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.domain_teams set name = ?, description = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, summary = ?, supplemental_information = ?, google_drive_url = ?, google_drive_link_text = ?, google_group_email = ?, join_url = ?, join_link_text = ?, slack_url = ?, slack_link_text = ?, cross_cutting = ? where id = ? ");
				stmt.setString( 1, name );
				stmt.setString( 2, description );
				stmt.setTimestamp( 3, createdAt );
				stmt.setTimestamp( 4, updatedAt );
				stmt.setTimestamp( 5, publishedAt );
				stmt.setInt( 6, createdById );
				stmt.setInt( 7, updatedById );
				stmt.setString( 8, summary );
				stmt.setString( 9, supplementalInformation );
				stmt.setString( 10, googleDriveUrl );
				stmt.setString( 11, googleDriveLinkText );
				stmt.setString( 12, googleGroupEmail );
				stmt.setString( 13, joinUrl );
				stmt.setString( 14, joinLinkText );
				stmt.setString( 15, slackUrl );
				stmt.setString( 16, slackLinkText );
				stmt.setBoolean( 17, crossCutting );
				stmt.setInt(18,ID);
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
			log.debug("generating new DomainTeams " + ID);
		}

		if (name == null){
			name = "";
		}
		if (description == null){
			description = "";
		}
		if (summary == null){
			summary = "";
		}
		if (supplementalInformation == null){
			supplementalInformation = "";
		}
		if (googleDriveUrl == null){
			googleDriveUrl = "";
		}
		if (googleDriveLinkText == null){
			googleDriveLinkText = "";
		}
		if (googleGroupEmail == null){
			googleGroupEmail = "";
		}
		if (joinUrl == null){
			joinUrl = "";
		}
		if (joinLinkText == null){
			joinLinkText = "";
		}
		if (slackUrl == null){
			slackUrl = "";
		}
		if (slackLinkText == null){
			slackLinkText = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.domain_teams(name,description,created_at,updated_at,published_at,created_by_id,updated_by_id,summary,supplemental_information,google_drive_url,google_drive_link_text,google_group_email,join_url,join_link_text,slack_url,slack_link_text,cross_cutting) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,name);
		stmt.setString(2,description);
		stmt.setTimestamp(3,createdAt);
		stmt.setTimestamp(4,updatedAt);
		stmt.setTimestamp(5,publishedAt);
		stmt.setInt(6,createdById);
		stmt.setInt(7,updatedById);
		stmt.setString(8,summary);
		stmt.setString(9,supplementalInformation);
		stmt.setString(10,googleDriveUrl);
		stmt.setString(11,googleDriveLinkText);
		stmt.setString(12,googleGroupEmail);
		stmt.setString(13,joinUrl);
		stmt.setString(14,joinLinkText);
		stmt.setString(15,slackUrl);
		stmt.setString(16,slackLinkText);
		stmt.setBoolean(17,crossCutting);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new DomainTeams " + ID);

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

	public String getName () {
		if (commitNeeded)
			return "";
		else
			return name;
	}

	public void setName (String name) {
		this.name = name;
		commitNeeded = true;
	}

	public String getActualName () {
		return name;
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

	public String getSummary () {
		if (commitNeeded)
			return "";
		else
			return summary;
	}

	public void setSummary (String summary) {
		this.summary = summary;
		commitNeeded = true;
	}

	public String getActualSummary () {
		return summary;
	}

	public String getSupplementalInformation () {
		if (commitNeeded)
			return "";
		else
			return supplementalInformation;
	}

	public void setSupplementalInformation (String supplementalInformation) {
		this.supplementalInformation = supplementalInformation;
		commitNeeded = true;
	}

	public String getActualSupplementalInformation () {
		return supplementalInformation;
	}

	public String getGoogleDriveUrl () {
		if (commitNeeded)
			return "";
		else
			return googleDriveUrl;
	}

	public void setGoogleDriveUrl (String googleDriveUrl) {
		this.googleDriveUrl = googleDriveUrl;
		commitNeeded = true;
	}

	public String getActualGoogleDriveUrl () {
		return googleDriveUrl;
	}

	public String getGoogleDriveLinkText () {
		if (commitNeeded)
			return "";
		else
			return googleDriveLinkText;
	}

	public void setGoogleDriveLinkText (String googleDriveLinkText) {
		this.googleDriveLinkText = googleDriveLinkText;
		commitNeeded = true;
	}

	public String getActualGoogleDriveLinkText () {
		return googleDriveLinkText;
	}

	public String getGoogleGroupEmail () {
		if (commitNeeded)
			return "";
		else
			return googleGroupEmail;
	}

	public void setGoogleGroupEmail (String googleGroupEmail) {
		this.googleGroupEmail = googleGroupEmail;
		commitNeeded = true;
	}

	public String getActualGoogleGroupEmail () {
		return googleGroupEmail;
	}

	public String getJoinUrl () {
		if (commitNeeded)
			return "";
		else
			return joinUrl;
	}

	public void setJoinUrl (String joinUrl) {
		this.joinUrl = joinUrl;
		commitNeeded = true;
	}

	public String getActualJoinUrl () {
		return joinUrl;
	}

	public String getJoinLinkText () {
		if (commitNeeded)
			return "";
		else
			return joinLinkText;
	}

	public void setJoinLinkText (String joinLinkText) {
		this.joinLinkText = joinLinkText;
		commitNeeded = true;
	}

	public String getActualJoinLinkText () {
		return joinLinkText;
	}

	public String getSlackUrl () {
		if (commitNeeded)
			return "";
		else
			return slackUrl;
	}

	public void setSlackUrl (String slackUrl) {
		this.slackUrl = slackUrl;
		commitNeeded = true;
	}

	public String getActualSlackUrl () {
		return slackUrl;
	}

	public String getSlackLinkText () {
		if (commitNeeded)
			return "";
		else
			return slackLinkText;
	}

	public void setSlackLinkText (String slackLinkText) {
		this.slackLinkText = slackLinkText;
		commitNeeded = true;
	}

	public String getActualSlackLinkText () {
		return slackLinkText;
	}

	public boolean getCrossCutting () {
		return crossCutting;
	}

	public void setCrossCutting (boolean crossCutting) {
		this.crossCutting = crossCutting;
		commitNeeded = true;
	}

	public boolean getActualCrossCutting () {
		return crossCutting;
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

	public static String nameValue() throws JspException {
		try {
			return currentInstance.getName();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function nameValue()");
		}
	}

	public static String descriptionValue() throws JspException {
		try {
			return currentInstance.getDescription();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function descriptionValue()");
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

	public static String summaryValue() throws JspException {
		try {
			return currentInstance.getSummary();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function summaryValue()");
		}
	}

	public static String supplementalInformationValue() throws JspException {
		try {
			return currentInstance.getSupplementalInformation();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function supplementalInformationValue()");
		}
	}

	public static String googleDriveUrlValue() throws JspException {
		try {
			return currentInstance.getGoogleDriveUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function googleDriveUrlValue()");
		}
	}

	public static String googleDriveLinkTextValue() throws JspException {
		try {
			return currentInstance.getGoogleDriveLinkText();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function googleDriveLinkTextValue()");
		}
	}

	public static String googleGroupEmailValue() throws JspException {
		try {
			return currentInstance.getGoogleGroupEmail();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function googleGroupEmailValue()");
		}
	}

	public static String joinUrlValue() throws JspException {
		try {
			return currentInstance.getJoinUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function joinUrlValue()");
		}
	}

	public static String joinLinkTextValue() throws JspException {
		try {
			return currentInstance.getJoinLinkText();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function joinLinkTextValue()");
		}
	}

	public static String slackUrlValue() throws JspException {
		try {
			return currentInstance.getSlackUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function slackUrlValue()");
		}
	}

	public static String slackLinkTextValue() throws JspException {
		try {
			return currentInstance.getSlackLinkText();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function slackLinkTextValue()");
		}
	}

	public static Boolean crossCuttingValue() throws JspException {
		try {
			return currentInstance.getCrossCutting();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function crossCuttingValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		name = null;
		description = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		summary = null;
		supplementalInformation = null;
		googleDriveUrl = null;
		googleDriveLinkText = null;
		googleGroupEmail = null;
		joinUrl = null;
		joinLinkText = null;
		slackUrl = null;
		slackLinkText = null;
		crossCutting = false;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
