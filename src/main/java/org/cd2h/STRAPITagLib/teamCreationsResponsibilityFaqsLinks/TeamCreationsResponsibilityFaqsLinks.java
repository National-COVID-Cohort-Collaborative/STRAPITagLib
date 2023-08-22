package org.cd2h.STRAPITagLib.teamCreationsResponsibilityFaqsLinks;

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
import org.cd2h.STRAPITagLib.teamCreations.TeamCreations;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class TeamCreationsResponsibilityFaqsLinks extends STRAPITagLibTagSupport {

	static TeamCreationsResponsibilityFaqsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TeamCreationsResponsibilityFaqsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int teamCreationId = 0;
	int faqId = 0;
	double faqOrder = 0.0;

	private String var = null;

	private TeamCreationsResponsibilityFaqsLinks cachedTeamCreationsResponsibilityFaqsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Faqs theFaqs = (Faqs)findAncestorWithClass(this, Faqs.class);
			if (theFaqs!= null)
				parentEntities.addElement(theFaqs);
			TeamCreations theTeamCreations = (TeamCreations)findAncestorWithClass(this, TeamCreations.class);
			if (theTeamCreations!= null)
				parentEntities.addElement(theTeamCreations);

			if (theFaqs == null) {
			} else {
				faqId = theFaqs.getID();
			}
			if (theTeamCreations == null) {
			} else {
				teamCreationId = theTeamCreations.getID();
			}

			TeamCreationsResponsibilityFaqsLinksIterator theTeamCreationsResponsibilityFaqsLinksIterator = (TeamCreationsResponsibilityFaqsLinksIterator)findAncestorWithClass(this, TeamCreationsResponsibilityFaqsLinksIterator.class);

			if (theTeamCreationsResponsibilityFaqsLinksIterator != null) {
				ID = theTeamCreationsResponsibilityFaqsLinksIterator.getID();
			}

			if (theTeamCreationsResponsibilityFaqsLinksIterator == null && theFaqs == null && theTeamCreations == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TeamCreationsResponsibilityFaqsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theTeamCreationsResponsibilityFaqsLinksIterator == null && theFaqs != null && theTeamCreations == null) {
				// an ID was provided as an attribute - we need to load a TeamCreationsResponsibilityFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select team_creation_id,faq_id,faq_order from strapi.team_creations_responsibility_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (teamCreationId == 0)
						teamCreationId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theTeamCreationsResponsibilityFaqsLinksIterator == null && theFaqs == null && theTeamCreations != null) {
				// an ID was provided as an attribute - we need to load a TeamCreationsResponsibilityFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select team_creation_id,faq_id,faq_order from strapi.team_creations_responsibility_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (teamCreationId == 0)
						teamCreationId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a TeamCreationsResponsibilityFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select team_creation_id,faq_id,faq_order from strapi.team_creations_responsibility_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (teamCreationId == 0)
						teamCreationId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
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
			TeamCreationsResponsibilityFaqsLinks currentTeamCreationsResponsibilityFaqsLinks = (TeamCreationsResponsibilityFaqsLinks) pageContext.getAttribute("tag_teamCreationsResponsibilityFaqsLinks");
			if(currentTeamCreationsResponsibilityFaqsLinks != null){
				cachedTeamCreationsResponsibilityFaqsLinks = currentTeamCreationsResponsibilityFaqsLinks;
			}
			currentTeamCreationsResponsibilityFaqsLinks = this;
			pageContext.setAttribute((var == null ? "tag_teamCreationsResponsibilityFaqsLinks" : var), currentTeamCreationsResponsibilityFaqsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTeamCreationsResponsibilityFaqsLinks != null){
				pageContext.setAttribute((var == null ? "tag_teamCreationsResponsibilityFaqsLinks" : var), this.cachedTeamCreationsResponsibilityFaqsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_teamCreationsResponsibilityFaqsLinks" : var));
				this.cachedTeamCreationsResponsibilityFaqsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.team_creations_responsibility_faqs_links set team_creation_id = ?, faq_id = ?, faq_order = ? where id = ? ");
				if ( teamCreationId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, teamCreationId );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.team_creations_responsibility_faqs_links(team_creation_id,faq_id,faq_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (teamCreationId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,teamCreationId);
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

		stmt.close();

		log.debug("generating new TeamCreationsResponsibilityFaqsLinks " + ID);

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

	public int getTeamCreationId () {
		return teamCreationId;
	}

	public void setTeamCreationId (int teamCreationId) {
		this.teamCreationId = teamCreationId;
		commitNeeded = true;
	}

	public int getActualTeamCreationId () {
		return teamCreationId;
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

	public static Integer teamCreationIdValue() throws JspException {
		try {
			return currentInstance.getTeamCreationId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function teamCreationIdValue()");
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
		teamCreationId = 0;
		faqId = 0;
		faqOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
