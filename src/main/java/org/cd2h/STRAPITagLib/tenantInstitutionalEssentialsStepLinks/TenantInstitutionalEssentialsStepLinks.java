package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsStepLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;
import org.cd2h.STRAPITagLib.tenantInstitutionalEssentials.TenantInstitutionalEssentials;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsStepLinks extends STRAPITagLibTagSupport {

	static TenantInstitutionalEssentialsStepLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsStepLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int tenantInstitutionalEssentialId = 0;
	int contentImageBlockRightId = 0;
	double contentImageBlockRightOrder = 0.0;

	private String var = null;

	private TenantInstitutionalEssentialsStepLinks cachedTenantInstitutionalEssentialsStepLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
			if (theContentImageBlockRights!= null)
				parentEntities.addElement(theContentImageBlockRights);
			TenantInstitutionalEssentials theTenantInstitutionalEssentials = (TenantInstitutionalEssentials)findAncestorWithClass(this, TenantInstitutionalEssentials.class);
			if (theTenantInstitutionalEssentials!= null)
				parentEntities.addElement(theTenantInstitutionalEssentials);

			if (theContentImageBlockRights == null) {
			} else {
				contentImageBlockRightId = theContentImageBlockRights.getID();
			}
			if (theTenantInstitutionalEssentials == null) {
			} else {
				tenantInstitutionalEssentialId = theTenantInstitutionalEssentials.getID();
			}

			TenantInstitutionalEssentialsStepLinksIterator theTenantInstitutionalEssentialsStepLinksIterator = (TenantInstitutionalEssentialsStepLinksIterator)findAncestorWithClass(this, TenantInstitutionalEssentialsStepLinksIterator.class);

			if (theTenantInstitutionalEssentialsStepLinksIterator != null) {
				ID = theTenantInstitutionalEssentialsStepLinksIterator.getID();
			}

			if (theTenantInstitutionalEssentialsStepLinksIterator == null && theContentImageBlockRights == null && theTenantInstitutionalEssentials == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TenantInstitutionalEssentialsStepLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theTenantInstitutionalEssentialsStepLinksIterator == null && theContentImageBlockRights != null && theTenantInstitutionalEssentials == null) {
				// an ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsStepLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,content_image_block_right_id,content_image_block_right_order from strapi.tenant_institutional_essentials_step_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theTenantInstitutionalEssentialsStepLinksIterator == null && theContentImageBlockRights == null && theTenantInstitutionalEssentials != null) {
				// an ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsStepLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,content_image_block_right_id,content_image_block_right_order from strapi.tenant_institutional_essentials_step_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsStepLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,content_image_block_right_id,content_image_block_right_order from strapi.tenant_institutional_essentials_step_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
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
			TenantInstitutionalEssentialsStepLinks currentTenantInstitutionalEssentialsStepLinks = (TenantInstitutionalEssentialsStepLinks) pageContext.getAttribute("tag_tenantInstitutionalEssentialsStepLinks");
			if(currentTenantInstitutionalEssentialsStepLinks != null){
				cachedTenantInstitutionalEssentialsStepLinks = currentTenantInstitutionalEssentialsStepLinks;
			}
			currentTenantInstitutionalEssentialsStepLinks = this;
			pageContext.setAttribute((var == null ? "tag_tenantInstitutionalEssentialsStepLinks" : var), currentTenantInstitutionalEssentialsStepLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTenantInstitutionalEssentialsStepLinks != null){
				pageContext.setAttribute((var == null ? "tag_tenantInstitutionalEssentialsStepLinks" : var), this.cachedTenantInstitutionalEssentialsStepLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_tenantInstitutionalEssentialsStepLinks" : var));
				this.cachedTenantInstitutionalEssentialsStepLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.tenant_institutional_essentials_step_links set tenant_institutional_essential_id = ?, content_image_block_right_id = ?, content_image_block_right_order = ? where id = ? ");
				if ( tenantInstitutionalEssentialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, tenantInstitutionalEssentialId );
				}
				if ( contentImageBlockRightId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, contentImageBlockRightId );
				}
				stmt.setDouble( 3, contentImageBlockRightOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.tenant_institutional_essentials_step_links(tenant_institutional_essential_id,content_image_block_right_id,content_image_block_right_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (tenantInstitutionalEssentialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,tenantInstitutionalEssentialId);
		}
		if (contentImageBlockRightId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,contentImageBlockRightId);
		}
		stmt.setDouble(3,contentImageBlockRightOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new TenantInstitutionalEssentialsStepLinks " + ID);

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

	public int getTenantInstitutionalEssentialId () {
		return tenantInstitutionalEssentialId;
	}

	public void setTenantInstitutionalEssentialId (int tenantInstitutionalEssentialId) {
		this.tenantInstitutionalEssentialId = tenantInstitutionalEssentialId;
		commitNeeded = true;
	}

	public int getActualTenantInstitutionalEssentialId () {
		return tenantInstitutionalEssentialId;
	}

	public int getContentImageBlockRightId () {
		return contentImageBlockRightId;
	}

	public void setContentImageBlockRightId (int contentImageBlockRightId) {
		this.contentImageBlockRightId = contentImageBlockRightId;
		commitNeeded = true;
	}

	public int getActualContentImageBlockRightId () {
		return contentImageBlockRightId;
	}

	public double getContentImageBlockRightOrder () {
		return contentImageBlockRightOrder;
	}

	public void setContentImageBlockRightOrder (double contentImageBlockRightOrder) {
		this.contentImageBlockRightOrder = contentImageBlockRightOrder;
		commitNeeded = true;
	}

	public double getActualContentImageBlockRightOrder () {
		return contentImageBlockRightOrder;
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

	public static Integer tenantInstitutionalEssentialIdValue() throws JspException {
		try {
			return currentInstance.getTenantInstitutionalEssentialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function tenantInstitutionalEssentialIdValue()");
		}
	}

	public static Integer contentImageBlockRightIdValue() throws JspException {
		try {
			return currentInstance.getContentImageBlockRightId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contentImageBlockRightIdValue()");
		}
	}

	public static Double contentImageBlockRightOrderValue() throws JspException {
		try {
			return currentInstance.getContentImageBlockRightOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contentImageBlockRightOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		tenantInstitutionalEssentialId = 0;
		contentImageBlockRightId = 0;
		contentImageBlockRightOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
