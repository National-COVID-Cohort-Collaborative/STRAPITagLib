package org.cd2h.STRAPITagLib.navItemsNavColumnLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.navColumns.NavColumns;
import org.cd2h.STRAPITagLib.navItems.NavItems;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class NavItemsNavColumnLinks extends STRAPITagLibTagSupport {

	static NavItemsNavColumnLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(NavItemsNavColumnLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int navItemId = 0;
	int navColumnId = 0;
	double navItemOrder = 0.0;

	private String var = null;

	private NavItemsNavColumnLinks cachedNavItemsNavColumnLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			NavColumns theNavColumns = (NavColumns)findAncestorWithClass(this, NavColumns.class);
			if (theNavColumns!= null)
				parentEntities.addElement(theNavColumns);
			NavItems theNavItems = (NavItems)findAncestorWithClass(this, NavItems.class);
			if (theNavItems!= null)
				parentEntities.addElement(theNavItems);

			if (theNavColumns == null) {
			} else {
				navColumnId = theNavColumns.getID();
			}
			if (theNavItems == null) {
			} else {
				navItemId = theNavItems.getID();
			}

			NavItemsNavColumnLinksIterator theNavItemsNavColumnLinksIterator = (NavItemsNavColumnLinksIterator)findAncestorWithClass(this, NavItemsNavColumnLinksIterator.class);

			if (theNavItemsNavColumnLinksIterator != null) {
				ID = theNavItemsNavColumnLinksIterator.getID();
			}

			if (theNavItemsNavColumnLinksIterator == null && theNavColumns == null && theNavItems == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new NavItemsNavColumnLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theNavItemsNavColumnLinksIterator == null && theNavColumns != null && theNavItems == null) {
				// an ID was provided as an attribute - we need to load a NavItemsNavColumnLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_item_id,nav_column_id,nav_item_order from strapi.nav_items_nav_column_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navItemId == 0)
						navItemId = rs.getInt(1);
					if (navColumnId == 0)
						navColumnId = rs.getInt(2);
					if (navItemOrder == 0.0)
						navItemOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theNavItemsNavColumnLinksIterator == null && theNavColumns == null && theNavItems != null) {
				// an ID was provided as an attribute - we need to load a NavItemsNavColumnLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_item_id,nav_column_id,nav_item_order from strapi.nav_items_nav_column_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navItemId == 0)
						navItemId = rs.getInt(1);
					if (navColumnId == 0)
						navColumnId = rs.getInt(2);
					if (navItemOrder == 0.0)
						navItemOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a NavItemsNavColumnLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_item_id,nav_column_id,nav_item_order from strapi.nav_items_nav_column_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navItemId == 0)
						navItemId = rs.getInt(1);
					if (navColumnId == 0)
						navColumnId = rs.getInt(2);
					if (navItemOrder == 0.0)
						navItemOrder = rs.getDouble(3);
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
			NavItemsNavColumnLinks currentNavItemsNavColumnLinks = (NavItemsNavColumnLinks) pageContext.getAttribute("tag_navItemsNavColumnLinks");
			if(currentNavItemsNavColumnLinks != null){
				cachedNavItemsNavColumnLinks = currentNavItemsNavColumnLinks;
			}
			currentNavItemsNavColumnLinks = this;
			pageContext.setAttribute((var == null ? "tag_navItemsNavColumnLinks" : var), currentNavItemsNavColumnLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedNavItemsNavColumnLinks != null){
				pageContext.setAttribute((var == null ? "tag_navItemsNavColumnLinks" : var), this.cachedNavItemsNavColumnLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_navItemsNavColumnLinks" : var));
				this.cachedNavItemsNavColumnLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.nav_items_nav_column_links set nav_item_id = ?, nav_column_id = ?, nav_item_order = ? where id = ? ");
				if ( navItemId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, navItemId );
				}
				if ( navColumnId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, navColumnId );
				}
				stmt.setDouble( 3, navItemOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.nav_items_nav_column_links(nav_item_id,nav_column_id,nav_item_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (navItemId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,navItemId);
		}
		if (navColumnId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,navColumnId);
		}
		stmt.setDouble(3,navItemOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new NavItemsNavColumnLinks " + ID);

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

	public int getNavItemId () {
		return navItemId;
	}

	public void setNavItemId (int navItemId) {
		this.navItemId = navItemId;
		commitNeeded = true;
	}

	public int getActualNavItemId () {
		return navItemId;
	}

	public int getNavColumnId () {
		return navColumnId;
	}

	public void setNavColumnId (int navColumnId) {
		this.navColumnId = navColumnId;
		commitNeeded = true;
	}

	public int getActualNavColumnId () {
		return navColumnId;
	}

	public double getNavItemOrder () {
		return navItemOrder;
	}

	public void setNavItemOrder (double navItemOrder) {
		this.navItemOrder = navItemOrder;
		commitNeeded = true;
	}

	public double getActualNavItemOrder () {
		return navItemOrder;
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

	public static Integer navItemIdValue() throws JspException {
		try {
			return currentInstance.getNavItemId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navItemIdValue()");
		}
	}

	public static Integer navColumnIdValue() throws JspException {
		try {
			return currentInstance.getNavColumnId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navColumnIdValue()");
		}
	}

	public static Double navItemOrderValue() throws JspException {
		try {
			return currentInstance.getNavItemOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navItemOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		navItemId = 0;
		navColumnId = 0;
		navItemOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
