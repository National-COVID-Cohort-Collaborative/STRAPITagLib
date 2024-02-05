package org.cd2h.STRAPITagLib.navColumnsNavBarLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.navBars.NavBars;
import org.cd2h.STRAPITagLib.navColumns.NavColumns;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class NavColumnsNavBarLinks extends STRAPITagLibTagSupport {

	static NavColumnsNavBarLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(NavColumnsNavBarLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int navColumnId = 0;
	int navBarId = 0;
	double navColumnOrder = 0.0;

	private String var = null;

	private NavColumnsNavBarLinks cachedNavColumnsNavBarLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			NavBars theNavBars = (NavBars)findAncestorWithClass(this, NavBars.class);
			if (theNavBars!= null)
				parentEntities.addElement(theNavBars);
			NavColumns theNavColumns = (NavColumns)findAncestorWithClass(this, NavColumns.class);
			if (theNavColumns!= null)
				parentEntities.addElement(theNavColumns);

			if (theNavBars == null) {
			} else {
				navBarId = theNavBars.getID();
			}
			if (theNavColumns == null) {
			} else {
				navColumnId = theNavColumns.getID();
			}

			NavColumnsNavBarLinksIterator theNavColumnsNavBarLinksIterator = (NavColumnsNavBarLinksIterator)findAncestorWithClass(this, NavColumnsNavBarLinksIterator.class);

			if (theNavColumnsNavBarLinksIterator != null) {
				ID = theNavColumnsNavBarLinksIterator.getID();
			}

			if (theNavColumnsNavBarLinksIterator == null && theNavBars == null && theNavColumns == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new NavColumnsNavBarLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theNavColumnsNavBarLinksIterator == null && theNavBars != null && theNavColumns == null) {
				// an ID was provided as an attribute - we need to load a NavColumnsNavBarLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_column_id,nav_bar_id,nav_column_order from strapi.nav_columns_nav_bar_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navColumnId == 0)
						navColumnId = rs.getInt(1);
					if (navBarId == 0)
						navBarId = rs.getInt(2);
					if (navColumnOrder == 0.0)
						navColumnOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theNavColumnsNavBarLinksIterator == null && theNavBars == null && theNavColumns != null) {
				// an ID was provided as an attribute - we need to load a NavColumnsNavBarLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_column_id,nav_bar_id,nav_column_order from strapi.nav_columns_nav_bar_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navColumnId == 0)
						navColumnId = rs.getInt(1);
					if (navBarId == 0)
						navBarId = rs.getInt(2);
					if (navColumnOrder == 0.0)
						navColumnOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a NavColumnsNavBarLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select nav_column_id,nav_bar_id,nav_column_order from strapi.nav_columns_nav_bar_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (navColumnId == 0)
						navColumnId = rs.getInt(1);
					if (navBarId == 0)
						navBarId = rs.getInt(2);
					if (navColumnOrder == 0.0)
						navColumnOrder = rs.getDouble(3);
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
			NavColumnsNavBarLinks currentNavColumnsNavBarLinks = (NavColumnsNavBarLinks) pageContext.getAttribute("tag_navColumnsNavBarLinks");
			if(currentNavColumnsNavBarLinks != null){
				cachedNavColumnsNavBarLinks = currentNavColumnsNavBarLinks;
			}
			currentNavColumnsNavBarLinks = this;
			pageContext.setAttribute((var == null ? "tag_navColumnsNavBarLinks" : var), currentNavColumnsNavBarLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedNavColumnsNavBarLinks != null){
				pageContext.setAttribute((var == null ? "tag_navColumnsNavBarLinks" : var), this.cachedNavColumnsNavBarLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_navColumnsNavBarLinks" : var));
				this.cachedNavColumnsNavBarLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.nav_columns_nav_bar_links set nav_column_id = ?, nav_bar_id = ?, nav_column_order = ? where id = ? ");
				if ( navColumnId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, navColumnId );
				}
				if ( navBarId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, navBarId );
				}
				stmt.setDouble( 3, navColumnOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.nav_columns_nav_bar_links(nav_column_id,nav_bar_id,nav_column_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (navColumnId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,navColumnId);
		}
		if (navBarId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,navBarId);
		}
		stmt.setDouble(3,navColumnOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new NavColumnsNavBarLinks " + ID);

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

	public int getNavBarId () {
		return navBarId;
	}

	public void setNavBarId (int navBarId) {
		this.navBarId = navBarId;
		commitNeeded = true;
	}

	public int getActualNavBarId () {
		return navBarId;
	}

	public double getNavColumnOrder () {
		return navColumnOrder;
	}

	public void setNavColumnOrder (double navColumnOrder) {
		this.navColumnOrder = navColumnOrder;
		commitNeeded = true;
	}

	public double getActualNavColumnOrder () {
		return navColumnOrder;
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

	public static Integer navColumnIdValue() throws JspException {
		try {
			return currentInstance.getNavColumnId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navColumnIdValue()");
		}
	}

	public static Integer navBarIdValue() throws JspException {
		try {
			return currentInstance.getNavBarId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navBarIdValue()");
		}
	}

	public static Double navColumnOrderValue() throws JspException {
		try {
			return currentInstance.getNavColumnOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function navColumnOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		navColumnId = 0;
		navBarId = 0;
		navColumnOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
