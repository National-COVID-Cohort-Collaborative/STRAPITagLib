package org.cd2h.STRAPITagLib.workstreamInstances;

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
public class WorkstreamInstances extends STRAPITagLibTagSupport {

	static WorkstreamInstances currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(WorkstreamInstances.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String missionHeader = null;
	String missionBlock = null;
	String connectHeader = null;
	String connectBlock = null;
	String block1 = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String faqHeader = null;
	String leadershipHeader = null;

	private String var = null;

	private WorkstreamInstances cachedWorkstreamInstances = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			WorkstreamInstancesIterator theWorkstreamInstancesIterator = (WorkstreamInstancesIterator)findAncestorWithClass(this, WorkstreamInstancesIterator.class);

			if (theWorkstreamInstancesIterator != null) {
				ID = theWorkstreamInstancesIterator.getID();
			}

			if (theWorkstreamInstancesIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new WorkstreamInstances and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a WorkstreamInstances from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,mission_header,mission_block,connect_header,connect_block,block_1,created_at,updated_at,published_at,created_by_id,updated_by_id,faq_header,leadership_header from strapi.workstream_instances where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (missionHeader == null)
						missionHeader = rs.getString(2);
					if (missionBlock == null)
						missionBlock = rs.getString(3);
					if (connectHeader == null)
						connectHeader = rs.getString(4);
					if (connectBlock == null)
						connectBlock = rs.getString(5);
					if (block1 == null)
						block1 = rs.getString(6);
					if (createdAt == null)
						createdAt = rs.getTimestamp(7);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(8);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(9);
					if (createdById == 0)
						createdById = rs.getInt(10);
					if (updatedById == 0)
						updatedById = rs.getInt(11);
					if (faqHeader == null)
						faqHeader = rs.getString(12);
					if (leadershipHeader == null)
						leadershipHeader = rs.getString(13);
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
			WorkstreamInstances currentWorkstreamInstances = (WorkstreamInstances) pageContext.getAttribute("tag_workstreamInstances");
			if(currentWorkstreamInstances != null){
				cachedWorkstreamInstances = currentWorkstreamInstances;
			}
			currentWorkstreamInstances = this;
			pageContext.setAttribute((var == null ? "tag_workstreamInstances" : var), currentWorkstreamInstances);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedWorkstreamInstances != null){
				pageContext.setAttribute((var == null ? "tag_workstreamInstances" : var), this.cachedWorkstreamInstances);
			}else{
				pageContext.removeAttribute((var == null ? "tag_workstreamInstances" : var));
				this.cachedWorkstreamInstances = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.workstream_instances set header = ?, mission_header = ?, mission_block = ?, connect_header = ?, connect_block = ?, block_1 = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, faq_header = ?, leadership_header = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, missionHeader );
				stmt.setString( 3, missionBlock );
				stmt.setString( 4, connectHeader );
				stmt.setString( 5, connectBlock );
				stmt.setString( 6, block1 );
				stmt.setTimestamp( 7, createdAt );
				stmt.setTimestamp( 8, updatedAt );
				stmt.setTimestamp( 9, publishedAt );
				stmt.setInt( 10, createdById );
				stmt.setInt( 11, updatedById );
				stmt.setString( 12, faqHeader );
				stmt.setString( 13, leadershipHeader );
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
			log.debug("generating new WorkstreamInstances " + ID);
		}

		if (header == null){
			header = "";
		}
		if (missionHeader == null){
			missionHeader = "";
		}
		if (missionBlock == null){
			missionBlock = "";
		}
		if (connectHeader == null){
			connectHeader = "";
		}
		if (connectBlock == null){
			connectBlock = "";
		}
		if (block1 == null){
			block1 = "";
		}
		if (faqHeader == null){
			faqHeader = "";
		}
		if (leadershipHeader == null){
			leadershipHeader = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.workstream_instances(header,mission_header,mission_block,connect_header,connect_block,block_1,created_at,updated_at,published_at,created_by_id,updated_by_id,faq_header,leadership_header) values (?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,missionHeader);
		stmt.setString(3,missionBlock);
		stmt.setString(4,connectHeader);
		stmt.setString(5,connectBlock);
		stmt.setString(6,block1);
		stmt.setTimestamp(7,createdAt);
		stmt.setTimestamp(8,updatedAt);
		stmt.setTimestamp(9,publishedAt);
		stmt.setInt(10,createdById);
		stmt.setInt(11,updatedById);
		stmt.setString(12,faqHeader);
		stmt.setString(13,leadershipHeader);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new WorkstreamInstances " + ID);

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

	public String getMissionHeader () {
		if (commitNeeded)
			return "";
		else
			return missionHeader;
	}

	public void setMissionHeader (String missionHeader) {
		this.missionHeader = missionHeader;
		commitNeeded = true;
	}

	public String getActualMissionHeader () {
		return missionHeader;
	}

	public String getMissionBlock () {
		if (commitNeeded)
			return "";
		else
			return missionBlock;
	}

	public void setMissionBlock (String missionBlock) {
		this.missionBlock = missionBlock;
		commitNeeded = true;
	}

	public String getActualMissionBlock () {
		return missionBlock;
	}

	public String getConnectHeader () {
		if (commitNeeded)
			return "";
		else
			return connectHeader;
	}

	public void setConnectHeader (String connectHeader) {
		this.connectHeader = connectHeader;
		commitNeeded = true;
	}

	public String getActualConnectHeader () {
		return connectHeader;
	}

	public String getConnectBlock () {
		if (commitNeeded)
			return "";
		else
			return connectBlock;
	}

	public void setConnectBlock (String connectBlock) {
		this.connectBlock = connectBlock;
		commitNeeded = true;
	}

	public String getActualConnectBlock () {
		return connectBlock;
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

	public String getFaqHeader () {
		if (commitNeeded)
			return "";
		else
			return faqHeader;
	}

	public void setFaqHeader (String faqHeader) {
		this.faqHeader = faqHeader;
		commitNeeded = true;
	}

	public String getActualFaqHeader () {
		return faqHeader;
	}

	public String getLeadershipHeader () {
		if (commitNeeded)
			return "";
		else
			return leadershipHeader;
	}

	public void setLeadershipHeader (String leadershipHeader) {
		this.leadershipHeader = leadershipHeader;
		commitNeeded = true;
	}

	public String getActualLeadershipHeader () {
		return leadershipHeader;
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

	public static String missionHeaderValue() throws JspException {
		try {
			return currentInstance.getMissionHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function missionHeaderValue()");
		}
	}

	public static String missionBlockValue() throws JspException {
		try {
			return currentInstance.getMissionBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function missionBlockValue()");
		}
	}

	public static String connectHeaderValue() throws JspException {
		try {
			return currentInstance.getConnectHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function connectHeaderValue()");
		}
	}

	public static String connectBlockValue() throws JspException {
		try {
			return currentInstance.getConnectBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function connectBlockValue()");
		}
	}

	public static String block1Value() throws JspException {
		try {
			return currentInstance.getBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function block1Value()");
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

	public static String faqHeaderValue() throws JspException {
		try {
			return currentInstance.getFaqHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqHeaderValue()");
		}
	}

	public static String leadershipHeaderValue() throws JspException {
		try {
			return currentInstance.getLeadershipHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function leadershipHeaderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		header = null;
		missionHeader = null;
		missionBlock = null;
		connectHeader = null;
		connectBlock = null;
		block1 = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		faqHeader = null;
		leadershipHeader = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
