package org.cd2h.STRAPITagLib.trainings;

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
public class Trainings extends STRAPITagLibTagSupport {

	static Trainings currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Trainings.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String block1 = null;
	String portalHeader = null;
	String portalBlock = null;
	String communityHeader = null;
	String communityBlock = null;
	String eugHeader = null;
	String eugBlock = null;
	String eugBlock2 = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String sharedResourceHeader = null;
	String sharedResourceBlock = null;
	String additionalResourcesHeader = null;
	String additionalResourcesBlock = null;

	private String var = null;

	private Trainings cachedTrainings = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			TrainingsIterator theTrainingsIterator = (TrainingsIterator)findAncestorWithClass(this, TrainingsIterator.class);

			if (theTrainingsIterator != null) {
				ID = theTrainingsIterator.getID();
			}

			if (theTrainingsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Trainings and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Trainings from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,block_1,portal_header,portal_block,community_header,community_block,eug_header,eug_block,eug_block_2,created_at,updated_at,published_at,created_by_id,updated_by_id,shared_resource_header,shared_resource_block,additional_resources_header,additional_resources_block from strapi.trainings where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (block1 == null)
						block1 = rs.getString(2);
					if (portalHeader == null)
						portalHeader = rs.getString(3);
					if (portalBlock == null)
						portalBlock = rs.getString(4);
					if (communityHeader == null)
						communityHeader = rs.getString(5);
					if (communityBlock == null)
						communityBlock = rs.getString(6);
					if (eugHeader == null)
						eugHeader = rs.getString(7);
					if (eugBlock == null)
						eugBlock = rs.getString(8);
					if (eugBlock2 == null)
						eugBlock2 = rs.getString(9);
					if (createdAt == null)
						createdAt = rs.getTimestamp(10);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(11);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(12);
					if (createdById == 0)
						createdById = rs.getInt(13);
					if (updatedById == 0)
						updatedById = rs.getInt(14);
					if (sharedResourceHeader == null)
						sharedResourceHeader = rs.getString(15);
					if (sharedResourceBlock == null)
						sharedResourceBlock = rs.getString(16);
					if (additionalResourcesHeader == null)
						additionalResourcesHeader = rs.getString(17);
					if (additionalResourcesBlock == null)
						additionalResourcesBlock = rs.getString(18);
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
			Trainings currentTrainings = (Trainings) pageContext.getAttribute("tag_trainings");
			if(currentTrainings != null){
				cachedTrainings = currentTrainings;
			}
			currentTrainings = this;
			pageContext.setAttribute((var == null ? "tag_trainings" : var), currentTrainings);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTrainings != null){
				pageContext.setAttribute((var == null ? "tag_trainings" : var), this.cachedTrainings);
			}else{
				pageContext.removeAttribute((var == null ? "tag_trainings" : var));
				this.cachedTrainings = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.trainings set header = ?, block_1 = ?, portal_header = ?, portal_block = ?, community_header = ?, community_block = ?, eug_header = ?, eug_block = ?, eug_block_2 = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, shared_resource_header = ?, shared_resource_block = ?, additional_resources_header = ?, additional_resources_block = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, block1 );
				stmt.setString( 3, portalHeader );
				stmt.setString( 4, portalBlock );
				stmt.setString( 5, communityHeader );
				stmt.setString( 6, communityBlock );
				stmt.setString( 7, eugHeader );
				stmt.setString( 8, eugBlock );
				stmt.setString( 9, eugBlock2 );
				stmt.setTimestamp( 10, createdAt );
				stmt.setTimestamp( 11, updatedAt );
				stmt.setTimestamp( 12, publishedAt );
				stmt.setInt( 13, createdById );
				stmt.setInt( 14, updatedById );
				stmt.setString( 15, sharedResourceHeader );
				stmt.setString( 16, sharedResourceBlock );
				stmt.setString( 17, additionalResourcesHeader );
				stmt.setString( 18, additionalResourcesBlock );
				stmt.setInt(19,ID);
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
			log.debug("generating new Trainings " + ID);
		}

		if (header == null){
			header = "";
		}
		if (block1 == null){
			block1 = "";
		}
		if (portalHeader == null){
			portalHeader = "";
		}
		if (portalBlock == null){
			portalBlock = "";
		}
		if (communityHeader == null){
			communityHeader = "";
		}
		if (communityBlock == null){
			communityBlock = "";
		}
		if (eugHeader == null){
			eugHeader = "";
		}
		if (eugBlock == null){
			eugBlock = "";
		}
		if (eugBlock2 == null){
			eugBlock2 = "";
		}
		if (sharedResourceHeader == null){
			sharedResourceHeader = "";
		}
		if (sharedResourceBlock == null){
			sharedResourceBlock = "";
		}
		if (additionalResourcesHeader == null){
			additionalResourcesHeader = "";
		}
		if (additionalResourcesBlock == null){
			additionalResourcesBlock = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.trainings(header,block_1,portal_header,portal_block,community_header,community_block,eug_header,eug_block,eug_block_2,created_at,updated_at,published_at,created_by_id,updated_by_id,shared_resource_header,shared_resource_block,additional_resources_header,additional_resources_block) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,block1);
		stmt.setString(3,portalHeader);
		stmt.setString(4,portalBlock);
		stmt.setString(5,communityHeader);
		stmt.setString(6,communityBlock);
		stmt.setString(7,eugHeader);
		stmt.setString(8,eugBlock);
		stmt.setString(9,eugBlock2);
		stmt.setTimestamp(10,createdAt);
		stmt.setTimestamp(11,updatedAt);
		stmt.setTimestamp(12,publishedAt);
		stmt.setInt(13,createdById);
		stmt.setInt(14,updatedById);
		stmt.setString(15,sharedResourceHeader);
		stmt.setString(16,sharedResourceBlock);
		stmt.setString(17,additionalResourcesHeader);
		stmt.setString(18,additionalResourcesBlock);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Trainings " + ID);

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

	public String getBlock1 () {
		if (commitNeeded)
			return "";
		else
			return block1;
	}

	public void setBlock1 (String block1) {
		this.block1 = block1;
		commitNeeded = true;
	}

	public String getActualBlock1 () {
		return block1;
	}

	public String getPortalHeader () {
		if (commitNeeded)
			return "";
		else
			return portalHeader;
	}

	public void setPortalHeader (String portalHeader) {
		this.portalHeader = portalHeader;
		commitNeeded = true;
	}

	public String getActualPortalHeader () {
		return portalHeader;
	}

	public String getPortalBlock () {
		if (commitNeeded)
			return "";
		else
			return portalBlock;
	}

	public void setPortalBlock (String portalBlock) {
		this.portalBlock = portalBlock;
		commitNeeded = true;
	}

	public String getActualPortalBlock () {
		return portalBlock;
	}

	public String getCommunityHeader () {
		if (commitNeeded)
			return "";
		else
			return communityHeader;
	}

	public void setCommunityHeader (String communityHeader) {
		this.communityHeader = communityHeader;
		commitNeeded = true;
	}

	public String getActualCommunityHeader () {
		return communityHeader;
	}

	public String getCommunityBlock () {
		if (commitNeeded)
			return "";
		else
			return communityBlock;
	}

	public void setCommunityBlock (String communityBlock) {
		this.communityBlock = communityBlock;
		commitNeeded = true;
	}

	public String getActualCommunityBlock () {
		return communityBlock;
	}

	public String getEugHeader () {
		if (commitNeeded)
			return "";
		else
			return eugHeader;
	}

	public void setEugHeader (String eugHeader) {
		this.eugHeader = eugHeader;
		commitNeeded = true;
	}

	public String getActualEugHeader () {
		return eugHeader;
	}

	public String getEugBlock () {
		if (commitNeeded)
			return "";
		else
			return eugBlock;
	}

	public void setEugBlock (String eugBlock) {
		this.eugBlock = eugBlock;
		commitNeeded = true;
	}

	public String getActualEugBlock () {
		return eugBlock;
	}

	public String getEugBlock2 () {
		if (commitNeeded)
			return "";
		else
			return eugBlock2;
	}

	public void setEugBlock2 (String eugBlock2) {
		this.eugBlock2 = eugBlock2;
		commitNeeded = true;
	}

	public String getActualEugBlock2 () {
		return eugBlock2;
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

	public String getSharedResourceHeader () {
		if (commitNeeded)
			return "";
		else
			return sharedResourceHeader;
	}

	public void setSharedResourceHeader (String sharedResourceHeader) {
		this.sharedResourceHeader = sharedResourceHeader;
		commitNeeded = true;
	}

	public String getActualSharedResourceHeader () {
		return sharedResourceHeader;
	}

	public String getSharedResourceBlock () {
		if (commitNeeded)
			return "";
		else
			return sharedResourceBlock;
	}

	public void setSharedResourceBlock (String sharedResourceBlock) {
		this.sharedResourceBlock = sharedResourceBlock;
		commitNeeded = true;
	}

	public String getActualSharedResourceBlock () {
		return sharedResourceBlock;
	}

	public String getAdditionalResourcesHeader () {
		if (commitNeeded)
			return "";
		else
			return additionalResourcesHeader;
	}

	public void setAdditionalResourcesHeader (String additionalResourcesHeader) {
		this.additionalResourcesHeader = additionalResourcesHeader;
		commitNeeded = true;
	}

	public String getActualAdditionalResourcesHeader () {
		return additionalResourcesHeader;
	}

	public String getAdditionalResourcesBlock () {
		if (commitNeeded)
			return "";
		else
			return additionalResourcesBlock;
	}

	public void setAdditionalResourcesBlock (String additionalResourcesBlock) {
		this.additionalResourcesBlock = additionalResourcesBlock;
		commitNeeded = true;
	}

	public String getActualAdditionalResourcesBlock () {
		return additionalResourcesBlock;
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

	public static String block1Value() throws JspException {
		try {
			return currentInstance.getBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function block1Value()");
		}
	}

	public static String portalHeaderValue() throws JspException {
		try {
			return currentInstance.getPortalHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function portalHeaderValue()");
		}
	}

	public static String portalBlockValue() throws JspException {
		try {
			return currentInstance.getPortalBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function portalBlockValue()");
		}
	}

	public static String communityHeaderValue() throws JspException {
		try {
			return currentInstance.getCommunityHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function communityHeaderValue()");
		}
	}

	public static String communityBlockValue() throws JspException {
		try {
			return currentInstance.getCommunityBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function communityBlockValue()");
		}
	}

	public static String eugHeaderValue() throws JspException {
		try {
			return currentInstance.getEugHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function eugHeaderValue()");
		}
	}

	public static String eugBlockValue() throws JspException {
		try {
			return currentInstance.getEugBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function eugBlockValue()");
		}
	}

	public static String eugBlock2Value() throws JspException {
		try {
			return currentInstance.getEugBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function eugBlock2Value()");
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

	public static String sharedResourceHeaderValue() throws JspException {
		try {
			return currentInstance.getSharedResourceHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function sharedResourceHeaderValue()");
		}
	}

	public static String sharedResourceBlockValue() throws JspException {
		try {
			return currentInstance.getSharedResourceBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function sharedResourceBlockValue()");
		}
	}

	public static String additionalResourcesHeaderValue() throws JspException {
		try {
			return currentInstance.getAdditionalResourcesHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function additionalResourcesHeaderValue()");
		}
	}

	public static String additionalResourcesBlockValue() throws JspException {
		try {
			return currentInstance.getAdditionalResourcesBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function additionalResourcesBlockValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		header = null;
		block1 = null;
		portalHeader = null;
		portalBlock = null;
		communityHeader = null;
		communityBlock = null;
		eugHeader = null;
		eugBlock = null;
		eugBlock2 = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		sharedResourceHeader = null;
		sharedResourceBlock = null;
		additionalResourcesHeader = null;
		additionalResourcesBlock = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
