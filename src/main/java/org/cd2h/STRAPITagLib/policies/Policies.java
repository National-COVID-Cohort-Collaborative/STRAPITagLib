package org.cd2h.STRAPITagLib.policies;

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
public class Policies extends STRAPITagLibTagSupport {

	static Policies currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Policies.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String introBlock = null;
	String resourceHeader = null;
	String institutionHeader = null;
	String userHeader = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Policies cachedPolicies = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			PoliciesIterator thePoliciesIterator = (PoliciesIterator)findAncestorWithClass(this, PoliciesIterator.class);

			if (thePoliciesIterator != null) {
				ID = thePoliciesIterator.getID();
			}

			if (thePoliciesIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Policies and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Policies from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,intro_block,resource_header,institution_header,user_header,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.policies where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (introBlock == null)
						introBlock = rs.getString(2);
					if (resourceHeader == null)
						resourceHeader = rs.getString(3);
					if (institutionHeader == null)
						institutionHeader = rs.getString(4);
					if (userHeader == null)
						userHeader = rs.getString(5);
					if (createdAt == null)
						createdAt = rs.getTimestamp(6);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(7);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(8);
					if (createdById == 0)
						createdById = rs.getInt(9);
					if (updatedById == 0)
						updatedById = rs.getInt(10);
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
			Policies currentPolicies = (Policies) pageContext.getAttribute("tag_policies");
			if(currentPolicies != null){
				cachedPolicies = currentPolicies;
			}
			currentPolicies = this;
			pageContext.setAttribute((var == null ? "tag_policies" : var), currentPolicies);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPolicies != null){
				pageContext.setAttribute((var == null ? "tag_policies" : var), this.cachedPolicies);
			}else{
				pageContext.removeAttribute((var == null ? "tag_policies" : var));
				this.cachedPolicies = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.policies set header = ?, intro_block = ?, resource_header = ?, institution_header = ?, user_header = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, introBlock );
				stmt.setString( 3, resourceHeader );
				stmt.setString( 4, institutionHeader );
				stmt.setString( 5, userHeader );
				stmt.setTimestamp( 6, createdAt );
				stmt.setTimestamp( 7, updatedAt );
				stmt.setTimestamp( 8, publishedAt );
				stmt.setInt( 9, createdById );
				stmt.setInt( 10, updatedById );
				stmt.setInt(11,ID);
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
			log.debug("generating new Policies " + ID);
		}

		if (header == null){
			header = "";
		}
		if (introBlock == null){
			introBlock = "";
		}
		if (resourceHeader == null){
			resourceHeader = "";
		}
		if (institutionHeader == null){
			institutionHeader = "";
		}
		if (userHeader == null){
			userHeader = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.policies(header,intro_block,resource_header,institution_header,user_header,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,introBlock);
		stmt.setString(3,resourceHeader);
		stmt.setString(4,institutionHeader);
		stmt.setString(5,userHeader);
		stmt.setTimestamp(6,createdAt);
		stmt.setTimestamp(7,updatedAt);
		stmt.setTimestamp(8,publishedAt);
		stmt.setInt(9,createdById);
		stmt.setInt(10,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Policies " + ID);

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

	public String getHeader () {
		if (commitNeeded)
			return "";
		else
			return header;
	}

	public void setHeader (String header) {
		this.header = header;
		commitNeeded = true;
	}

	public String getActualHeader () {
		return header;
	}

	public String getIntroBlock () {
		if (commitNeeded)
			return "";
		else
			return introBlock;
	}

	public void setIntroBlock (String introBlock) {
		this.introBlock = introBlock;
		commitNeeded = true;
	}

	public String getActualIntroBlock () {
		return introBlock;
	}

	public String getResourceHeader () {
		if (commitNeeded)
			return "";
		else
			return resourceHeader;
	}

	public void setResourceHeader (String resourceHeader) {
		this.resourceHeader = resourceHeader;
		commitNeeded = true;
	}

	public String getActualResourceHeader () {
		return resourceHeader;
	}

	public String getInstitutionHeader () {
		if (commitNeeded)
			return "";
		else
			return institutionHeader;
	}

	public void setInstitutionHeader (String institutionHeader) {
		this.institutionHeader = institutionHeader;
		commitNeeded = true;
	}

	public String getActualInstitutionHeader () {
		return institutionHeader;
	}

	public String getUserHeader () {
		if (commitNeeded)
			return "";
		else
			return userHeader;
	}

	public void setUserHeader (String userHeader) {
		this.userHeader = userHeader;
		commitNeeded = true;
	}

	public String getActualUserHeader () {
		return userHeader;
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

	public static String headerValue() throws JspException {
		try {
			return currentInstance.getHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function headerValue()");
		}
	}

	public static String introBlockValue() throws JspException {
		try {
			return currentInstance.getIntroBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function introBlockValue()");
		}
	}

	public static String resourceHeaderValue() throws JspException {
		try {
			return currentInstance.getResourceHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function resourceHeaderValue()");
		}
	}

	public static String institutionHeaderValue() throws JspException {
		try {
			return currentInstance.getInstitutionHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function institutionHeaderValue()");
		}
	}

	public static String userHeaderValue() throws JspException {
		try {
			return currentInstance.getUserHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function userHeaderValue()");
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
		header = null;
		introBlock = null;
		resourceHeader = null;
		institutionHeader = null;
		userHeader = null;
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
