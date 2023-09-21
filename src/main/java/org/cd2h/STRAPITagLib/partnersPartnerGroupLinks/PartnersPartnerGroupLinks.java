package org.cd2h.STRAPITagLib.partnersPartnerGroupLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.partnerGroups.PartnerGroups;
import org.cd2h.STRAPITagLib.partners.Partners;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PartnersPartnerGroupLinks extends STRAPITagLibTagSupport {

	static PartnersPartnerGroupLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PartnersPartnerGroupLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int partnerId = 0;
	int partnerGroupId = 0;
	double partnerOrder = 0.0;

	private String var = null;

	private PartnersPartnerGroupLinks cachedPartnersPartnerGroupLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			PartnerGroups thePartnerGroups = (PartnerGroups)findAncestorWithClass(this, PartnerGroups.class);
			if (thePartnerGroups!= null)
				parentEntities.addElement(thePartnerGroups);
			Partners thePartners = (Partners)findAncestorWithClass(this, Partners.class);
			if (thePartners!= null)
				parentEntities.addElement(thePartners);

			if (thePartnerGroups == null) {
			} else {
				partnerGroupId = thePartnerGroups.getID();
			}
			if (thePartners == null) {
			} else {
				partnerId = thePartners.getID();
			}

			PartnersPartnerGroupLinksIterator thePartnersPartnerGroupLinksIterator = (PartnersPartnerGroupLinksIterator)findAncestorWithClass(this, PartnersPartnerGroupLinksIterator.class);

			if (thePartnersPartnerGroupLinksIterator != null) {
				ID = thePartnersPartnerGroupLinksIterator.getID();
			}

			if (thePartnersPartnerGroupLinksIterator == null && thePartnerGroups == null && thePartners == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PartnersPartnerGroupLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (thePartnersPartnerGroupLinksIterator == null && thePartnerGroups != null && thePartners == null) {
				// an ID was provided as an attribute - we need to load a PartnersPartnerGroupLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select partner_id,partner_group_id,partner_order from strapi.partners_partner_group_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (partnerId == 0)
						partnerId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerOrder == 0.0)
						partnerOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (thePartnersPartnerGroupLinksIterator == null && thePartnerGroups == null && thePartners != null) {
				// an ID was provided as an attribute - we need to load a PartnersPartnerGroupLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select partner_id,partner_group_id,partner_order from strapi.partners_partner_group_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (partnerId == 0)
						partnerId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerOrder == 0.0)
						partnerOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PartnersPartnerGroupLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select partner_id,partner_group_id,partner_order from strapi.partners_partner_group_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (partnerId == 0)
						partnerId = rs.getInt(1);
					if (partnerGroupId == 0)
						partnerGroupId = rs.getInt(2);
					if (partnerOrder == 0.0)
						partnerOrder = rs.getDouble(3);
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
			PartnersPartnerGroupLinks currentPartnersPartnerGroupLinks = (PartnersPartnerGroupLinks) pageContext.getAttribute("tag_partnersPartnerGroupLinks");
			if(currentPartnersPartnerGroupLinks != null){
				cachedPartnersPartnerGroupLinks = currentPartnersPartnerGroupLinks;
			}
			currentPartnersPartnerGroupLinks = this;
			pageContext.setAttribute((var == null ? "tag_partnersPartnerGroupLinks" : var), currentPartnersPartnerGroupLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPartnersPartnerGroupLinks != null){
				pageContext.setAttribute((var == null ? "tag_partnersPartnerGroupLinks" : var), this.cachedPartnersPartnerGroupLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_partnersPartnerGroupLinks" : var));
				this.cachedPartnersPartnerGroupLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.partners_partner_group_links set partner_id = ?, partner_group_id = ?, partner_order = ? where id = ? ");
				if ( partnerId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, partnerId );
				}
				if ( partnerGroupId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, partnerGroupId );
				}
				stmt.setDouble( 3, partnerOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.partners_partner_group_links(partner_id,partner_group_id,partner_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (partnerId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,partnerId);
		}
		if (partnerGroupId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,partnerGroupId);
		}
		stmt.setDouble(3,partnerOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PartnersPartnerGroupLinks " + ID);

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

	public int getPartnerId () {
		return partnerId;
	}

	public void setPartnerId (int partnerId) {
		this.partnerId = partnerId;
		commitNeeded = true;
	}

	public int getActualPartnerId () {
		return partnerId;
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

	public double getPartnerOrder () {
		return partnerOrder;
	}

	public void setPartnerOrder (double partnerOrder) {
		this.partnerOrder = partnerOrder;
		commitNeeded = true;
	}

	public double getActualPartnerOrder () {
		return partnerOrder;
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

	public static Integer partnerIdValue() throws JspException {
		try {
			return currentInstance.getPartnerId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function partnerIdValue()");
		}
	}

	public static Integer partnerGroupIdValue() throws JspException {
		try {
			return currentInstance.getPartnerGroupId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function partnerGroupIdValue()");
		}
	}

	public static Double partnerOrderValue() throws JspException {
		try {
			return currentInstance.getPartnerOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function partnerOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		partnerId = 0;
		partnerGroupId = 0;
		partnerOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
