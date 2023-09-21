package org.cd2h.STRAPITagLib.domainTeamsYouTubeVideosLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.domainTeams.DomainTeams;
import org.cd2h.STRAPITagLib.youTubeVideos.YouTubeVideos;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class DomainTeamsYouTubeVideosLinks extends STRAPITagLibTagSupport {

	static DomainTeamsYouTubeVideosLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(DomainTeamsYouTubeVideosLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int domainTeamId = 0;
	int youTubeVideoId = 0;
	double youTubeVideoOrder = 0.0;

	private String var = null;

	private DomainTeamsYouTubeVideosLinks cachedDomainTeamsYouTubeVideosLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			DomainTeams theDomainTeams = (DomainTeams)findAncestorWithClass(this, DomainTeams.class);
			if (theDomainTeams!= null)
				parentEntities.addElement(theDomainTeams);
			YouTubeVideos theYouTubeVideos = (YouTubeVideos)findAncestorWithClass(this, YouTubeVideos.class);
			if (theYouTubeVideos!= null)
				parentEntities.addElement(theYouTubeVideos);

			if (theDomainTeams == null) {
			} else {
				domainTeamId = theDomainTeams.getID();
			}
			if (theYouTubeVideos == null) {
			} else {
				youTubeVideoId = theYouTubeVideos.getID();
			}

			DomainTeamsYouTubeVideosLinksIterator theDomainTeamsYouTubeVideosLinksIterator = (DomainTeamsYouTubeVideosLinksIterator)findAncestorWithClass(this, DomainTeamsYouTubeVideosLinksIterator.class);

			if (theDomainTeamsYouTubeVideosLinksIterator != null) {
				ID = theDomainTeamsYouTubeVideosLinksIterator.getID();
			}

			if (theDomainTeamsYouTubeVideosLinksIterator == null && theDomainTeams == null && theYouTubeVideos == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new DomainTeamsYouTubeVideosLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theDomainTeamsYouTubeVideosLinksIterator == null && theDomainTeams != null && theYouTubeVideos == null) {
				// an ID was provided as an attribute - we need to load a DomainTeamsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,you_tube_video_id,you_tube_video_order from strapi.domain_teams_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					if (youTubeVideoOrder == 0.0)
						youTubeVideoOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theDomainTeamsYouTubeVideosLinksIterator == null && theDomainTeams == null && theYouTubeVideos != null) {
				// an ID was provided as an attribute - we need to load a DomainTeamsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,you_tube_video_id,you_tube_video_order from strapi.domain_teams_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					if (youTubeVideoOrder == 0.0)
						youTubeVideoOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a DomainTeamsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select domain_team_id,you_tube_video_id,you_tube_video_order from strapi.domain_teams_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (domainTeamId == 0)
						domainTeamId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					if (youTubeVideoOrder == 0.0)
						youTubeVideoOrder = rs.getDouble(3);
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
			DomainTeamsYouTubeVideosLinks currentDomainTeamsYouTubeVideosLinks = (DomainTeamsYouTubeVideosLinks) pageContext.getAttribute("tag_domainTeamsYouTubeVideosLinks");
			if(currentDomainTeamsYouTubeVideosLinks != null){
				cachedDomainTeamsYouTubeVideosLinks = currentDomainTeamsYouTubeVideosLinks;
			}
			currentDomainTeamsYouTubeVideosLinks = this;
			pageContext.setAttribute((var == null ? "tag_domainTeamsYouTubeVideosLinks" : var), currentDomainTeamsYouTubeVideosLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedDomainTeamsYouTubeVideosLinks != null){
				pageContext.setAttribute((var == null ? "tag_domainTeamsYouTubeVideosLinks" : var), this.cachedDomainTeamsYouTubeVideosLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_domainTeamsYouTubeVideosLinks" : var));
				this.cachedDomainTeamsYouTubeVideosLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.domain_teams_you_tube_videos_links set domain_team_id = ?, you_tube_video_id = ?, you_tube_video_order = ? where id = ? ");
				if ( domainTeamId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, domainTeamId );
				}
				if ( youTubeVideoId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, youTubeVideoId );
				}
				stmt.setDouble( 3, youTubeVideoOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.domain_teams_you_tube_videos_links(domain_team_id,you_tube_video_id,you_tube_video_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (domainTeamId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,domainTeamId);
		}
		if (youTubeVideoId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,youTubeVideoId);
		}
		stmt.setDouble(3,youTubeVideoOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new DomainTeamsYouTubeVideosLinks " + ID);

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

	public int getDomainTeamId () {
		return domainTeamId;
	}

	public void setDomainTeamId (int domainTeamId) {
		this.domainTeamId = domainTeamId;
		commitNeeded = true;
	}

	public int getActualDomainTeamId () {
		return domainTeamId;
	}

	public int getYouTubeVideoId () {
		return youTubeVideoId;
	}

	public void setYouTubeVideoId (int youTubeVideoId) {
		this.youTubeVideoId = youTubeVideoId;
		commitNeeded = true;
	}

	public int getActualYouTubeVideoId () {
		return youTubeVideoId;
	}

	public double getYouTubeVideoOrder () {
		return youTubeVideoOrder;
	}

	public void setYouTubeVideoOrder (double youTubeVideoOrder) {
		this.youTubeVideoOrder = youTubeVideoOrder;
		commitNeeded = true;
	}

	public double getActualYouTubeVideoOrder () {
		return youTubeVideoOrder;
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

	public static Integer domainTeamIdValue() throws JspException {
		try {
			return currentInstance.getDomainTeamId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function domainTeamIdValue()");
		}
	}

	public static Integer youTubeVideoIdValue() throws JspException {
		try {
			return currentInstance.getYouTubeVideoId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function youTubeVideoIdValue()");
		}
	}

	public static Double youTubeVideoOrderValue() throws JspException {
		try {
			return currentInstance.getYouTubeVideoOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function youTubeVideoOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		domainTeamId = 0;
		youTubeVideoId = 0;
		youTubeVideoOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
