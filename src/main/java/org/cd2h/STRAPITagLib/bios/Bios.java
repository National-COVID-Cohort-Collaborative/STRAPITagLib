package org.cd2h.STRAPITagLib.bios;

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
public class Bios extends STRAPITagLibTagSupport {

	static Bios currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Bios.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String firstName = null;
	String lastName = null;
	String title = null;
	String organization = null;
	String organizationUrl = null;
	String website = null;
	String orcid = null;
	String email = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Bios cachedBios = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			BiosIterator theBiosIterator = (BiosIterator)findAncestorWithClass(this, BiosIterator.class);

			if (theBiosIterator != null) {
				ID = theBiosIterator.getID();
			}

			if (theBiosIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Bios and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Bios from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select first_name,last_name,title,organization,organization_url,website,orcid,email,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.bios where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (firstName == null)
						firstName = rs.getString(1);
					if (lastName == null)
						lastName = rs.getString(2);
					if (title == null)
						title = rs.getString(3);
					if (organization == null)
						organization = rs.getString(4);
					if (organizationUrl == null)
						organizationUrl = rs.getString(5);
					if (website == null)
						website = rs.getString(6);
					if (orcid == null)
						orcid = rs.getString(7);
					if (email == null)
						email = rs.getString(8);
					if (createdAt == null)
						createdAt = rs.getTimestamp(9);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(10);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(11);
					if (createdById == 0)
						createdById = rs.getInt(12);
					if (updatedById == 0)
						updatedById = rs.getInt(13);
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
			Bios currentBios = (Bios) pageContext.getAttribute("tag_bios");
			if(currentBios != null){
				cachedBios = currentBios;
			}
			currentBios = this;
			pageContext.setAttribute((var == null ? "tag_bios" : var), currentBios);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedBios != null){
				pageContext.setAttribute((var == null ? "tag_bios" : var), this.cachedBios);
			}else{
				pageContext.removeAttribute((var == null ? "tag_bios" : var));
				this.cachedBios = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.bios set first_name = ?, last_name = ?, title = ?, organization = ?, organization_url = ?, website = ?, orcid = ?, email = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, firstName );
				stmt.setString( 2, lastName );
				stmt.setString( 3, title );
				stmt.setString( 4, organization );
				stmt.setString( 5, organizationUrl );
				stmt.setString( 6, website );
				stmt.setString( 7, orcid );
				stmt.setString( 8, email );
				stmt.setTimestamp( 9, createdAt );
				stmt.setTimestamp( 10, updatedAt );
				stmt.setTimestamp( 11, publishedAt );
				stmt.setInt( 12, createdById );
				stmt.setInt( 13, updatedById );
				stmt.setInt(14,ID);
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
			log.debug("generating new Bios " + ID);
		}

		if (firstName == null){
			firstName = "";
		}
		if (lastName == null){
			lastName = "";
		}
		if (title == null){
			title = "";
		}
		if (organization == null){
			organization = "";
		}
		if (organizationUrl == null){
			organizationUrl = "";
		}
		if (website == null){
			website = "";
		}
		if (orcid == null){
			orcid = "";
		}
		if (email == null){
			email = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.bios(first_name,last_name,title,organization,organization_url,website,orcid,email,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,firstName);
		stmt.setString(2,lastName);
		stmt.setString(3,title);
		stmt.setString(4,organization);
		stmt.setString(5,organizationUrl);
		stmt.setString(6,website);
		stmt.setString(7,orcid);
		stmt.setString(8,email);
		stmt.setTimestamp(9,createdAt);
		stmt.setTimestamp(10,updatedAt);
		stmt.setTimestamp(11,publishedAt);
		stmt.setInt(12,createdById);
		stmt.setInt(13,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new Bios " + ID);

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

	public String getFirstName () {
		if (commitNeeded)
			return "";
		else
			return firstName;
	}

	public void setFirstName (String firstName) {
		this.firstName = firstName;
		commitNeeded = true;
	}

	public String getActualFirstName () {
		return firstName;
	}

	public String getLastName () {
		if (commitNeeded)
			return "";
		else
			return lastName;
	}

	public void setLastName (String lastName) {
		this.lastName = lastName;
		commitNeeded = true;
	}

	public String getActualLastName () {
		return lastName;
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

	public String getOrganization () {
		if (commitNeeded)
			return "";
		else
			return organization;
	}

	public void setOrganization (String organization) {
		this.organization = organization;
		commitNeeded = true;
	}

	public String getActualOrganization () {
		return organization;
	}

	public String getOrganizationUrl () {
		if (commitNeeded)
			return "";
		else
			return organizationUrl;
	}

	public void setOrganizationUrl (String organizationUrl) {
		this.organizationUrl = organizationUrl;
		commitNeeded = true;
	}

	public String getActualOrganizationUrl () {
		return organizationUrl;
	}

	public String getWebsite () {
		if (commitNeeded)
			return "";
		else
			return website;
	}

	public void setWebsite (String website) {
		this.website = website;
		commitNeeded = true;
	}

	public String getActualWebsite () {
		return website;
	}

	public String getOrcid () {
		if (commitNeeded)
			return "";
		else
			return orcid;
	}

	public void setOrcid (String orcid) {
		this.orcid = orcid;
		commitNeeded = true;
	}

	public String getActualOrcid () {
		return orcid;
	}

	public String getEmail () {
		if (commitNeeded)
			return "";
		else
			return email;
	}

	public void setEmail (String email) {
		this.email = email;
		commitNeeded = true;
	}

	public String getActualEmail () {
		return email;
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

	public static String firstNameValue() throws JspException {
		try {
			return currentInstance.getFirstName();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function firstNameValue()");
		}
	}

	public static String lastNameValue() throws JspException {
		try {
			return currentInstance.getLastName();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function lastNameValue()");
		}
	}

	public static String titleValue() throws JspException {
		try {
			return currentInstance.getTitle();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function titleValue()");
		}
	}

	public static String organizationValue() throws JspException {
		try {
			return currentInstance.getOrganization();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function organizationValue()");
		}
	}

	public static String organizationUrlValue() throws JspException {
		try {
			return currentInstance.getOrganizationUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function organizationUrlValue()");
		}
	}

	public static String websiteValue() throws JspException {
		try {
			return currentInstance.getWebsite();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function websiteValue()");
		}
	}

	public static String orcidValue() throws JspException {
		try {
			return currentInstance.getOrcid();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function orcidValue()");
		}
	}

	public static String emailValue() throws JspException {
		try {
			return currentInstance.getEmail();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function emailValue()");
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
		firstName = null;
		lastName = null;
		title = null;
		organization = null;
		organizationUrl = null;
		website = null;
		orcid = null;
		email = null;
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
