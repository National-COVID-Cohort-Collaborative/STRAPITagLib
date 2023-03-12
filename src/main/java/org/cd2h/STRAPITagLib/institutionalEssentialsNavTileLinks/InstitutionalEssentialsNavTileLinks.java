package org.cd2h.STRAPITagLib.institutionalEssentialsNavTileLinks;

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
import org.cd2h.STRAPITagLib.institutionalEssentials.InstitutionalEssentials;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class InstitutionalEssentialsNavTileLinks extends STRAPITagLibTagSupport {

	static InstitutionalEssentialsNavTileLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(InstitutionalEssentialsNavTileLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int institutionalEssentialId = 0;
	int contentImageBlockLeftId = 0;
	double contentImageBlockLeftOrder = 0.0;

	private String var = null;

	private InstitutionalEssentialsNavTileLinks cachedInstitutionalEssentialsNavTileLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ContentImageBlockLefts theContentImageBlockLefts = (ContentImageBlockLefts)findAncestorWithClass(this, ContentImageBlockLefts.class);
			if (theContentImageBlockLefts!= null)
				parentEntities.addElement(theContentImageBlockLefts);
			InstitutionalEssentials theInstitutionalEssentials = (InstitutionalEssentials)findAncestorWithClass(this, InstitutionalEssentials.class);
			if (theInstitutionalEssentials!= null)
				parentEntities.addElement(theInstitutionalEssentials);

			if (theContentImageBlockLefts == null) {
			} else {
				contentImageBlockLeftId = theContentImageBlockLefts.getID();
			}
			if (theInstitutionalEssentials == null) {
			} else {
				institutionalEssentialId = theInstitutionalEssentials.getID();
			}

			InstitutionalEssentialsNavTileLinksIterator theInstitutionalEssentialsNavTileLinksIterator = (InstitutionalEssentialsNavTileLinksIterator)findAncestorWithClass(this, InstitutionalEssentialsNavTileLinksIterator.class);

			if (theInstitutionalEssentialsNavTileLinksIterator != null) {
				ID = theInstitutionalEssentialsNavTileLinksIterator.getID();
			}

			if (theInstitutionalEssentialsNavTileLinksIterator == null && theContentImageBlockLefts == null && theInstitutionalEssentials == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new InstitutionalEssentialsNavTileLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theInstitutionalEssentialsNavTileLinksIterator == null && theContentImageBlockLefts != null && theInstitutionalEssentials == null) {
				// an ID was provided as an attribute - we need to load a InstitutionalEssentialsNavTileLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select institutional_essential_id,content_image_block_left_id,content_image_block_left_order from strapi.institutional_essentials_nav_tile_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (institutionalEssentialId == 0)
						institutionalEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					if (contentImageBlockLeftOrder == 0.0)
						contentImageBlockLeftOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theInstitutionalEssentialsNavTileLinksIterator == null && theContentImageBlockLefts == null && theInstitutionalEssentials != null) {
				// an ID was provided as an attribute - we need to load a InstitutionalEssentialsNavTileLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select institutional_essential_id,content_image_block_left_id,content_image_block_left_order from strapi.institutional_essentials_nav_tile_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (institutionalEssentialId == 0)
						institutionalEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					if (contentImageBlockLeftOrder == 0.0)
						contentImageBlockLeftOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a InstitutionalEssentialsNavTileLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select institutional_essential_id,content_image_block_left_id,content_image_block_left_order from strapi.institutional_essentials_nav_tile_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (institutionalEssentialId == 0)
						institutionalEssentialId = rs.getInt(1);
					if (contentImageBlockLeftId == 0)
						contentImageBlockLeftId = rs.getInt(2);
					if (contentImageBlockLeftOrder == 0.0)
						contentImageBlockLeftOrder = rs.getDouble(3);
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
			InstitutionalEssentialsNavTileLinks currentInstitutionalEssentialsNavTileLinks = (InstitutionalEssentialsNavTileLinks) pageContext.getAttribute("tag_institutionalEssentialsNavTileLinks");
			if(currentInstitutionalEssentialsNavTileLinks != null){
				cachedInstitutionalEssentialsNavTileLinks = currentInstitutionalEssentialsNavTileLinks;
			}
			currentInstitutionalEssentialsNavTileLinks = this;
			pageContext.setAttribute((var == null ? "tag_institutionalEssentialsNavTileLinks" : var), currentInstitutionalEssentialsNavTileLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedInstitutionalEssentialsNavTileLinks != null){
				pageContext.setAttribute((var == null ? "tag_institutionalEssentialsNavTileLinks" : var), this.cachedInstitutionalEssentialsNavTileLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_institutionalEssentialsNavTileLinks" : var));
				this.cachedInstitutionalEssentialsNavTileLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.institutional_essentials_nav_tile_links set institutional_essential_id = ?, content_image_block_left_id = ?, content_image_block_left_order = ? where id = ? ");
				if ( institutionalEssentialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, institutionalEssentialId );
				}
				if ( contentImageBlockLeftId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, contentImageBlockLeftId );
				}
				stmt.setDouble( 3, contentImageBlockLeftOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.institutional_essentials_nav_tile_links(institutional_essential_id,content_image_block_left_id,content_image_block_left_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (institutionalEssentialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,institutionalEssentialId);
		}
		if (contentImageBlockLeftId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,contentImageBlockLeftId);
		}
		stmt.setDouble(3,contentImageBlockLeftOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new InstitutionalEssentialsNavTileLinks " + ID);

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

	public int getInstitutionalEssentialId () {
		return institutionalEssentialId;
	}

	public void setInstitutionalEssentialId (int institutionalEssentialId) {
		this.institutionalEssentialId = institutionalEssentialId;
		commitNeeded = true;
	}

	public int getActualInstitutionalEssentialId () {
		return institutionalEssentialId;
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

	public double getContentImageBlockLeftOrder () {
		return contentImageBlockLeftOrder;
	}

	public void setContentImageBlockLeftOrder (double contentImageBlockLeftOrder) {
		this.contentImageBlockLeftOrder = contentImageBlockLeftOrder;
		commitNeeded = true;
	}

	public double getActualContentImageBlockLeftOrder () {
		return contentImageBlockLeftOrder;
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

	public static Integer institutionalEssentialIdValue() throws JspException {
		try {
			return currentInstance.getInstitutionalEssentialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function institutionalEssentialIdValue()");
		}
	}

	public static Integer contentImageBlockLeftIdValue() throws JspException {
		try {
			return currentInstance.getContentImageBlockLeftId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contentImageBlockLeftIdValue()");
		}
	}

	public static Double contentImageBlockLeftOrderValue() throws JspException {
		try {
			return currentInstance.getContentImageBlockLeftOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contentImageBlockLeftOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		institutionalEssentialId = 0;
		contentImageBlockLeftId = 0;
		contentImageBlockLeftOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
