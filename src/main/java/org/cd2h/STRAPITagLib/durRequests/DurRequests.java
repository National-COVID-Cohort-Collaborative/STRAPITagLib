package org.cd2h.STRAPITagLib.durRequests;

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
public class DurRequests extends STRAPITagLibTagSupport {

	static DurRequests currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(DurRequests.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String requestHeader = null;
	String requestBlock = null;
	String overviewHeader = null;
	String overviewBlock = null;
	String processHeader = null;
	String prereqHeader = null;
	String prereqBlock = null;
	String submitHeader = null;
	String submitBlock = null;
	String submitBlock2 = null;
	String submitBlock3 = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private DurRequests cachedDurRequests = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			DurRequestsIterator theDurRequestsIterator = (DurRequestsIterator)findAncestorWithClass(this, DurRequestsIterator.class);

			if (theDurRequestsIterator != null) {
				ID = theDurRequestsIterator.getID();
			}

			if (theDurRequestsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new DurRequests and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a DurRequests from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,request_header,request_block,overview_header,overview_block,process_header,prereq_header,prereq_block,submit_header,submit_block,submit_block_2,submit_block_3,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.dur_requests where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (requestHeader == null)
						requestHeader = rs.getString(2);
					if (requestBlock == null)
						requestBlock = rs.getString(3);
					if (overviewHeader == null)
						overviewHeader = rs.getString(4);
					if (overviewBlock == null)
						overviewBlock = rs.getString(5);
					if (processHeader == null)
						processHeader = rs.getString(6);
					if (prereqHeader == null)
						prereqHeader = rs.getString(7);
					if (prereqBlock == null)
						prereqBlock = rs.getString(8);
					if (submitHeader == null)
						submitHeader = rs.getString(9);
					if (submitBlock == null)
						submitBlock = rs.getString(10);
					if (submitBlock2 == null)
						submitBlock2 = rs.getString(11);
					if (submitBlock3 == null)
						submitBlock3 = rs.getString(12);
					if (createdAt == null)
						createdAt = rs.getTimestamp(13);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(14);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(15);
					if (createdById == 0)
						createdById = rs.getInt(16);
					if (updatedById == 0)
						updatedById = rs.getInt(17);
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
			DurRequests currentDurRequests = (DurRequests) pageContext.getAttribute("tag_durRequests");
			if(currentDurRequests != null){
				cachedDurRequests = currentDurRequests;
			}
			currentDurRequests = this;
			pageContext.setAttribute((var == null ? "tag_durRequests" : var), currentDurRequests);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedDurRequests != null){
				pageContext.setAttribute((var == null ? "tag_durRequests" : var), this.cachedDurRequests);
			}else{
				pageContext.removeAttribute((var == null ? "tag_durRequests" : var));
				this.cachedDurRequests = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.dur_requests set header = ?, request_header = ?, request_block = ?, overview_header = ?, overview_block = ?, process_header = ?, prereq_header = ?, prereq_block = ?, submit_header = ?, submit_block = ?, submit_block_2 = ?, submit_block_3 = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, requestHeader );
				stmt.setString( 3, requestBlock );
				stmt.setString( 4, overviewHeader );
				stmt.setString( 5, overviewBlock );
				stmt.setString( 6, processHeader );
				stmt.setString( 7, prereqHeader );
				stmt.setString( 8, prereqBlock );
				stmt.setString( 9, submitHeader );
				stmt.setString( 10, submitBlock );
				stmt.setString( 11, submitBlock2 );
				stmt.setString( 12, submitBlock3 );
				stmt.setTimestamp( 13, createdAt );
				stmt.setTimestamp( 14, updatedAt );
				stmt.setTimestamp( 15, publishedAt );
				stmt.setInt( 16, createdById );
				stmt.setInt( 17, updatedById );
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
			log.debug("generating new DurRequests " + ID);
		}

