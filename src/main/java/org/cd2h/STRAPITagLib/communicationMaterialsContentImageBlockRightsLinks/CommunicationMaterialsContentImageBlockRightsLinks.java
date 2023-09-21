package org.cd2h.STRAPITagLib.communicationMaterialsContentImageBlockRightsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.communicationMaterials.CommunicationMaterials;
import org.cd2h.STRAPITagLib.contentImageBlockRights.ContentImageBlockRights;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class CommunicationMaterialsContentImageBlockRightsLinks extends STRAPITagLibTagSupport {

	static CommunicationMaterialsContentImageBlockRightsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(CommunicationMaterialsContentImageBlockRightsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int communicationMaterialId = 0;
	int contentImageBlockRightId = 0;
	double contentImageBlockRightOrder = 0.0;

	private String var = null;

	private CommunicationMaterialsContentImageBlockRightsLinks cachedCommunicationMaterialsContentImageBlockRightsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			CommunicationMaterials theCommunicationMaterials = (CommunicationMaterials)findAncestorWithClass(this, CommunicationMaterials.class);
			if (theCommunicationMaterials!= null)
				parentEntities.addElement(theCommunicationMaterials);
			ContentImageBlockRights theContentImageBlockRights = (ContentImageBlockRights)findAncestorWithClass(this, ContentImageBlockRights.class);
			if (theContentImageBlockRights!= null)
				parentEntities.addElement(theContentImageBlockRights);

			if (theCommunicationMaterials == null) {
			} else {
				communicationMaterialId = theCommunicationMaterials.getID();
			}
			if (theContentImageBlockRights == null) {
			} else {
				contentImageBlockRightId = theContentImageBlockRights.getID();
			}

			CommunicationMaterialsContentImageBlockRightsLinksIterator theCommunicationMaterialsContentImageBlockRightsLinksIterator = (CommunicationMaterialsContentImageBlockRightsLinksIterator)findAncestorWithClass(this, CommunicationMaterialsContentImageBlockRightsLinksIterator.class);

			if (theCommunicationMaterialsContentImageBlockRightsLinksIterator != null) {
				ID = theCommunicationMaterialsContentImageBlockRightsLinksIterator.getID();
			}

			if (theCommunicationMaterialsContentImageBlockRightsLinksIterator == null && theCommunicationMaterials == null && theContentImageBlockRights == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new CommunicationMaterialsContentImageBlockRightsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theCommunicationMaterialsContentImageBlockRightsLinksIterator == null && theCommunicationMaterials != null && theContentImageBlockRights == null) {
				// an ID was provided as an attribute - we need to load a CommunicationMaterialsContentImageBlockRightsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select communication_material_id,content_image_block_right_id,content_image_block_right_order from strapi.communication_materials_content_image_block_rights_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (communicationMaterialId == 0)
						communicationMaterialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theCommunicationMaterialsContentImageBlockRightsLinksIterator == null && theCommunicationMaterials == null && theContentImageBlockRights != null) {
				// an ID was provided as an attribute - we need to load a CommunicationMaterialsContentImageBlockRightsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select communication_material_id,content_image_block_right_id,content_image_block_right_order from strapi.communication_materials_content_image_block_rights_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (communicationMaterialId == 0)
						communicationMaterialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a CommunicationMaterialsContentImageBlockRightsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select communication_material_id,content_image_block_right_id,content_image_block_right_order from strapi.communication_materials_content_image_block_rights_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (communicationMaterialId == 0)
						communicationMaterialId = rs.getInt(1);
					if (contentImageBlockRightId == 0)
						contentImageBlockRightId = rs.getInt(2);
					if (contentImageBlockRightOrder == 0.0)
						contentImageBlockRightOrder = rs.getDouble(3);
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
			CommunicationMaterialsContentImageBlockRightsLinks currentCommunicationMaterialsContentImageBlockRightsLinks = (CommunicationMaterialsContentImageBlockRightsLinks) pageContext.getAttribute("tag_communicationMaterialsContentImageBlockRightsLinks");
			if(currentCommunicationMaterialsContentImageBlockRightsLinks != null){
				cachedCommunicationMaterialsContentImageBlockRightsLinks = currentCommunicationMaterialsContentImageBlockRightsLinks;
			}
			currentCommunicationMaterialsContentImageBlockRightsLinks = this;
			pageContext.setAttribute((var == null ? "tag_communicationMaterialsContentImageBlockRightsLinks" : var), currentCommunicationMaterialsContentImageBlockRightsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedCommunicationMaterialsContentImageBlockRightsLinks != null){
				pageContext.setAttribute((var == null ? "tag_communicationMaterialsContentImageBlockRightsLinks" : var), this.cachedCommunicationMaterialsContentImageBlockRightsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_communicationMaterialsContentImageBlockRightsLinks" : var));
				this.cachedCommunicationMaterialsContentImageBlockRightsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.communication_materials_content_image_block_rights_links set communication_material_id = ?, content_image_block_right_id = ?, content_image_block_right_order = ? where id = ? ");
				if ( communicationMaterialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, communicationMaterialId );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.communication_materials_content_image_block_rights_links(communication_material_id,content_image_block_right_id,content_image_block_right_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (communicationMaterialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,communicationMaterialId);
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

		irs.close();
		stmt.close();

		log.debug("generating new CommunicationMaterialsContentImageBlockRightsLinks " + ID);

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

	public int getCommunicationMaterialId () {
		return communicationMaterialId;
	}

	public void setCommunicationMaterialId (int communicationMaterialId) {
		this.communicationMaterialId = communicationMaterialId;
		commitNeeded = true;
	}

	public int getActualCommunicationMaterialId () {
		return communicationMaterialId;
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

	public static Integer communicationMaterialIdValue() throws JspException {
		try {
			return currentInstance.getCommunicationMaterialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function communicationMaterialIdValue()");
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
		communicationMaterialId = 0;
		contentImageBlockRightId = 0;
		contentImageBlockRightOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
