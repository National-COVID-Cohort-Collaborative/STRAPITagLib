package org.cd2h.STRAPITagLib.tenantInstitutionalEssentialsNavTilesLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.navTiles.NavTiles;
import org.cd2h.STRAPITagLib.tenantInstitutionalEssentials.TenantInstitutionalEssentials;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class TenantInstitutionalEssentialsNavTilesLinks extends STRAPITagLibTagSupport {

	static TenantInstitutionalEssentialsNavTilesLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TenantInstitutionalEssentialsNavTilesLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int tenantInstitutionalEssentialId = 0;
	int navTileId = 0;
	double navTileOrder = 0.0;

	private String var = null;

	private TenantInstitutionalEssentialsNavTilesLinks cachedTenantInstitutionalEssentialsNavTilesLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			NavTiles theNavTiles = (NavTiles)findAncestorWithClass(this, NavTiles.class);
			if (theNavTiles!= null)
				parentEntities.addElement(theNavTiles);
			TenantInstitutionalEssentials theTenantInstitutionalEssentials = (TenantInstitutionalEssentials)findAncestorWithClass(this, TenantInstitutionalEssentials.class);
			if (theTenantInstitutionalEssentials!= null)
				parentEntities.addElement(theTenantInstitutionalEssentials);

			if (theNavTiles == null) {
			} else {
				navTileId = theNavTiles.getID();
			}
			if (theTenantInstitutionalEssentials == null) {
			} else {
				tenantInstitutionalEssentialId = theTenantInstitutionalEssentials.getID();
			}

			TenantInstitutionalEssentialsNavTilesLinksIterator theTenantInstitutionalEssentialsNavTilesLinksIterator = (TenantInstitutionalEssentialsNavTilesLinksIterator)findAncestorWithClass(this, TenantInstitutionalEssentialsNavTilesLinksIterator.class);

			if (theTenantInstitutionalEssentialsNavTilesLinksIterator != null) {
				ID = theTenantInstitutionalEssentialsNavTilesLinksIterator.getID();
			}

			if (theTenantInstitutionalEssentialsNavTilesLinksIterator == null && theNavTiles == null && theTenantInstitutionalEssentials == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TenantInstitutionalEssentialsNavTilesLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theTenantInstitutionalEssentialsNavTilesLinksIterator == null && theNavTiles != null && theTenantInstitutionalEssentials == null) {
				// an ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsNavTilesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,nav_tile_id,nav_tile_order from strapi.tenant_institutional_essentials_nav_tiles_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (navTileId == 0)
						navTileId = rs.getInt(2);
					if (navTileOrder == 0.0)
						navTileOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theTenantInstitutionalEssentialsNavTilesLinksIterator == null && theNavTiles == null && theTenantInstitutionalEssentials != null) {
				// an ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsNavTilesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,nav_tile_id,nav_tile_order from strapi.tenant_institutional_essentials_nav_tiles_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (navTileId == 0)
						navTileId = rs.getInt(2);
					if (navTileOrder == 0.0)
						navTileOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a TenantInstitutionalEssentialsNavTilesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tenant_institutional_essential_id,nav_tile_id,nav_tile_order from strapi.tenant_institutional_essentials_nav_tiles_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tenantInstitutionalEssentialId == 0)
						tenantInstitutionalEssentialId = rs.getInt(1);
					if (navTileId == 0)
						navTileId = rs.getInt(2);
					if (navTileOrder == 0.0)
						navTileOrder = rs.getDouble(3);
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
			TenantInstitutionalEssentialsNavTilesLinks currentTenantInstitutionalEssentialsNavTilesLinks = (TenantInstitutionalEssentialsNavTilesLinks) pageContext.getAttribute("tag_tenantInstitutionalEssentialsNavTilesLinks");
			if(currentTenantInstitutionalEssentialsNavTilesLinks != null){
				cachedTenantInstitutionalEssentialsNavTilesLinks = currentTenantInstitutionalEssentialsNavTilesLinks;
			}
			currentTenantInstitutionalEssentialsNavTilesLinks = this;
			pageContext.setAttribute((var == null ? "tag_tenantInstitutionalEssentialsNavTilesLinks" : var), currentTenantInstitutionalEssentialsNavTilesLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTenantInstitutionalEssentialsNavTilesLinks != null){
				pageContext.setAttribute((var == null ? "tag_tenantInstitutionalEssentialsNavTilesLinks" : var), this.cachedTenantInstitutionalEssentialsNavTilesLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_tenantInstitutionalEssentialsNavTilesLinks" : var));
				this.cachedTenantInstitutionalEssentialsNavTilesLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.tenant_institutional_essentials_nav_tiles_links set tenant_institutional_essential_id = ?, nav_tile_id = ?, nav_tile_order = ? where id = ? ");
				if ( tenantInstitutionalEssentialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, tenantInstitutionalEssentialId );
				}
				if ( navTileId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, navTileId );
				}
				stmt.setDouble( 3, navTileOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.tenant_institutional_essentials_nav_tiles_links(tenant_institutional_essential_id,nav_tile_id,nav_tile_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (tenantInstitutionalEssentialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,tenantInstitutionalEssentialId);
		}
		if (navTileId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,navTileId);
		}
		stmt.setDouble(3,navTileOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new TenantInstitutionalEssentialsNavTilesLinks " + ID);

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

	public int getNavTileId () {
		return navTileId;
	}

	public void setNavTileId (int navTileId) {
		this.navTileId = navTileId;
		commitNeeded = true;
	}

	public int getActualNavTileId () {
		return navTileId;
	}

	public double getNavTileOrder () {
		return navTileOrder;
	}

	public void setNavTileOrder (double navTileOrder) {
		this.navTileOrder = navTileOrder;
		commitNeeded = true;
	}

	public double getActualNavTileOrder () {
		return navTileOrder;
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

	public static Integer navTileIdValue() throws JspException {
		try {
			return currentInstance.getNavTileId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navTileIdValue()");
		}
	}

	public static Double navTileOrderValue() throws JspException {
		try {
			return currentInstance.getNavTileOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navTileOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		tenantInstitutionalEssentialId = 0;
		navTileId = 0;
		navTileOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
