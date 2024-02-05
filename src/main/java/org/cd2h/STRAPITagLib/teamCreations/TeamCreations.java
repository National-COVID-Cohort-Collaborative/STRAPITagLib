package org.cd2h.STRAPITagLib.teamCreations;

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
public class TeamCreations extends STRAPITagLibTagSupport {

	static TeamCreations currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TeamCreations.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String readyHeader = null;
	String readyBlock = null;
	String leadHeader = null;
	String leadBlock = null;
	String responsibilityHeader = null;
	String responsibilityBlock = null;
	String resourcesHeader = null;
	String resourcesBlock = null;
	String guidelineHeader = null;
	String guidelineBlock = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String title = null;

	private String var = null;

	private TeamCreations cachedTeamCreations = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			TeamCreationsIterator theTeamCreationsIterator = (TeamCreationsIterator)findAncestorWithClass(this, TeamCreationsIterator.class);

			if (theTeamCreationsIterator != null) {
				ID = theTeamCreationsIterator.getID();
			}

			if (theTeamCreationsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TeamCreations and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a TeamCreations from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select ready_header,ready_block,lead_header,lead_block,responsibility_header,responsibility_block,resources_header,resources_block,guideline_header,guideline_block,created_at,updated_at,published_at,created_by_id,updated_by_id,title from strapi.team_creations where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (readyHeader == null)
						readyHeader = rs.getString(1);
					if (readyBlock == null)
						readyBlock = rs.getString(2);
					if (leadHeader == null)
						leadHeader = rs.getString(3);
					if (leadBlock == null)
						leadBlock = rs.getString(4);
					if (responsibilityHeader == null)
						responsibilityHeader = rs.getString(5);
					if (responsibilityBlock == null)
						responsibilityBlock = rs.getString(6);
					if (resourcesHeader == null)
						resourcesHeader = rs.getString(7);
					if (resourcesBlock == null)
						resourcesBlock = rs.getString(8);
					if (guidelineHeader == null)
						guidelineHeader = rs.getString(9);
					if (guidelineBlock == null)
						guidelineBlock = rs.getString(10);
					if (createdAt == null)
						createdAt = rs.getTimestamp(11);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(12);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(13);
					if (createdById == 0)
						createdById = rs.getInt(14);
					if (updatedById == 0)
						updatedById = rs.getInt(15);
					if (title == null)
						title = rs.getString(16);
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
			TeamCreations currentTeamCreations = (TeamCreations) pageContext.getAttribute("tag_teamCreations");
			if(currentTeamCreations != null){
				cachedTeamCreations = currentTeamCreations;
			}
			currentTeamCreations = this;
			pageContext.setAttribute((var == null ? "tag_teamCreations" : var), currentTeamCreations);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTeamCreations != null){
				pageContext.setAttribute((var == null ? "tag_teamCreations" : var), this.cachedTeamCreations);
			}else{
				pageContext.removeAttribute((var == null ? "tag_teamCreations" : var));
				this.cachedTeamCreations = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.team_creations set ready_header = ?, ready_block = ?, lead_header = ?, lead_block = ?, responsibility_header = ?, responsibility_block = ?, resources_header = ?, resources_block = ?, guideline_header = ?, guideline_block = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, title = ? where id = ? ");
				stmt.setString( 1, readyHeader );
				stmt.setString( 2, readyBlock );
				stmt.setString( 3, leadHeader );
				stmt.setString( 4, leadBlock );
				stmt.setString( 5, responsibilityHeader );
				stmt.setString( 6, responsibilityBlock );
				stmt.setString( 7, resourcesHeader );
				stmt.setString( 8, resourcesBlock );
				stmt.setString( 9, guidelineHeader );
				stmt.setString( 10, guidelineBlock );
				stmt.setTimestamp( 11, createdAt );
				stmt.setTimestamp( 12, updatedAt );
				stmt.setTimestamp( 13, publishedAt );
				stmt.setInt( 14, createdById );
				stmt.setInt( 15, updatedById );
				stmt.setString( 16, title );
				stmt.setInt(17,ID);
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
			log.debug("generating new TeamCreations " + ID);
		}

		if (readyHeader == null){
			readyHeader = "";
		}
		if (readyBlock == null){
			readyBlock = "";
		}
		if (leadHeader == null){
			leadHeader = "";
		}
		if (leadBlock == null){
			leadBlock = "";
		}
		if (responsibilityHeader == null){
			responsibilityHeader = "";
		}
		if (responsibilityBlock == null){
			responsibilityBlock = "";
		}
		if (resourcesHeader == null){
			resourcesHeader = "";
		}
		if (resourcesBlock == null){
			resourcesBlock = "";
		}
		if (guidelineHeader == null){
			guidelineHeader = "";
		}
		if (guidelineBlock == null){
			guidelineBlock = "";
		}
		if (title == null){
			title = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.team_creations(ready_header,ready_block,lead_header,lead_block,responsibility_header,responsibility_block,resources_header,resources_block,guideline_header,guideline_block,created_at,updated_at,published_at,created_by_id,updated_by_id,title) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,readyHeader);
		stmt.setString(2,readyBlock);
		stmt.setString(3,leadHeader);
		stmt.setString(4,leadBlock);
		stmt.setString(5,responsibilityHeader);
		stmt.setString(6,responsibilityBlock);
		stmt.setString(7,resourcesHeader);
		stmt.setString(8,resourcesBlock);
		stmt.setString(9,guidelineHeader);
		stmt.setString(10,guidelineBlock);
		stmt.setTimestamp(11,createdAt);
		stmt.setTimestamp(12,updatedAt);
		stmt.setTimestamp(13,publishedAt);
		stmt.setInt(14,createdById);
		stmt.setInt(15,updatedById);
		stmt.setString(16,title);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new TeamCreations " + ID);

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

