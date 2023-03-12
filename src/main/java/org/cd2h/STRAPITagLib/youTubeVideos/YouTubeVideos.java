package org.cd2h.STRAPITagLib.youTubeVideos;

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
public class YouTubeVideos extends STRAPITagLibTagSupport {

	static YouTubeVideos currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(YouTubeVideos.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String url = null;
	int width = 0;
	int height = 0;
	String footer = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private YouTubeVideos cachedYouTubeVideos = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			YouTubeVideosIterator theYouTubeVideosIterator = (YouTubeVideosIterator)findAncestorWithClass(this, YouTubeVideosIterator.class);

			if (theYouTubeVideosIterator != null) {
				ID = theYouTubeVideosIterator.getID();
			}

			if (theYouTubeVideosIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new YouTubeVideos and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a YouTubeVideos from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,url,width,height,footer,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.you_tube_videos where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (url == null)
						url = rs.getString(2);
					if (width == 0)
						width = rs.getInt(3);
					if (height == 0)
						height = rs.getInt(4);
					if (footer == null)
						footer = rs.getString(5);
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
			YouTubeVideos currentYouTubeVideos = (YouTubeVideos) pageContext.getAttribute("tag_youTubeVideos");
			if(currentYouTubeVideos != null){
				cachedYouTubeVideos = currentYouTubeVideos;
			}
			currentYouTubeVideos = this;
			pageContext.setAttribute((var == null ? "tag_youTubeVideos" : var), currentYouTubeVideos);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedYouTubeVideos != null){
				pageContext.setAttribute((var == null ? "tag_youTubeVideos" : var), this.cachedYouTubeVideos);
			}else{
				pageContext.removeAttribute((var == null ? "tag_youTubeVideos" : var));
				this.cachedYouTubeVideos = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.you_tube_videos set header = ?, url = ?, width = ?, height = ?, footer = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, url );
				stmt.setInt( 3, width );
				stmt.setInt( 4, height );
				stmt.setString( 5, footer );
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
			log.debug("generating new YouTubeVideos " + ID);
		}

		if (header == null){
			header = "";
		}
		if (url == null){
			url = "";
		}
		if (footer == null){
			footer = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.you_tube_videos(header,url,width,height,footer,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,url);
		stmt.setInt(3,width);
		stmt.setInt(4,height);
		stmt.setString(5,footer);
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

		log.debug("generating new YouTubeVideos " + ID);

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

	public int getWidth () {
		return width;
	}

	public void setWidth (int width) {
		this.width = width;
		commitNeeded = true;
	}

	public int getActualWidth () {
		return width;
	}

	public int getHeight () {
		return height;
	}

	public void setHeight (int height) {
		this.height = height;
		commitNeeded = true;
	}

	public int getActualHeight () {
		return height;
	}

	public String getFooter () {
		if (commitNeeded)
			return "";
		else
			return footer;
	}

	public void setFooter (String footer) {
		this.footer = footer;
		commitNeeded = true;
	}

	public String getActualFooter () {
		return footer;
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

	public static String urlValue() throws JspException {
		try {
			return currentInstance.getUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function urlValue()");
		}
	}

	public static Integer widthValue() throws JspException {
		try {
			return currentInstance.getWidth();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function widthValue()");
		}
	}

	public static Integer heightValue() throws JspException {
		try {
			return currentInstance.getHeight();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function heightValue()");
		}
	}

	public static String footerValue() throws JspException {
		try {
			return currentInstance.getFooter();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function footerValue()");
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
		url = null;
		width = 0;
		height = 0;
		footer = null;
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