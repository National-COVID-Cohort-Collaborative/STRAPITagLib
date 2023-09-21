package org.cd2h.STRAPITagLib.domainTeamsLeadsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.bios.Bios;
import org.cd2h.STRAPITagLib.domainTeams.DomainTeams;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class DomainTeamsLeadsLinks extends STRAPITagLibTagSupport {

	static DomainTeamsLeadsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(DomainTeamsLeadsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int domainTeamId = 0;
	int bioId = 0;
	double bioOrder = 0.0;
	double domainTeamOrder = 0.0;

	private String var = null;

	private DomainTeamsLeadsLinks cachedDomainTeamsLeadsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Bios theBios = (Bios)findAncestorWithClass(this, Bios.class);
			if (theBios!= null)
				parentEntities.addElement(theBios);
			DomainTeams theDomainTeams = (DomainTeams)findAncestorWithClass(this, DomainTeams.class);
			if (theDomainTeams!= null)
				parentEntities.addElement(theDomainTeams);

			if (theBios == null) {
			} else {
				bioId = theBios.getID();
			}
			if (theDomainTeams == null) {
			} else {
				domainTeamId = theDomainTeams.getID();
			}

			DomainTeamsLeadsLinksIterator theDomainTeamsLeadsLinksIterator = (DomainTeamsLeadsLinksIterator)findAncestorWithClass(this, DomainTeamsLeadsLinksIterator.class);

			if (theDomainTeamsLeadsLinksIterator != null) {
				ID = theDomainTeamsLeadsLinksIterator.getID();
			}

			if (theDomainTeamsLeadsLinksIterator == null && theBios == null && theDomainTeams == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new DomainTeamsLeadsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theDomainTeamsLeadsLinksIterator == null && theBios != null && theDomainTeams == null) {
				// an ID was provided as an attribute - we need to load a DomainTeamsLeadsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,bio_id,bio_order,domain_team_order from strapi.domain_teams_leads_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (bioId == 0)
						bioId = rs.getInt(2);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(3);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(4);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theDomainTeamsLeadsLinksIterator == null && theBios == null && theDomainTeams != null) {
				// an ID was provided as an attribute - we need to load a DomainTeamsLeadsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,bio_id,bio_order,domain_team_order from strapi.domain_teams_leads_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (bioId == 0)
						bioId = rs.getInt(2);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(3);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(4);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a DomainTeamsLeadsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,bio_id,bio_order,domain_team_order from strapi.domain_teams_leads_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (bioId == 0)
						bioId = rs.getInt(2);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(3);
					if (domainTeamOrder == 0.0)
						domainTeamOrder = rs.getDouble(4);
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
			DomainTeamsLeadsLinks currentDomainTeamsLeadsLinks = (DomainTeamsLeadsLinks) pageContext.getAttribute("tag_domainTeamsLeadsLinks");
			if(currentDomainTeamsLeadsLinks != null){
				cachedDomainTeamsLeadsLinks = currentDomainTeamsLeadsLinks;
			}
			currentDomainTeamsLeadsLinks = this;
			pageContext.setAttribute((var == null ? "tag_domainTeamsLeadsLinks" : var), currentDomainTeamsLeadsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedDomainTeamsLeadsLinks != null){
				pageContext.setAttribute((var == null ? "tag_domainTeamsLeadsLinks" : var), this.cachedDomainTeamsLeadsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_domainTeamsLeadsLinks" : var));
				this.cachedDomainTeamsLeadsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.domain_teams_leads_links set domain_team_id = ?, bio_id = ?, bio_order = ?, domain_team_order = ? where id = ? ");
				if ( domainTeamId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, domainTeamId );
				}
				if ( bioId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, bioId );
				}
				stmt.setDouble( 3, bioOrder );
				stmt.setDouble( 4, domainTeamOrder );
				stmt.setInt(5,ID);
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.domain_teams_leads_links(domain_team_id,bio_id,bio_order,domain_team_order) values (?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (domainTeamId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,domainTeamId);
		}
		if (bioId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,bioId);
		}
		stmt.setDouble(3,bioOrder);
		stmt.setDouble(4,domainTeamOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new DomainTeamsLeadsLinks " + ID);

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

	public int getBioId () {
		return bioId;
	}

	public void setBioId (int bioId) {
		this.bioId = bioId;
		commitNeeded = true;
	}

	public int getActualBioId () {
		return bioId;
	}

	public double getBioOrder () {
		return bioOrder;
	}

	public void setBioOrder (double bioOrder) {
		this.bioOrder = bioOrder;
		commitNeeded = true;
	}

	public double getActualBioOrder () {
		return bioOrder;
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

	public static Integer domainTeamIdValue() throws JspException {
		try {
			return currentInstance.getDomainTeamId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function domainTeamIdValue()");
		}
	}

	public static Integer bioIdValue() throws JspException {
		try {
			return currentInstance.getBioId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioIdValue()");
		}
	}

	public static Double bioOrderValue() throws JspException {
		try {
			return currentInstance.getBioOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioOrderValue()");
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
		domainTeamId = 0;
		bioId = 0;
		bioOrder = 0.0;
		domainTeamOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