		if (header == null){
			header = "";
		}
		if (requestHeader == null){
			requestHeader = "";
		}
		if (requestBlock == null){
			requestBlock = "";
		}
		if (overviewHeader == null){
			overviewHeader = "";
		}
		if (overviewBlock == null){
			overviewBlock = "";
		}
		if (processHeader == null){
			processHeader = "";
		}
		if (prereqHeader == null){
			prereqHeader = "";
		}
		if (prereqBlock == null){
			prereqBlock = "";
		}
		if (submitHeader == null){
			submitHeader = "";
		}
		if (submitBlock == null){
			submitBlock = "";
		}
		if (submitBlock2 == null){
			submitBlock2 = "";
		}
		if (submitBlock3 == null){
			submitBlock3 = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.dur_requests(header,request_header,request_block,overview_header,overview_block,process_header,prereq_header,prereq_block,submit_header,submit_block,submit_block_2,submit_block_3,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,requestHeader);
		stmt.setString(3,requestBlock);
		stmt.setString(4,overviewHeader);
		stmt.setString(5,overviewBlock);
		stmt.setString(6,processHeader);
		stmt.setString(7,prereqHeader);
		stmt.setString(8,prereqBlock);
		stmt.setString(9,submitHeader);
		stmt.setString(10,submitBlock);
		stmt.setString(11,submitBlock2);
		stmt.setString(12,submitBlock3);
		stmt.setTimestamp(13,createdAt);
		stmt.setTimestamp(14,updatedAt);
		stmt.setTimestamp(15,publishedAt);
		stmt.setInt(16,createdById);
		stmt.setInt(17,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new DurRequests " + ID);

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

	public String getRequestHeader () {
		if (commitNeeded)
			return "";
		else
			return requestHeader;
	}

	public void setRequestHeader (String requestHeader) {
		this.requestHeader = requestHeader;
		commitNeeded = true;
	}

	public String getActualRequestHeader () {
		return requestHeader;
	}

	public String getRequestBlock () {
		if (commitNeeded)
			return "";
		else
			return requestBlock;
	}

	public void setRequestBlock (String requestBlock) {
		this.requestBlock = requestBlock;
		commitNeeded = true;
	}

	public String getActualRequestBlock () {
		return requestBlock;
	}

	public String getOverviewHeader () {
		if (commitNeeded)
			return "";
		else
			return overviewHeader;
	}

	public void setOverviewHeader (String overviewHeader) {
		this.overviewHeader = overviewHeader;
		commitNeeded = true;
	}

	public String getActualOverviewHeader () {
		return overviewHeader;
	}

	public String getOverviewBlock () {
		if (commitNeeded)
			return "";
		else
			return overviewBlock;
	}

	public void setOverviewBlock (String overviewBlock) {
		this.overviewBlock = overviewBlock;
		commitNeeded = true;
	}

	public String getActualOverviewBlock () {
		return overviewBlock;
	}

	public String getProcessHeader () {
		if (commitNeeded)
			return "";
		else
			return processHeader;
	}

	public void setProcessHeader (String processHeader) {
		this.processHeader = processHeader;
		commitNeeded = true;
	}

	public String getActualProcessHeader () {
		return processHeader;
	}

	public String getPrereqHeader () {
		if (commitNeeded)
			return "";
		else
			return prereqHeader;
	}

	public void setPrereqHeader (String prereqHeader) {
		this.prereqHeader = prereqHeader;
		commitNeeded = true;
	}

	public String getActualPrereqHeader () {
		return prereqHeader;
	}

	public String getPrereqBlock () {
		if (commitNeeded)
			return "";
		else
			return prereqBlock;
	}

	public void setPrereqBlock (String prereqBlock) {
		this.prereqBlock = prereqBlock;
		commitNeeded = true;
	}

	public String getActualPrereqBlock () {
		return prereqBlock;
	}

	public String getSubmitHeader () {
		if (commitNeeded)
			return "";
		else
			return submitHeader;
	}

	public void setSubmitHeader (String submitHeader) {
		this.submitHeader = submitHeader;
		commitNeeded = true;
	}

	public String getActualSubmitHeader () {
		return submitHeader;
	}

	public String getSubmitBlock () {
		if (commitNeeded)
			return "";
		else
			return submitBlock;
	}

	public void setSubmitBlock (String submitBlock) {
		this.submitBlock = submitBlock;
		commitNeeded = true;
	}

	public String getActualSubmitBlock () {
		return submitBlock;
	}

	public String getSubmitBlock2 () {
		if (commitNeeded)
			return "";
		else
			return submitBlock2;
	}

	public void setSubmitBlock2 (String submitBlock2) {
		this.submitBlock2 = submitBlock2;
		commitNeeded = true;
	}

	public String getActualSubmitBlock2 () {
		return submitBlock2;
	}

	public String getSubmitBlock3 () {
		if (commitNeeded)
			return "";
		else
			return submitBlock3;
	}

	public void setSubmitBlock3 (String submitBlock3) {
		this.submitBlock3 = submitBlock3;
		commitNeeded = true;
	}

	public String getActualSubmitBlock3 () {
		return submitBlock3;
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

	public static String requestHeaderValue() throws JspException {
		try {
			return currentInstance.getRequestHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function requestHeaderValue()");
		}
	}

	public static String requestBlockValue() throws JspException {
		try {
			return currentInstance.getRequestBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function requestBlockValue()");
		}
	}

	public static String overviewHeaderValue() throws JspException {
		try {
			return currentInstance.getOverviewHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function overviewHeaderValue()");
		}
	}

	public static String overviewBlockValue() throws JspException {
		try {
			return currentInstance.getOverviewBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function overviewBlockValue()");
		}
	}

	public static String processHeaderValue() throws JspException {
		try {
			return currentInstance.getProcessHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function processHeaderValue()");
		}
	}

	public static String prereqHeaderValue() throws JspException {
		try {
			return currentInstance.getPrereqHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function prereqHeaderValue()");
		}
	}

	public static String prereqBlockValue() throws JspException {
		try {
			return currentInstance.getPrereqBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function prereqBlockValue()");
		}
	}

	public static String submitHeaderValue() throws JspException {
		try {
			return currentInstance.getSubmitHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitHeaderValue()");
		}
	}

	public static String submitBlockValue() throws JspException {
		try {
			return currentInstance.getSubmitBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitBlockValue()");
		}
	}

	public static String submitBlock2Value() throws JspException {
		try {
			return currentInstance.getSubmitBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitBlock2Value()");
		}
	}

	public static String submitBlock3Value() throws JspException {
		try {
			return currentInstance.getSubmitBlock3();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitBlock3Value()");
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
		requestHeader = null;
		requestBlock = null;
		overviewHeader = null;
		overviewBlock = null;
		processHeader = null;
		prereqHeader = null;
		prereqBlock = null;
		submitHeader = null;
		submitBlock = null;
		submitBlock2 = null;
		submitBlock3 = null;
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
