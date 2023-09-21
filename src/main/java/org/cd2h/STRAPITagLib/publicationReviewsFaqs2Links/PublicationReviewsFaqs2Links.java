package org.cd2h.STRAPITagLib.publicationReviewsFaqs2Links;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.faqs.Faqs;
import org.cd2h.STRAPITagLib.publicationReviews.PublicationReviews;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PublicationReviewsFaqs2Links extends STRAPITagLibTagSupport {

	static PublicationReviewsFaqs2Links currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PublicationReviewsFaqs2Links.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int publicationReviewId = 0;
	int faqId = 0;
	double faqOrder = 0.0;

	private String var = null;

	private PublicationReviewsFaqs2Links cachedPublicationReviewsFaqs2Links = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Faqs theFaqs = (Faqs)findAncestorWithClass(this, Faqs.class);
			if (theFaqs!= null)
				parentEntities.addElement(theFaqs);
			PublicationReviews thePublicationReviews = (PublicationReviews)findAncestorWithClass(this, PublicationReviews.class);
			if (thePublicationReviews!= null)
				parentEntities.addElement(thePublicationReviews);

			if (theFaqs == null) {
			} else {
				faqId = theFaqs.getID();
			}
			if (thePublicationReviews == null) {
			} else {
				publicationReviewId = thePublicationReviews.getID();
			}

			PublicationReviewsFaqs2LinksIterator thePublicationReviewsFaqs2LinksIterator = (PublicationReviewsFaqs2LinksIterator)findAncestorWithClass(this, PublicationReviewsFaqs2LinksIterator.class);

			if (thePublicationReviewsFaqs2LinksIterator != null) {
				ID = thePublicationReviewsFaqs2LinksIterator.getID();
			}

			if (thePublicationReviewsFaqs2LinksIterator == null && theFaqs == null && thePublicationReviews == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PublicationReviewsFaqs2Links and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (thePublicationReviewsFaqs2LinksIterator == null && theFaqs != null && thePublicationReviews == null) {
				// an ID was provided as an attribute - we need to load a PublicationReviewsFaqs2Links from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,faq_id,faq_order from strapi.publication_reviews_faqs_2_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (thePublicationReviewsFaqs2LinksIterator == null && theFaqs == null && thePublicationReviews != null) {
				// an ID was provided as an attribute - we need to load a PublicationReviewsFaqs2Links from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,faq_id,faq_order from strapi.publication_reviews_faqs_2_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PublicationReviewsFaqs2Links from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select publication_review_id,faq_id,faq_order from strapi.publication_reviews_faqs_2_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (publicationReviewId == 0)
						publicationReviewId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
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
			PublicationReviewsFaqs2Links currentPublicationReviewsFaqs2Links = (PublicationReviewsFaqs2Links) pageContext.getAttribute("tag_publicationReviewsFaqs2Links");
			if(currentPublicationReviewsFaqs2Links != null){
				cachedPublicationReviewsFaqs2Links = currentPublicationReviewsFaqs2Links;
			}
			currentPublicationReviewsFaqs2Links = this;
			pageContext.setAttribute((var == null ? "tag_publicationReviewsFaqs2Links" : var), currentPublicationReviewsFaqs2Links);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPublicationReviewsFaqs2Links != null){
				pageContext.setAttribute((var == null ? "tag_publicationReviewsFaqs2Links" : var), this.cachedPublicationReviewsFaqs2Links);
			}else{
				pageContext.removeAttribute((var == null ? "tag_publicationReviewsFaqs2Links" : var));
				this.cachedPublicationReviewsFaqs2Links = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.publication_reviews_faqs_2_links set publication_review_id = ?, faq_id = ?, faq_order = ? where id = ? ");
				if ( publicationReviewId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, publicationReviewId );
				}
				if ( faqId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, faqId );
				}
				stmt.setDouble( 3, faqOrder );
				stmt.setInt(4,ID);
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.publication_reviews_faqs_2_links(publication_review_id,faq_id,faq_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (publicationReviewId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,publicationReviewId);
		}
		if (faqId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,faqId);
		}
		stmt.setDouble(3,faqOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PublicationReviewsFaqs2Links " + ID);

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

	public int getFaqId () {
		return faqId;
	}

	public void setFaqId (int faqId) {
		this.faqId = faqId;
		commitNeeded = true;
	}

	public int getActualFaqId () {
		return faqId;
	}

	public double getFaqOrder () {
		return faqOrder;
	}

	public void setFaqOrder (double faqOrder) {
		this.faqOrder = faqOrder;
		commitNeeded = true;
	}

	public double getActualFaqOrder () {
		return faqOrder;
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

	public static Integer faqIdValue() throws JspException {
		try {
			return currentInstance.getFaqId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqIdValue()");
		}
	}

	public static Double faqOrderValue() throws JspException {
		try {
			return currentInstance.getFaqOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		publicationReviewId = 0;
		faqId = 0;
		faqOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
