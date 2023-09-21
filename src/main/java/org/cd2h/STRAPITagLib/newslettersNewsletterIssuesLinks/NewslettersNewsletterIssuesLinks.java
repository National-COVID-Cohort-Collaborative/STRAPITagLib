package org.cd2h.STRAPITagLib.newslettersNewsletterIssuesLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.newsletterIssues.NewsletterIssues;
import org.cd2h.STRAPITagLib.newsletters.Newsletters;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class NewslettersNewsletterIssuesLinks extends STRAPITagLibTagSupport {

	static NewslettersNewsletterIssuesLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(NewslettersNewsletterIssuesLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int newsletterId = 0;
	int newsletterIssueId = 0;
	double newsletterIssueOrder = 0.0;

	private String var = null;

	private NewslettersNewsletterIssuesLinks cachedNewslettersNewsletterIssuesLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			NewsletterIssues theNewsletterIssues = (NewsletterIssues)findAncestorWithClass(this, NewsletterIssues.class);
			if (theNewsletterIssues!= null)
				parentEntities.addElement(theNewsletterIssues);
			Newsletters theNewsletters = (Newsletters)findAncestorWithClass(this, Newsletters.class);
			if (theNewsletters!= null)
				parentEntities.addElement(theNewsletters);

			if (theNewsletterIssues == null) {
			} else {
				newsletterIssueId = theNewsletterIssues.getID();
			}
			if (theNewsletters == null) {
			} else {
				newsletterId = theNewsletters.getID();
			}

			NewslettersNewsletterIssuesLinksIterator theNewslettersNewsletterIssuesLinksIterator = (NewslettersNewsletterIssuesLinksIterator)findAncestorWithClass(this, NewslettersNewsletterIssuesLinksIterator.class);

			if (theNewslettersNewsletterIssuesLinksIterator != null) {
				ID = theNewslettersNewsletterIssuesLinksIterator.getID();
			}

			if (theNewslettersNewsletterIssuesLinksIterator == null && theNewsletterIssues == null && theNewsletters == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new NewslettersNewsletterIssuesLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theNewslettersNewsletterIssuesLinksIterator == null && theNewsletterIssues != null && theNewsletters == null) {
				// an ID was provided as an attribute - we need to load a NewslettersNewsletterIssuesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select newsletter_id,newsletter_issue_id,newsletter_issue_order from strapi.newsletters_newsletter_issues_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsletterId == 0)
						newsletterId = rs.getInt(1);
					if (newsletterIssueId == 0)
						newsletterIssueId = rs.getInt(2);
					if (newsletterIssueOrder == 0.0)
						newsletterIssueOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theNewslettersNewsletterIssuesLinksIterator == null && theNewsletterIssues == null && theNewsletters != null) {
				// an ID was provided as an attribute - we need to load a NewslettersNewsletterIssuesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select newsletter_id,newsletter_issue_id,newsletter_issue_order from strapi.newsletters_newsletter_issues_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsletterId == 0)
						newsletterId = rs.getInt(1);
					if (newsletterIssueId == 0)
						newsletterIssueId = rs.getInt(2);
					if (newsletterIssueOrder == 0.0)
						newsletterIssueOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a NewslettersNewsletterIssuesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select newsletter_id,newsletter_issue_id,newsletter_issue_order from strapi.newsletters_newsletter_issues_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsletterId == 0)
						newsletterId = rs.getInt(1);
					if (newsletterIssueId == 0)
						newsletterIssueId = rs.getInt(2);
					if (newsletterIssueOrder == 0.0)
						newsletterIssueOrder = rs.getDouble(3);
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
			NewslettersNewsletterIssuesLinks currentNewslettersNewsletterIssuesLinks = (NewslettersNewsletterIssuesLinks) pageContext.getAttribute("tag_newslettersNewsletterIssuesLinks");
			if(currentNewslettersNewsletterIssuesLinks != null){
				cachedNewslettersNewsletterIssuesLinks = currentNewslettersNewsletterIssuesLinks;
			}
			currentNewslettersNewsletterIssuesLinks = this;
			pageContext.setAttribute((var == null ? "tag_newslettersNewsletterIssuesLinks" : var), currentNewslettersNewsletterIssuesLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedNewslettersNewsletterIssuesLinks != null){
				pageContext.setAttribute((var == null ? "tag_newslettersNewsletterIssuesLinks" : var), this.cachedNewslettersNewsletterIssuesLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_newslettersNewsletterIssuesLinks" : var));
				this.cachedNewslettersNewsletterIssuesLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.newsletters_newsletter_issues_links set newsletter_id = ?, newsletter_issue_id = ?, newsletter_issue_order = ? where id = ? ");
				if ( newsletterId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, newsletterId );
				}
				if ( newsletterIssueId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, newsletterIssueId );
				}
				stmt.setDouble( 3, newsletterIssueOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.newsletters_newsletter_issues_links(newsletter_id,newsletter_issue_id,newsletter_issue_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (newsletterId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,newsletterId);
		}
		if (newsletterIssueId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,newsletterIssueId);
		}
		stmt.setDouble(3,newsletterIssueOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new NewslettersNewsletterIssuesLinks " + ID);

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

	public int getNewsletterId () {
		return newsletterId;
	}

	public void setNewsletterId (int newsletterId) {
		this.newsletterId = newsletterId;
		commitNeeded = true;
	}

	public int getActualNewsletterId () {
		return newsletterId;
	}

	public int getNewsletterIssueId () {
		return newsletterIssueId;
	}

	public void setNewsletterIssueId (int newsletterIssueId) {
		this.newsletterIssueId = newsletterIssueId;
		commitNeeded = true;
	}

	public int getActualNewsletterIssueId () {
		return newsletterIssueId;
	}

	public double getNewsletterIssueOrder () {
		return newsletterIssueOrder;
	}

	public void setNewsletterIssueOrder (double newsletterIssueOrder) {
		this.newsletterIssueOrder = newsletterIssueOrder;
		commitNeeded = true;
	}

	public double getActualNewsletterIssueOrder () {
		return newsletterIssueOrder;
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

	public static Integer newsletterIdValue() throws JspException {
		try {
			return currentInstance.getNewsletterId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function newsletterIdValue()");
		}
	}

	public static Integer newsletterIssueIdValue() throws JspException {
		try {
			return currentInstance.getNewsletterIssueId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function newsletterIssueIdValue()");
		}
	}

	public static Double newsletterIssueOrderValue() throws JspException {
		try {
			return currentInstance.getNewsletterIssueOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function newsletterIssueOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		newsletterId = 0;
		newsletterIssueId = 0;
		newsletterIssueOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
