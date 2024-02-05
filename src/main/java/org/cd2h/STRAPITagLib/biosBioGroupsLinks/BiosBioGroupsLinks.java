package org.cd2h.STRAPITagLib.biosBioGroupsLinks;

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
import org.cd2h.STRAPITagLib.bios.Bios;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class BiosBioGroupsLinks extends STRAPITagLibTagSupport {

	static BiosBioGroupsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(BiosBioGroupsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int bioId = 0;
	int bioGroupId = 0;
	double bioGroupOrder = 0.0;
	double bioOrder = 0.0;

	private String var = null;

	private BiosBioGroupsLinks cachedBiosBioGroupsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			BioGroups theBioGroups = (BioGroups)findAncestorWithClass(this, BioGroups.class);
			if (theBioGroups!= null)
				parentEntities.addElement(theBioGroups);
			Bios theBios = (Bios)findAncestorWithClass(this, Bios.class);
			if (theBios!= null)
				parentEntities.addElement(theBios);

			if (theBioGroups == null) {
			} else {
				bioGroupId = theBioGroups.getID();
			}
			if (theBios == null) {
			} else {
				bioId = theBios.getID();
			}

			BiosBioGroupsLinksIterator theBiosBioGroupsLinksIterator = (BiosBioGroupsLinksIterator)findAncestorWithClass(this, BiosBioGroupsLinksIterator.class);

			if (theBiosBioGroupsLinksIterator != null) {
				ID = theBiosBioGroupsLinksIterator.getID();
			}

			if (theBiosBioGroupsLinksIterator == null && theBioGroups == null && theBios == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new BiosBioGroupsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theBiosBioGroupsLinksIterator == null && theBioGroups != null && theBios == null) {
				// an ID was provided as an attribute - we need to load a BiosBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select bio_id,bio_group_id,bio_group_order,bio_order from strapi.bios_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (bioId == 0)
						bioId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(4);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theBiosBioGroupsLinksIterator == null && theBioGroups == null && theBios != null) {
				// an ID was provided as an attribute - we need to load a BiosBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select bio_id,bio_group_id,bio_group_order,bio_order from strapi.bios_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (bioId == 0)
						bioId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(4);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a BiosBioGroupsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select bio_id,bio_group_id,bio_group_order,bio_order from strapi.bios_bio_groups_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (bioId == 0)
						bioId = rs.getInt(1);
					if (bioGroupId == 0)
						bioGroupId = rs.getInt(2);
					if (bioGroupOrder == 0.0)
						bioGroupOrder = rs.getDouble(3);
					if (bioOrder == 0.0)
						bioOrder = rs.getDouble(4);
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
			BiosBioGroupsLinks currentBiosBioGroupsLinks = (BiosBioGroupsLinks) pageContext.getAttribute("tag_biosBioGroupsLinks");
			if(currentBiosBioGroupsLinks != null){
				cachedBiosBioGroupsLinks = currentBiosBioGroupsLinks;
			}
			currentBiosBioGroupsLinks = this;
			pageContext.setAttribute((var == null ? "tag_biosBioGroupsLinks" : var), currentBiosBioGroupsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedBiosBioGroupsLinks != null){
				pageContext.setAttribute((var == null ? "tag_biosBioGroupsLinks" : var), this.cachedBiosBioGroupsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_biosBioGroupsLinks" : var));
				this.cachedBiosBioGroupsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.bios_bio_groups_links set bio_id = ?, bio_group_id = ?, bio_group_order = ?, bio_order = ? where id = ? ");
				if ( bioId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, bioId );
				}
				if ( bioGroupId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, bioGroupId );
				}
				stmt.setDouble( 3, bioGroupOrder );
				stmt.setDouble( 4, bioOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.bios_bio_groups_links(bio_id,bio_group_id,bio_group_order,bio_order) values (?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (bioId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,bioId);
		}
		if (bioGroupId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,bioGroupId);
		}
		stmt.setDouble(3,bioGroupOrder);
		stmt.setDouble(4,bioOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new BiosBioGroupsLinks " + ID);

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

	public static Integer bioIdValue() throws JspException {
		try {
			return currentInstance.getBioId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioIdValue()");
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

	public static Double bioOrderValue() throws JspException {
		try {
			return currentInstance.getBioOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function bioOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		bioId = 0;
		bioGroupId = 0;
		bioGroupOrder = 0.0;
		bioOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
