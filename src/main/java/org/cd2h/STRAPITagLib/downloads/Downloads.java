package org.cd2h.STRAPITagLib.downloads;

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
public class Downloads extends STRAPITagLibTagSupport {

	static Downloads currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Downloads.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String introBlock = null;
	String prepareHeader = null;
	String prepareBlock = null;
	String submitHeader = null;
	String submitBlock1 = null;
	String submitBlock2 = null;
	String trackHeader = null;
	String trackBlock1 = null;
	String trackBlock2 = null;
	String trackBlock3 = null;
	String downloadHeader = null;
	String downloadBlock1 = null;
	String downloadBlock2 = null;
	String downloadBlock3 = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Downloads cachedDownloads = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			DownloadsIterator theDownloadsIterator = (DownloadsIterator)findAncestorWithClass(this, DownloadsIterator.class);

			if (theDownloadsIterator != null) {
				ID = theDownloadsIterator.getID();
			}

			if (theDownloadsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Downloads and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Downloads from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,intro_block,prepare_header,prepare_block,submit_header,submit_block_1,submit_block_2,track_header,track_block_1,track_block_2,track_block_3,download_header,download_block_1,download_block_2,download_block_3,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.downloads where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (introBlock == null)
						introBlock = rs.getString(2);
					if (prepareHeader == null)
						prepareHeader = rs.getString(3);
					if (prepareBlock == null)
						prepareBlock = rs.getString(4);
					if (submitHeader == null)
						submitHeader = rs.getString(5);
					if (submitBlock1 == null)
						submitBlock1 = rs.getString(6);
					if (submitBlock2 == null)
						submitBlock2 = rs.getString(7);
					if (trackHeader == null)
						trackHeader = rs.getString(8);
					if (trackBlock1 == null)
						trackBlock1 = rs.getString(9);
					if (trackBlock2 == null)
						trackBlock2 = rs.getString(10);
					if (trackBlock3 == null)
						trackBlock3 = rs.getString(11);
					if (downloadHeader == null)
						downloadHeader = rs.getString(12);
					if (downloadBlock1 == null)
						downloadBlock1 = rs.getString(13);
					if (downloadBlock2 == null)
						downloadBlock2 = rs.getString(14);
					if (downloadBlock3 == null)
						downloadBlock3 = rs.getString(15);
					if (createdAt == null)
						createdAt = rs.getTimestamp(16);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(17);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(18);
					if (createdById == 0)
						createdById = rs.getInt(19);
					if (updatedById == 0)
						updatedById = rs.getInt(20);
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
			Downloads currentDownloads = (Downloads) pageContext.getAttribute("tag_downloads");
			if(currentDownloads != null){
				cachedDownloads = currentDownloads;
			}
			currentDownloads = this;
			pageContext.setAttribute((var == null ? "tag_downloads" : var), currentDownloads);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedDownloads != null){
				pageContext.setAttribute((var == null ? "tag_downloads" : var), this.cachedDownloads);
			}else{
				pageContext.removeAttribute((var == null ? "tag_downloads" : var));
				this.cachedDownloads = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.downloads set header = ?, intro_block = ?, prepare_header = ?, prepare_block = ?, submit_header = ?, submit_block_1 = ?, submit_block_2 = ?, track_header = ?, track_block_1 = ?, track_block_2 = ?, track_block_3 = ?, download_header = ?, download_block_1 = ?, download_block_2 = ?, download_block_3 = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, introBlock );
				stmt.setString( 3, prepareHeader );
				stmt.setString( 4, prepareBlock );
				stmt.setString( 5, submitHeader );
				stmt.setString( 6, submitBlock1 );
				stmt.setString( 7, submitBlock2 );
				stmt.setString( 8, trackHeader );
				stmt.setString( 9, trackBlock1 );
				stmt.setString( 10, trackBlock2 );
				stmt.setString( 11, trackBlock3 );
				stmt.setString( 12, downloadHeader );
				stmt.setString( 13, downloadBlock1 );
				stmt.setString( 14, downloadBlock2 );
				stmt.setString( 15, downloadBlock3 );
				stmt.setTimestamp( 16, createdAt );
				stmt.setTimestamp( 17, updatedAt );
				stmt.setTimestamp( 18, publishedAt );
				stmt.setInt( 19, createdById );
				stmt.setInt( 20, updatedById );
				stmt.setInt(21,ID);
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
			log.debug("generating new Downloads " + ID);
		}

		if (header == null){
			header = "";
		}
		if (introBlock == null){
			introBlock = "";
		}
		if (prepareHeader == null){
			prepareHeader = "";
		}
		if (prepareBlock == null){
			prepareBlock = "";
		}
		if (submitHeader == null){
			submitHeader = "";
		}
		if (submitBlock1 == null){
			submitBlock1 = "";
		}
		if (submitBlock2 == null){
			submitBlock2 = "";
		}
		if (trackHeader == null){
			trackHeader = "";
		}
		if (trackBlock1 == null){
			trackBlock1 = "";
		}
		if (trackBlock2 == null){
			trackBlock2 = "";
		}
		if (trackBlock3 == null){
			trackBlock3 = "";
		}
		if (downloadHeader == null){
			downloadHeader = "";
		}
		if (downloadBlock1 == null){
			downloadBlock1 = "";
		}
		if (downloadBlock2 == null){
			downloadBlock2 = "";
		}
		if (downloadBlock3 == null){
			downloadBlock3 = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.downloads(header,intro_block,prepare_header,prepare_block,submit_header,submit_block_1,submit_block_2,track_header,track_block_1,track_block_2,track_block_3,download_header,download_block_1,download_block_2,download_block_3,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,introBlock);
		stmt.setString(3,prepareHeader);
		stmt.setString(4,prepareBlock);
		stmt.setString(5,submitHeader);
		stmt.setString(6,submitBlock1);
		stmt.setString(7,submitBlock2);
		stmt.setString(8,trackHeader);
		stmt.setString(9,trackBlock1);
		stmt.setString(10,trackBlock2);
		stmt.setString(11,trackBlock3);
		stmt.setString(12,downloadHeader);
		stmt.setString(13,downloadBlock1);
		stmt.setString(14,downloadBlock2);
		stmt.setString(15,downloadBlock3);
		stmt.setTimestamp(16,createdAt);
		stmt.setTimestamp(17,updatedAt);
		stmt.setTimestamp(18,publishedAt);
		stmt.setInt(19,createdById);
		stmt.setInt(20,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Downloads " + ID);

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

	public String getPrepareHeader () {
		if (commitNeeded)
			return "";
		else
			return prepareHeader;
	}

	public void setPrepareHeader (String prepareHeader) {
		this.prepareHeader = prepareHeader;
		commitNeeded = true;
	}

	public String getActualPrepareHeader () {
		return prepareHeader;
	}

	public String getPrepareBlock () {
		if (commitNeeded)
			return "";
		else
			return prepareBlock;
	}

	public void setPrepareBlock (String prepareBlock) {
		this.prepareBlock = prepareBlock;
		commitNeeded = true;
	}

	public String getActualPrepareBlock () {
		return prepareBlock;
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

	public String getSubmitBlock1 () {
		if (commitNeeded)
			return "";
		else
			return submitBlock1;
	}

	public void setSubmitBlock1 (String submitBlock1) {
		this.submitBlock1 = submitBlock1;
		commitNeeded = true;
	}

	public String getActualSubmitBlock1 () {
		return submitBlock1;
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

	public String getTrackHeader () {
		if (commitNeeded)
			return "";
		else
			return trackHeader;
	}

	public void setTrackHeader (String trackHeader) {
		this.trackHeader = trackHeader;
		commitNeeded = true;
	}

	public String getActualTrackHeader () {
		return trackHeader;
	}

	public String getTrackBlock1 () {
		if (commitNeeded)
			return "";
		else
			return trackBlock1;
	}

	public void setTrackBlock1 (String trackBlock1) {
		this.trackBlock1 = trackBlock1;
		commitNeeded = true;
	}

	public String getActualTrackBlock1 () {
		return trackBlock1;
	}

	public String getTrackBlock2 () {
		if (commitNeeded)
			return "";
		else
			return trackBlock2;
	}

	public void setTrackBlock2 (String trackBlock2) {
		this.trackBlock2 = trackBlock2;
		commitNeeded = true;
	}

	public String getActualTrackBlock2 () {
		return trackBlock2;
	}

	public String getTrackBlock3 () {
		if (commitNeeded)
			return "";
		else
			return trackBlock3;
	}

	public void setTrackBlock3 (String trackBlock3) {
		this.trackBlock3 = trackBlock3;
		commitNeeded = true;
	}

	public String getActualTrackBlock3 () {
		return trackBlock3;
	}

	public String getDownloadHeader () {
		if (commitNeeded)
			return "";
		else
			return downloadHeader;
	}

	public void setDownloadHeader (String downloadHeader) {
		this.downloadHeader = downloadHeader;
		commitNeeded = true;
	}

	public String getActualDownloadHeader () {
		return downloadHeader;
	}

	public String getDownloadBlock1 () {
		if (commitNeeded)
			return "";
		else
			return downloadBlock1;
	}

	public void setDownloadBlock1 (String downloadBlock1) {
		this.downloadBlock1 = downloadBlock1;
		commitNeeded = true;
	}

	public String getActualDownloadBlock1 () {
		return downloadBlock1;
	}

	public String getDownloadBlock2 () {
		if (commitNeeded)
			return "";
		else
			return downloadBlock2;
	}

	public void setDownloadBlock2 (String downloadBlock2) {
		this.downloadBlock2 = downloadBlock2;
		commitNeeded = true;
	}

	public String getActualDownloadBlock2 () {
		return downloadBlock2;
	}

	public String getDownloadBlock3 () {
		if (commitNeeded)
			return "";
		else
			return downloadBlock3;
	}

	public void setDownloadBlock3 (String downloadBlock3) {
		this.downloadBlock3 = downloadBlock3;
		commitNeeded = true;
	}

	public String getActualDownloadBlock3 () {
		return downloadBlock3;
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

	public static String prepareHeaderValue() throws JspException {
		try {
			return currentInstance.getPrepareHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function prepareHeaderValue()");
		}
	}

	public static String prepareBlockValue() throws JspException {
		try {
			return currentInstance.getPrepareBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function prepareBlockValue()");
		}
	}

	public static String submitHeaderValue() throws JspException {
		try {
			return currentInstance.getSubmitHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitHeaderValue()");
		}
	}

	public static String submitBlock1Value() throws JspException {
		try {
			return currentInstance.getSubmitBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitBlock1Value()");
		}
	}

	public static String submitBlock2Value() throws JspException {
		try {
			return currentInstance.getSubmitBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function submitBlock2Value()");
		}
	}

	public static String trackHeaderValue() throws JspException {
		try {
			return currentInstance.getTrackHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function trackHeaderValue()");
		}
	}

	public static String trackBlock1Value() throws JspException {
		try {
			return currentInstance.getTrackBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function trackBlock1Value()");
		}
	}

	public static String trackBlock2Value() throws JspException {
		try {
			return currentInstance.getTrackBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function trackBlock2Value()");
		}
	}

	public static String trackBlock3Value() throws JspException {
		try {
			return currentInstance.getTrackBlock3();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function trackBlock3Value()");
		}
	}

	public static String downloadHeaderValue() throws JspException {
		try {
			return currentInstance.getDownloadHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function downloadHeaderValue()");
		}
	}

	public static String downloadBlock1Value() throws JspException {
		try {
			return currentInstance.getDownloadBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function downloadBlock1Value()");
		}
	}

	public static String downloadBlock2Value() throws JspException {
		try {
			return currentInstance.getDownloadBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function downloadBlock2Value()");
		}
	}

	public static String downloadBlock3Value() throws JspException {
		try {
			return currentInstance.getDownloadBlock3();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function downloadBlock3Value()");
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
		prepareHeader = null;
		prepareBlock = null;
		submitHeader = null;
		submitBlock1 = null;
		submitBlock2 = null;
		trackHeader = null;
		trackBlock1 = null;
		trackBlock2 = null;
		trackBlock3 = null;
		downloadHeader = null;
		downloadBlock1 = null;
		downloadBlock2 = null;
		downloadBlock3 = null;
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
