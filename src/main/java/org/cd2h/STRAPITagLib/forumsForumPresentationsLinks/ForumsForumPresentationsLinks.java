package org.cd2h.STRAPITagLib.forumsForumPresentationsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.forumPresentations.ForumPresentations;
import org.cd2h.STRAPITagLib.forums.Forums;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class ForumsForumPresentationsLinks extends STRAPITagLibTagSupport {

	static ForumsForumPresentationsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(ForumsForumPresentationsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int forumId = 0;
	int forumPresentationId = 0;
	double forumPresentationOrder = 0.0;

	private String var = null;

	private ForumsForumPresentationsLinks cachedForumsForumPresentationsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ForumPresentations theForumPresentations = (ForumPresentations)findAncestorWithClass(this, ForumPresentations.class);
			if (theForumPresentations!= null)
				parentEntities.addElement(theForumPresentations);
			Forums theForums = (Forums)findAncestorWithClass(this, Forums.class);
			if (theForums!= null)
				parentEntities.addElement(theForums);

			if (theForumPresentations == null) {
			} else {
				forumPresentationId = theForumPresentations.getID();
			}
			if (theForums == null) {
			} else {
				forumId = theForums.getID();
			}

			ForumsForumPresentationsLinksIterator theForumsForumPresentationsLinksIterator = (ForumsForumPresentationsLinksIterator)findAncestorWithClass(this, ForumsForumPresentationsLinksIterator.class);

			if (theForumsForumPresentationsLinksIterator != null) {
				ID = theForumsForumPresentationsLinksIterator.getID();
			}

			if (theForumsForumPresentationsLinksIterator == null && theForumPresentations == null && theForums == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new ForumsForumPresentationsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theForumsForumPresentationsLinksIterator == null && theForumPresentations != null && theForums == null) {
				// an ID was provided as an attribute - we need to load a ForumsForumPresentationsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select forum_id,forum_presentation_id,forum_presentation_order from strapi.forums_forum_presentations_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (forumId == 0)
						forumId = rs.getInt(1);
					if (forumPresentationId == 0)
						forumPresentationId = rs.getInt(2);
					if (forumPresentationOrder == 0.0)
						forumPresentationOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theForumsForumPresentationsLinksIterator == null && theForumPresentations == null && theForums != null) {
				// an ID was provided as an attribute - we need to load a ForumsForumPresentationsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select forum_id,forum_presentation_id,forum_presentation_order from strapi.forums_forum_presentations_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (forumId == 0)
						forumId = rs.getInt(1);
					if (forumPresentationId == 0)
						forumPresentationId = rs.getInt(2);
					if (forumPresentationOrder == 0.0)
						forumPresentationOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a ForumsForumPresentationsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select forum_id,forum_presentation_id,forum_presentation_order from strapi.forums_forum_presentations_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (forumId == 0)
						forumId = rs.getInt(1);
					if (forumPresentationId == 0)
						forumPresentationId = rs.getInt(2);
					if (forumPresentationOrder == 0.0)
						forumPresentationOrder = rs.getDouble(3);
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
			ForumsForumPresentationsLinks currentForumsForumPresentationsLinks = (ForumsForumPresentationsLinks) pageContext.getAttribute("tag_forumsForumPresentationsLinks");
			if(currentForumsForumPresentationsLinks != null){
				cachedForumsForumPresentationsLinks = currentForumsForumPresentationsLinks;
			}
			currentForumsForumPresentationsLinks = this;
			pageContext.setAttribute((var == null ? "tag_forumsForumPresentationsLinks" : var), currentForumsForumPresentationsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedForumsForumPresentationsLinks != null){
				pageContext.setAttribute((var == null ? "tag_forumsForumPresentationsLinks" : var), this.cachedForumsForumPresentationsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_forumsForumPresentationsLinks" : var));
				this.cachedForumsForumPresentationsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.forums_forum_presentations_links set forum_id = ?, forum_presentation_id = ?, forum_presentation_order = ? where id = ? ");
				if ( forumId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, forumId );
				}
				if ( forumPresentationId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, forumPresentationId );
				}
				stmt.setDouble( 3, forumPresentationOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.forums_forum_presentations_links(forum_id,forum_presentation_id,forum_presentation_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (forumId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,forumId);
		}
		if (forumPresentationId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,forumPresentationId);
		}
		stmt.setDouble(3,forumPresentationOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new ForumsForumPresentationsLinks " + ID);

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

	public int getForumId () {
		return forumId;
	}

	public void setForumId (int forumId) {
		this.forumId = forumId;
		commitNeeded = true;
	}

	public int getActualForumId () {
		return forumId;
	}

	public int getForumPresentationId () {
		return forumPresentationId;
	}

	public void setForumPresentationId (int forumPresentationId) {
		this.forumPresentationId = forumPresentationId;
		commitNeeded = true;
	}

	public int getActualForumPresentationId () {
		return forumPresentationId;
	}

	public double getForumPresentationOrder () {
		return forumPresentationOrder;
	}

	public void setForumPresentationOrder (double forumPresentationOrder) {
		this.forumPresentationOrder = forumPresentationOrder;
		commitNeeded = true;
	}

	public double getActualForumPresentationOrder () {
		return forumPresentationOrder;
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

	public static Integer forumIdValue() throws JspException {
		try {
			return currentInstance.getForumId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function forumIdValue()");
		}
	}

	public static Integer forumPresentationIdValue() throws JspException {
		try {
			return currentInstance.getForumPresentationId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function forumPresentationIdValue()");
		}
	}

	public static Double forumPresentationOrderValue() throws JspException {
		try {
			return currentInstance.getForumPresentationOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function forumPresentationOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		forumId = 0;
		forumPresentationId = 0;
		forumPresentationOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
