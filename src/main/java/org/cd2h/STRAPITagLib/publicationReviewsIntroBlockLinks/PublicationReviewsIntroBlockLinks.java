package org.cd2h.STRAPITagLib.publicationReviewsIntroBlockLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.contentImageBlockLefts.ContentImageBlockLefts;
import org.cd2h.STRAPITagLib.publicationReviews.PublicationReviews;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PublicationReviewsIntroBlockLinks extends STRAPITagLibTagSupport {

	static PublicationReviewsIntroBlockLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PublicationReviewsIntroBlockLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int publicationReviewId = 0;
	int contentImageBlockLeftId = 0;

	private String var = null;

	private PublicationReviewsIntroBlockLinks cachedPublicationReviewsIntroBlockLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ContentImageBlockLefts theContentImageBlockLefts = (ContentImageBlockLefts)findAncestorWithClass(this, ContentImageBlockLefts.class);
			if (theContentImageBlockLefts!= null)
				parentEntities.addElement(theContentImageBlockLefts);
			PublicationReviews thePublicationReviews = (PublicationReviews)findAncestorWithClass(this, PublicationReviews.class);
			if (thePublicationReviews!= null)
				parentEntities.addElement(thePublicationReviews);

			if (theContentImageBlockLefts == null) {
			} else {
				contentImageBlockLeftId = theContentImageBlockLefts.getID();
			}
			if (thePublicationReviews == null) {
			} else {
				publicationReviewId = thePublicationReviews.getID();
			}

			PublicationReviewsIntroBlockLinksIterator thePublicationReviewsIntroBlockLinksIterator = (PublicationReviewsIntroBlockLinksIterator)findAncestorWithClass(this, PublicationReviewsIntroBlockLinksIterator.class);

			if (thePublicationReviewsIntroBlockLinksIterator != null) {
				ID = thePublicationReviewsIntroBlockLinksIterator.getID();
			}

			if (thePublicationReviewsIntroBlockLinksIterator == null && theContentImageBlockLefts == null && thePublicationReviews == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PublicationReviewsIntroBlockLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (thePublicationReviewsIntroBlockLinksIterator == null && theContentImageBlockLefts != null && thePublicationReviews == null) {
				// an ID was provided as an attribute - we need to load a PublicationReviewsIntroBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,content_image_block_left_id from strapi.publication_reviews_intro_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (thePublicationReviewsIntroBlockLinksIterator == null && theContentImageBlockLefts == null && thePublicationReviews != null) {
				// an ID was provided as an attribute - we need to load a PublicationReviewsIntroBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,content_image_block_left_id from strapi.publication_reviews_intro_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PublicationReviewsIntroBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,content_image_block_left_id from strapi.publication_reviews_intro_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
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
			PublicationReviewsIntroBlockLinks currentPublicationReviewsIntroBlockLinks = (PublicationReviewsIntroBlockLinks) pageContext.getAttribute("tag_publicationReviewsIntroBlockLinks");
			if(currentPublicationReviewsIntroBlockLinks != null){
				cachedPublicationReviewsIntroBlockLinks = currentPublicationReviewsIntroBlockLinks;
			}
			currentPublicationReviewsIntroBlockLinks = this;
			pageContext.setAttribute((var == null ? "tag_publicationReviewsIntroBlockLinks" : var), currentPublicationReviewsIntroBlockLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPublicationReviewsIntroBlockLinks != null){
				pageContext.setAttribute((var == null ? "tag_publicationReviewsIntroBlockLinks" : var), this.cachedPublicationReviewsIntroBlockLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_publicationReviewsIntroBlockLinks" : var));
				this.cachedPublicationReviewsIntroBlockLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.publication_reviews_intro_block_links set publication_review_id = ?, content_image_block_left_id = ? where id = ? ");
				if ( publicationReviewId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, publicationReviewId );
				}
				if ( contentImageBlockLeftId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, contentImageBlockLeftId );
				}
				stmt.setInt(3,ID);
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.publication_reviews_intro_block_links(publication_review_id,content_image_block_left_id) values (?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (publicationReviewId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,publicationReviewId);
		}
		if (contentImageBlockLeftId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,contentImageBlockLeftId);
		}
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PublicationReviewsIntroBlockLinks " + ID);

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

	public int getPublicationReviewId () {
		return publicationReviewId;
	}

	public void setPublicationReviewId (int publicationReviewId) {
		this.publicationReviewId = publicationReviewId;
		commitNeeded = true;
	}

	public int getActualPublicationReviewId () {
		return publicationReviewId;
	}

	public int getContentImageBlockLeftId () {
		return contentImageBlockLeftId;
	}

	public void setContentImageBlockLeftId (int contentImageBlockLeftId) {
		this.contentImageBlockLeftId = contentImageBlockLeftId;
		commitNeeded = true;
	}

	public int getActualContentImageBlockLeftId () {
		return contentImageBlockLeftId;
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

	public static Integer publicationReviewIdValue() throws JspException {
		try {
			return currentInstance.getPublicationReviewId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function publicationReviewIdValue()");
		}
	}

	public static Integer contentImageBlockLeftIdValue() throws JspException {
		try {
			return currentInstance.getContentImageBlockLeftId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contentImageBlockLeftIdValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		publicationReviewId = 0;
		contentImageBlockLeftId = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
