package org.cd2h.STRAPITagLib.leadershipsBioGroupsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.bioGroups.BioGroups;
import org.cd2h.STRAPITagLib.leaderships.Leaderships;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class LeadershipsBioGroupsLinks extends STRAPITagLibTagSupport {

	static LeadershipsBioGroupsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(LeadershipsBioGroupsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int leadershipId = 0;
	int bioGroupId = 0;
	double bioGroupOrder = 0.0;

	private String var = null;

	private LeadershipsBioGroupsLinks cachedLeadershipsBioGroupsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			BioGroups theBioGroups = (BioGroups)findAncestorWithClass(this, BioGroups.class);
			if (theBioGroups!= null)
				parentEntities.addElement(theBioGroups);
			Leaderships theLeaderships = (Leaderships)findAncestorWithClass(this, Leaderships.class);
			if (theLeaderships!= null)
				parentEntities.addElement(theLeaderships);

			if (theBioGroups == null) {
			} else {
				bioGroupId = theBioGroups.getID();
			}
			if (theLeaderships == null) {
			} else {
				leadershipId = theLeaderships.getID();
			}

			LeadershipsBioGroupsLinksIterator theLeadershipsBioGroupsLinksIterator = (LeadershipsBioGroupsLinksIterator)findAncestorWithClass(this, LeadershipsBioGroupsLinksIterator.class);

			if (theLeadershipsBioGroupsLinksIterator != null) {
				ID = theLeadershipsBioGroupsLinksIterator.getID();
			}

			if (theLeadershipsBioGroupsLinksIterator == null && theBioGroups == null && theLeaderships == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new LeadershipsBioGroupsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theLeadershipsBioGroupsLinksIterator == null && theBioGroups != null && theLeaderships == null) {
				// an ID was provided as an attribute - we need to load a LeadershipsBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select leadership_id,bio_group_id,bio_group_order from strapi.leaderships_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (leadershipId == 0)
						leadershipId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theLeadershipsBioGroupsLinksIterator == null && theBioGroups == null && theLeaderships != null) {
				// an ID was provided as an attribute - we need to load a LeadershipsBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select leadership_id,bio_group_id,bio_group_order from strapi.leaderships_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (leadershipId == 0)
						leadershipId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a LeadershipsBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select leadership_id,bio_group_id,bio_group_order from strapi.leaderships_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (leadershipId == 0)
						leadershipId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
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
			LeadershipsBioGroupsLinks currentLeadershipsBioGroupsLinks = (LeadershipsBioGroupsLinks) pageContext.getAttribute("tag_leadershipsBioGroupsLinks");
			if(currentLeadershipsBioGroupsLinks != null){
				cachedLeadershipsBioGroupsLinks = currentLeadershipsBioGroupsLinks;
			}
			currentLeadershipsBioGroupsLinks = this;
			pageContext.setAttribute((var == null ? "tag_leadershipsBioGroupsLinks" : var), currentLeadershipsBioGroupsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedLeadershipsBioGroupsLinks != null){
				pageContext.setAttribute((var == null ? "tag_leadershipsBioGroupsLinks" : var), this.cachedLeadershipsBioGroupsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_leadershipsBioGroupsLinks" : var));
				this.cachedLeadershipsBioGroupsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.leaderships_bio_groups_links set leadership_id = ?, bio_group_id = ?, bio_group_order = ? where id = ? ");
				if ( leadershipId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, leadershipId );
				}
				if ( bioGroupId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, bioGroupId );
				}
				stmt.setDouble( 3, bioGroupOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.leaderships_bio_groups_links(leadership_id,bio_group_id,bio_group_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (leadershipId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,leadershipId);
		}
		if (bioGroupId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,bioGroupId);
		}
		stmt.setDouble(3,bioGroupOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new LeadershipsBioGroupsLinks " + ID);

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

	public int getLeadershipId () {
		return leadershipId;
	}

	public void setLeadershipId (int leadershipId) {
		this.leadershipId = leadershipId;
		commitNeeded = true;
	}

	public int getActualLeadershipId () {
		return leadershipId;
	}

	public int getBioGroupId () {
		return bioGroupId;
	}

	public void setBioGroupId (int bioGroupId) {
		this.bioGroupId = bioGroupId;
		commitNeeded = true;
	}

	public int getActualBioGroupId () {
		return bioGroupId;
	}

	public double getBioGroupOrder () {
		return bioGroupOrder;
	}

	public void setBioGroupOrder (double bioGroupOrder) {
		this.bioGroupOrder = bioGroupOrder;
		commitNeeded = true;
	}

	public double getActualBioGroupOrder () {
		return bioGroupOrder;
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

	public static Integer leadershipIdValue() throws JspException {
		try {
			return currentInstance.getLeadershipId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function leadershipIdValue()");
		}
	}

	public static Integer bioGroupIdValue() throws JspException {
		try {
			return currentInstance.getBioGroupId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioGroupIdValue()");
		}
	}

	public static Double bioGroupOrderValue() throws JspException {
		try {
			return currentInstance.getBioGroupOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioGroupOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		leadershipId = 0;
		bioGroupId = 0;
		bioGroupOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
