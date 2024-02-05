package org.cd2h.STRAPITagLib.researcherEssentialsJoinBlockLinks;

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
import org.cd2h.STRAPITagLib.researcherEssentials.ResearcherEssentials;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class ResearcherEssentialsJoinBlockLinks extends STRAPITagLibTagSupport {

	static ResearcherEssentialsJoinBlockLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(ResearcherEssentialsJoinBlockLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int researcherEssentialId = 0;
	int contentImageBlockLeftId = 0;

	private String var = null;

	private ResearcherEssentialsJoinBlockLinks cachedResearcherEssentialsJoinBlockLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ContentImageBlockLefts theContentImageBlockLefts = (ContentImageBlockLefts)findAncestorWithClass(this, ContentImageBlockLefts.class);
			if (theContentImageBlockLefts!= null)
				parentEntities.addElement(theContentImageBlockLefts);
			ResearcherEssentials theResearcherEssentials = (ResearcherEssentials)findAncestorWithClass(this, ResearcherEssentials.class);
			if (theResearcherEssentials!= null)
				parentEntities.addElement(theResearcherEssentials);

			if (theContentImageBlockLefts == null) {
			} else {
				contentImageBlockLeftId = theContentImageBlockLefts.getID();
			}
			if (theResearcherEssentials == null) {
			} else {
				researcherEssentialId = theResearcherEssentials.getID();
			}

			ResearcherEssentialsJoinBlockLinksIterator theResearcherEssentialsJoinBlockLinksIterator = (ResearcherEssentialsJoinBlockLinksIterator)findAncestorWithClass(this, ResearcherEssentialsJoinBlockLinksIterator.class);

			if (theResearcherEssentialsJoinBlockLinksIterator != null) {
				ID = theResearcherEssentialsJoinBlockLinksIterator.getID();
			}

			if (theResearcherEssentialsJoinBlockLinksIterator == null && theContentImageBlockLefts == null && theResearcherEssentials == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new ResearcherEssentialsJoinBlockLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theResearcherEssentialsJoinBlockLinksIterator == null && theContentImageBlockLefts != null && theResearcherEssentials == null) {
				// an ID was provided as an attribute - we need to load a ResearcherEssentialsJoinBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select researcher_essential_id,content_image_block_left_id from strapi.researcher_essentials_join_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (researcherEssentialId == 0)
						researcherEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theResearcherEssentialsJoinBlockLinksIterator == null && theContentImageBlockLefts == null && theResearcherEssentials != null) {
				// an ID was provided as an attribute - we need to load a ResearcherEssentialsJoinBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select researcher_essential_id,content_image_block_left_id from strapi.researcher_essentials_join_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (researcherEssentialId == 0)
						researcherEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a ResearcherEssentialsJoinBlockLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select researcher_essential_id,content_image_block_left_id from strapi.researcher_essentials_join_block_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (researcherEssentialId == 0)
						researcherEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
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
			ResearcherEssentialsJoinBlockLinks currentResearcherEssentialsJoinBlockLinks = (ResearcherEssentialsJoinBlockLinks) pageContext.getAttribute("tag_researcherEssentialsJoinBlockLinks");
			if(currentResearcherEssentialsJoinBlockLinks != null){
				cachedResearcherEssentialsJoinBlockLinks = currentResearcherEssentialsJoinBlockLinks;
			}
			currentResearcherEssentialsJoinBlockLinks = this;
			pageContext.setAttribute((var == null ? "tag_researcherEssentialsJoinBlockLinks" : var), currentResearcherEssentialsJoinBlockLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedResearcherEssentialsJoinBlockLinks != null){
				pageContext.setAttribute((var == null ? "tag_researcherEssentialsJoinBlockLinks" : var), this.cachedResearcherEssentialsJoinBlockLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_researcherEssentialsJoinBlockLinks" : var));
				this.cachedResearcherEssentialsJoinBlockLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.researcher_essentials_join_block_links set researcher_essential_id = ?, content_image_block_left_id = ? where id = ? ");
				if ( researcherEssentialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, researcherEssentialId );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.researcher_essentials_join_block_links(researcher_essential_id,content_image_block_left_id) values (?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (researcherEssentialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,researcherEssentialId);
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

		stmt.close();

		log.debug("generating new ResearcherEssentialsJoinBlockLinks " + ID);

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

	public int getResearcherEssentialId () {
		return researcherEssentialId;
	}

	public void setResearcherEssentialId (int researcherEssentialId) {
		this.researcherEssentialId = researcherEssentialId;
		commitNeeded = true;
	}

	public int getActualResearcherEssentialId () {
		return researcherEssentialId;
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

	public static Integer researcherEssentialIdValue() throws JspException {
		try {
			return currentInstance.getResearcherEssentialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function researcherEssentialIdValue()");
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
		researcherEssentialId = 0;
		contentImageBlockLeftId = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