	public String getReadyHeader () {
		if (commitNeeded)
			return "";
		else
			return readyHeader;
	}

	public void setReadyHeader (String readyHeader) {
		this.readyHeader = readyHeader;
		commitNeeded = true;
	}

	public String getActualReadyHeader () {
		return readyHeader;
	}

	public String getReadyBlock () {
		if (commitNeeded)
			return "";
		else
			return readyBlock;
	}

	public void setReadyBlock (String readyBlock) {
		this.readyBlock = readyBlock;
		commitNeeded = true;
	}

	public String getActualReadyBlock () {
		return readyBlock;
	}

	public String getLeadHeader () {
		if (commitNeeded)
			return "";
		else
			return leadHeader;
	}

	public void setLeadHeader (String leadHeader) {
		this.leadHeader = leadHeader;
		commitNeeded = true;
	}

	public String getActualLeadHeader () {
		return leadHeader;
	}

	public String getLeadBlock () {
		if (commitNeeded)
			return "";
		else
			return leadBlock;
	}

	public void setLeadBlock (String leadBlock) {
		this.leadBlock = leadBlock;
		commitNeeded = true;
	}

	public String getActualLeadBlock () {
		return leadBlock;
	}

	public String getResponsibilityHeader () {
		if (commitNeeded)
			return "";
		else
			return responsibilityHeader;
	}

	public void setResponsibilityHeader (String responsibilityHeader) {
		this.responsibilityHeader = responsibilityHeader;
		commitNeeded = true;
	}

	public String getActualResponsibilityHeader () {
		return responsibilityHeader;
	}

	public String getResponsibilityBlock () {
		if (commitNeeded)
			return "";
		else
			return responsibilityBlock;
	}

	public void setResponsibilityBlock (String responsibilityBlock) {
		this.responsibilityBlock = responsibilityBlock;
		commitNeeded = true;
	}

	public String getActualResponsibilityBlock () {
		return responsibilityBlock;
	}

	public String getResourcesHeader () {
		if (commitNeeded)
			return "";
		else
			return resourcesHeader;
	}

	public void setResourcesHeader (String resourcesHeader) {
		this.resourcesHeader = resourcesHeader;
		commitNeeded = true;
	}

	public String getActualResourcesHeader () {
		return resourcesHeader;
	}

	public String getResourcesBlock () {
		if (commitNeeded)
			return "";
		else
			return resourcesBlock;
	}

	public void setResourcesBlock (String resourcesBlock) {
		this.resourcesBlock = resourcesBlock;
		commitNeeded = true;
	}

	public String getActualResourcesBlock () {
		return resourcesBlock;
	}

	public String getGuidelineHeader () {
		if (commitNeeded)
			return "";
		else
			return guidelineHeader;
	}

	public void setGuidelineHeader (String guidelineHeader) {
		this.guidelineHeader = guidelineHeader;
		commitNeeded = true;
	}

	public String getActualGuidelineHeader () {
		return guidelineHeader;
	}

	public String getGuidelineBlock () {
		if (commitNeeded)
			return "";
		else
			return guidelineBlock;
	}

	public void setGuidelineBlock (String guidelineBlock) {
		this.guidelineBlock = guidelineBlock;
		commitNeeded = true;
	}

	public String getActualGuidelineBlock () {
		return guidelineBlock;
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

	public static String readyHeaderValue() throws JspException {
		try {
			return currentInstance.getReadyHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function readyHeaderValue()");
		}
	}

	public static String readyBlockValue() throws JspException {
		try {
			return currentInstance.getReadyBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function readyBlockValue()");
		}
	}

	public static String leadHeaderValue() throws JspException {
		try {
			return currentInstance.getLeadHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function leadHeaderValue()");
		}
	}

	public static String leadBlockValue() throws JspException {
		try {
			return currentInstance.getLeadBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function leadBlockValue()");
		}
	}

	public static String responsibilityHeaderValue() throws JspException {
		try {
			return currentInstance.getResponsibilityHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function responsibilityHeaderValue()");
		}
	}

	public static String responsibilityBlockValue() throws JspException {
		try {
			return currentInstance.getResponsibilityBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function responsibilityBlockValue()");
		}
	}

	public static String resourcesHeaderValue() throws JspException {
		try {
			return currentInstance.getResourcesHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function resourcesHeaderValue()");
		}
	}

	public static String resourcesBlockValue() throws JspException {
		try {
			return currentInstance.getResourcesBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function resourcesBlockValue()");
		}
	}

	public static String guidelineHeaderValue() throws JspException {
		try {
			return currentInstance.getGuidelineHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function guidelineHeaderValue()");
		}
	}

	public static String guidelineBlockValue() throws JspException {
		try {
			return currentInstance.getGuidelineBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function guidelineBlockValue()");
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

	public static String titleValue() throws JspException {
		try {
			return currentInstance.getTitle();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function titleValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		readyHeader = null;
		readyBlock = null;
		leadHeader = null;
		leadBlock = null;
		responsibilityHeader = null;
		responsibilityBlock = null;
		resourcesHeader = null;
		resourcesBlock = null;
		guidelineHeader = null;
		guidelineBlock = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		title = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
