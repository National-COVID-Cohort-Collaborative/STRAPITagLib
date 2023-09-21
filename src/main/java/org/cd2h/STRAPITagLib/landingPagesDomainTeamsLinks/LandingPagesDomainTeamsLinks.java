package org.cd2h.STRAPITagLib.landingPagesDomainTeamsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.domainTeams.DomainTeams;
import org.cd2h.STRAPITagLib.landingPages.LandingPages;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class LandingPagesDomainTeamsLinks extends STRAPITagLibTagSupport {

	static LandingPagesDomainTeamsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(LandingPagesDomainTeamsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int landingPageId = 0;
	int domainTeamId = 0;
	double domainTeamOrder = 0.0;

	private String var = null;

	private LandingPagesDomainTeamsLinks cachedLandingPagesDomainTeamsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			DomainTeams theDomainTeams = (DomainTeams)findAncestorWithClass(this, DomainTeams.class);
			if (theDomainTeams!= null)
				parentEntities.addElement(theDomainTeams);
			LandingPages theLandingPages = (LandingPages)findAncestorWithClass(this, LandingPages.class);
			if (theLandingPages!= null)
				parentEntities.addElement(theLandingPages);

			if (theDomainTeams == null) {
			} else {
				domainTeamId = theDomainTeams.getID();
			}
			if (theLandingPages == null) {
			} else {
				landingPageId = theLandingPages.getID();
			}

			LandingPagesDomainTeamsLinksIterator theLandingPagesDomainTeamsLinksIterator = (LandingPagesDomainTeamsLinksIterator)findAncestorWithClass(this, LandingPagesDomainTeamsLinksIterator.class);

			if (theLandingPagesDomainTeamsLinksIterator != null) {
				ID = theLandingPagesDomainTeamsLinksIterator.getID();
			}

			if (theLandingPagesDomainTeamsLinksIterator == null && theDomainTeams == null && theLandingPages == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new LandingPagesDomainTeamsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theLandingPagesDomainTeamsLinksIterator == null && theDomainTeams != null && theLandingPages == null) {
				// an ID was provided as an attribute - we need to load a LandingPagesDomainTeamsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,domain_team_id,domain_team_order from strapi.landing_pages_domain_teams_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(2);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theLandingPagesDomainTeamsLinksIterator == null && theDomainTeams == null && theLandingPages != null) {
				// an ID was provided as an attribute - we need to load a LandingPagesDomainTeamsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,domain_team_id,domain_team_order from strapi.landing_pages_domain_teams_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(2);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a LandingPagesDomainTeamsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select landing_page_id,domain_team_id,domain_team_order from strapi.landing_pages_domain_teams_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (landingPageId == 0)
						landingPageId = rs.getInt(1);
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(2);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(3);
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
			LandingPagesDomainTeamsLinks currentLandingPagesDomainTeamsLinks = (LandingPagesDomainTeamsLinks) pageContext.getAttribute("tag_landingPagesDomainTeamsLinks");
			if(currentLandingPagesDomainTeamsLinks != null){
				cachedLandingPagesDomainTeamsLinks = currentLandingPagesDomainTeamsLinks;
			}
			currentLandingPagesDomainTeamsLinks = this;
			pageContext.setAttribute((var == null ? "tag_landingPagesDomainTeamsLinks" : var), currentLandingPagesDomainTeamsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedLandingPagesDomainTeamsLinks != null){
				pageContext.setAttribute((var == null ? "tag_landingPagesDomainTeamsLinks" : var), this.cachedLandingPagesDomainTeamsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_landingPagesDomainTeamsLinks" : var));
				this.cachedLandingPagesDomainTeamsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.landing_pages_domain_teams_links set landing_page_id = ?, domain_team_id = ?, domain_team_order = ? where id = ? ");
				if ( landingPageId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, landingPageId );
				}
				if ( domainTeamId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, domainTeamId );
				}
				stmt.setDouble( 3, domainTeamOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.landing_pages_domain_teams_links(landing_page_id,domain_team_id,domain_team_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (landingPageId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,landingPageId);
		}
		if (domainTeamId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,domainTeamId);
		}
		stmt.setDouble(3,domainTeamOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new LandingPagesDomainTeamsLinks " + ID);

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

	public int getLandingPageId () {
		return landingPageId;
	}

	public void setLandingPageId (int landingPageId) {
		this.landingPageId = landingPageId;
		commitNeeded = true;
	}

	public int getActualLandingPageId () {
		return landingPageId;
	}

	public int getDomainTeamId () {
		return domainTeamId;
	}

	public void setDomainTeamId (int domainTeamId) {
		this.domainTeamId = domainTeamId;
		commitNeeded = true;
	}

	public int getActualDomainTeamId () {
		return domainTeamId;
	}

	public double getDomainTeamOrder () {
		return domainTeamOrder;
	}

	public void setDomainTeamOrder (double domainTeamOrder) {
		this.domainTeamOrder = domainTeamOrder;
		commitNeeded = true;
	}

	public double getActualDomainTeamOrder () {
		return domainTeamOrder;
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

	public static Integer landingPageIdValue() throws JspException {
		try {
			return currentInstance.getLandingPageId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function landingPageIdValue()");
		}
	}

	public static Integer domainTeamIdValue() throws JspException {
		try {
			return currentInstance.getDomainTeamId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function domainTeamIdValue()");
		}
	}

	public static Double domainTeamOrderValue() throws JspException {
		try {
			return currentInstance.getDomainTeamOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function domainTeamOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		landingPageId = 0;
		domainTeamId = 0;
		domainTeamOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
