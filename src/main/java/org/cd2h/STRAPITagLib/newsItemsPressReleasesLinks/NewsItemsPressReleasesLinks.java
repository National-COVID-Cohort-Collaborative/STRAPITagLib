package org.cd2h.STRAPITagLib.newsItemsPressReleasesLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.newsItems.NewsItems;
import org.cd2h.STRAPITagLib.pressReleases.PressReleases;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class NewsItemsPressReleasesLinks extends STRAPITagLibTagSupport {

	static NewsItemsPressReleasesLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(NewsItemsPressReleasesLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int newsItemId = 0;
	int pressReleaseId = 0;
	double pressReleaseOrder = 0.0;

	private String var = null;

	private NewsItemsPressReleasesLinks cachedNewsItemsPressReleasesLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			NewsItems theNewsItems = (NewsItems)findAncestorWithClass(this, NewsItems.class);
			if (theNewsItems!= null)
				parentEntities.addElement(theNewsItems);
			PressReleases thePressReleases = (PressReleases)findAncestorWithClass(this, PressReleases.class);
			if (thePressReleases!= null)
				parentEntities.addElement(thePressReleases);

			if (theNewsItems == null) {
			} else {
				newsItemId = theNewsItems.getID();
			}
			if (thePressReleases == null) {
			} else {
				pressReleaseId = thePressReleases.getID();
			}

			NewsItemsPressReleasesLinksIterator theNewsItemsPressReleasesLinksIterator = (NewsItemsPressReleasesLinksIterator)findAncestorWithClass(this, NewsItemsPressReleasesLinksIterator.class);

			if (theNewsItemsPressReleasesLinksIterator != null) {
				ID = theNewsItemsPressReleasesLinksIterator.getID();
			}

			if (theNewsItemsPressReleasesLinksIterator == null && theNewsItems == null && thePressReleases == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new NewsItemsPressReleasesLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theNewsItemsPressReleasesLinksIterator == null && theNewsItems != null && thePressReleases == null) {
				// an ID was provided as an attribute - we need to load a NewsItemsPressReleasesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select news_item_id,press_release_id,press_release_order from strapi.news_items_press_releases_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsItemId == 0)
						newsItemId = rs.getInt(1);
					if (pressReleaseId == 0)
						pressReleaseId = rs.getInt(2);
					if (pressReleaseOrder == 0.0)
						pressReleaseOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theNewsItemsPressReleasesLinksIterator == null && theNewsItems == null && thePressReleases != null) {
				// an ID was provided as an attribute - we need to load a NewsItemsPressReleasesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select news_item_id,press_release_id,press_release_order from strapi.news_items_press_releases_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsItemId == 0)
						newsItemId = rs.getInt(1);
					if (pressReleaseId == 0)
						pressReleaseId = rs.getInt(2);
					if (pressReleaseOrder == 0.0)
						pressReleaseOrder = rs.getDouble(3);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a NewsItemsPressReleasesLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select news_item_id,press_release_id,press_release_order from strapi.news_items_press_releases_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (newsItemId == 0)
						newsItemId = rs.getInt(1);
					if (pressReleaseId == 0)
						pressReleaseId = rs.getInt(2);
					if (pressReleaseOrder == 0.0)
						pressReleaseOrder = rs.getDouble(3);
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
			NewsItemsPressReleasesLinks currentNewsItemsPressReleasesLinks = (NewsItemsPressReleasesLinks) pageContext.getAttribute("tag_newsItemsPressReleasesLinks");
			if(currentNewsItemsPressReleasesLinks != null){
				cachedNewsItemsPressReleasesLinks = currentNewsItemsPressReleasesLinks;
			}
			currentNewsItemsPressReleasesLinks = this;
			pageContext.setAttribute((var == null ? "tag_newsItemsPressReleasesLinks" : var), currentNewsItemsPressReleasesLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedNewsItemsPressReleasesLinks != null){
				pageContext.setAttribute((var == null ? "tag_newsItemsPressReleasesLinks" : var), this.cachedNewsItemsPressReleasesLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_newsItemsPressReleasesLinks" : var));
				this.cachedNewsItemsPressReleasesLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.news_items_press_releases_links set news_item_id = ?, press_release_id = ?, press_release_order = ? where id = ? ");
				if ( newsItemId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, newsItemId );
				}
				if ( pressReleaseId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, pressReleaseId );
				}
				stmt.setDouble( 3, pressReleaseOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.news_items_press_releases_links(news_item_id,press_release_id,press_release_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (newsItemId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,newsItemId);
		}
		if (pressReleaseId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,pressReleaseId);
		}
		stmt.setDouble(3,pressReleaseOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new NewsItemsPressReleasesLinks " + ID);

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

	public int getNewsItemId () {
		return newsItemId;
	}

	public void setNewsItemId (int newsItemId) {
		this.newsItemId = newsItemId;
		commitNeeded = true;
	}

	public int getActualNewsItemId () {
		return newsItemId;
	}

	public int getPressReleaseId () {
		return pressReleaseId;
	}

	public void setPressReleaseId (int pressReleaseId) {
		this.pressReleaseId = pressReleaseId;
		commitNeeded = true;
	}

	public int getActualPressReleaseId () {
		return pressReleaseId;
	}

	public double getPressReleaseOrder () {
		return pressReleaseOrder;
	}

	public void setPressReleaseOrder (double pressReleaseOrder) {
		this.pressReleaseOrder = pressReleaseOrder;
		commitNeeded = true;
	}

	public double getActualPressReleaseOrder () {
		return pressReleaseOrder;
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

	public static Integer newsItemIdValue() throws JspException {
		try {
			return currentInstance.getNewsItemId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function newsItemIdValue()");
		}
	}

	public static Integer pressReleaseIdValue() throws JspException {
		try {
			return currentInstance.getPressReleaseId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function pressReleaseIdValue()");
		}
	}

	public static Double pressReleaseOrderValue() throws JspException {
		try {
			return currentInstance.getPressReleaseOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function pressReleaseOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		newsItemId = 0;
		pressReleaseId = 0;
		pressReleaseOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
