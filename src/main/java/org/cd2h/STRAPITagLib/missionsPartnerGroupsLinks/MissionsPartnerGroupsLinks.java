package org.cd2h.STRAPITagLib.missionsPartnerGroupsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.missions.Missions;
import org.cd2h.STRAPITagLib.partnerGroups.PartnerGroups;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class MissionsPartnerGroupsLinks extends STRAPITagLibTagSupport {

	static MissionsPartnerGroupsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(MissionsPartnerGroupsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int missionId = 0;
	int partnerGroupId = 0;
	double partnerGroupOrder = 0.0;

	private String var = null;

	private MissionsPartnerGroupsLinks cachedMissionsPartnerGroupsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Missions theMissions = (Missions)findAncestorWithClass(this, Missions.class);
			if (theMissions!= null)
				parentEntities.addElement(theMissions);
			PartnerGroups thePartnerGroups = (PartnerGroups)findAncestorWithClass(this, PartnerGroups.class);
			if (thePartnerGroups!= null)
				parentEntities.addElement(thePartnerGroups);

			if (theMissions == null) {
			} else {
				missionId = theMissions.getID();
			}
			if (thePartnerGroups == null) {
			} else {
				partnerGroupId = thePartnerGroups.getID();
			}

			MissionsPartnerGroupsLinksIterator theMissionsPartnerGroupsLinksIterator = (MissionsPartnerGroupsLinksIterator)findAncestorWithClass(this, MissionsPartnerGroupsLinksIterator.class);

			if (theMissionsPartnerGroupsLinksIterator != null) {
				ID = theMissionsPartnerGroupsLinksIterator.getID();
			}

			if (theMissionsPartnerGroupsLinksIterator == null && theMissions == null && thePartnerGroups == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new MissionsPartnerGroupsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theMissionsPartnerGroupsLinksIterator == null && theMissions != null && thePartnerGroups == null) {
				// an ID was provided as an attribute - we need to load a MissionsPartnerGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select mission_id,partner_group_id,partner_group_order from strapi.missions_partner_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (missionId == 0)
						missionId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerGroupOrder == 0.0)
						partnerGroupOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theMissionsPartnerGroupsLinksIterator == null && theMissions == null && thePartnerGroups != null) {
				// an ID was provided as an attribute - we need to load a MissionsPartnerGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select mission_id,partner_group_id,partner_group_order from strapi.missions_partner_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (missionId == 0)
						missionId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerGroupOrder == 0.0)
						partnerGroupOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a MissionsPartnerGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select mission_id,partner_group_id,partner_group_order from strapi.missions_partner_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (missionId == 0)
						missionId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerGroupOrder == 0.0)
						partnerGroupOrder = rs.getDouble(3);
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
			MissionsPartnerGroupsLinks currentMissionsPartnerGroupsLinks = (MissionsPartnerGroupsLinks) pageContext.getAttribute("tag_missionsPartnerGroupsLinks");
			if(currentMissionsPartnerGroupsLinks != null){
				cachedMissionsPartnerGroupsLinks = currentMissionsPartnerGroupsLinks;
			}
			currentMissionsPartnerGroupsLinks = this;
			pageContext.setAttribute((var == null ? "tag_missionsPartnerGroupsLinks" : var), currentMissionsPartnerGroupsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedMissionsPartnerGroupsLinks != null){
				pageContext.setAttribute((var == null ? "tag_missionsPartnerGroupsLinks" : var), this.cachedMissionsPartnerGroupsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_missionsPartnerGroupsLinks" : var));
				this.cachedMissionsPartnerGroupsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.missions_partner_groups_links set mission_id = ?, partner_group_id = ?, partner_group_order = ? where id = ? ");
				if ( missionId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, missionId );
				}
				if ( partnerGroupId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, partnerGroupId );
				}
				stmt.setDouble( 3, partnerGroupOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.missions_partner_groups_links(mission_id,partner_group_id,partner_group_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (missionId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,missionId);
		}
		if (partnerGroupId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,partnerGroupId);
		}
		stmt.setDouble(3,partnerGroupOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new MissionsPartnerGroupsLinks " + ID);

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

	public int getMissionId () {
		return missionId;
	}

	public void setMissionId (int missionId) {
		this.missionId = missionId;
		commitNeeded = true;
	}

	public int getActualMissionId () {
		return missionId;
	}

	public int getPartnerGroupId () {
		return partnerGroupId;
	}

	public void setPartnerGroupId (int partnerGroupId) {
		this.partnerGroupId = partnerGroupId;
		commitNeeded = true;
	}

	public int getActualPartnerGroupId () {
		return partnerGroupId;
	}

	public double getPartnerGroupOrder () {
		return partnerGroupOrder;
	}

	public void setPartnerGroupOrder (double partnerGroupOrder) {
		this.partnerGroupOrder = partnerGroupOrder;
		commitNeeded = true;
	}

	public double getActualPartnerGroupOrder () {
		return partnerGroupOrder;
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

	public static Integer missionIdValue() throws JspException {
		try {
			return currentInstance.getMissionId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function missionIdValue()");
		}
	}

	public static Integer partnerGroupIdValue() throws JspException {
		try {
			return currentInstance.getPartnerGroupId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function partnerGroupIdValue()");
		}
	}

	public static Double partnerGroupOrderValue() throws JspException {
		try {
			return currentInstance.getPartnerGroupOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function partnerGroupOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		missionId = 0;
		partnerGroupId = 0;
		partnerGroupOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
