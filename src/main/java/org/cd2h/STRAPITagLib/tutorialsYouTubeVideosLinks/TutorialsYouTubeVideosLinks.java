package org.cd2h.STRAPITagLib.tutorialsYouTubeVideosLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.tutorials.Tutorials;
import org.cd2h.STRAPITagLib.youTubeVideos.YouTubeVideos;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class TutorialsYouTubeVideosLinks extends STRAPITagLibTagSupport {

	static TutorialsYouTubeVideosLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TutorialsYouTubeVideosLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int tutorialId = 0;
	int youTubeVideoId = 0;
	double youTubeVideoOrder = 0.0;

	private String var = null;

	private TutorialsYouTubeVideosLinks cachedTutorialsYouTubeVideosLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Tutorials theTutorials = (Tutorials)findAncestorWithClass(this, Tutorials.class);
			if (theTutorials!= null)
				parentEntities.addElement(theTutorials);
			YouTubeVideos theYouTubeVideos = (YouTubeVideos)findAncestorWithClass(this, YouTubeVideos.class);
			if (theYouTubeVideos!= null)
				parentEntities.addElement(theYouTubeVideos);

			if (theTutorials == null) {
			} else {
				tutorialId = theTutorials.getID();
			}
			if (theYouTubeVideos == null) {
			} else {
				youTubeVideoId = theYouTubeVideos.getID();
			}

			TutorialsYouTubeVideosLinksIterator theTutorialsYouTubeVideosLinksIterator = (TutorialsYouTubeVideosLinksIterator)findAncestorWithClass(this, TutorialsYouTubeVideosLinksIterator.class);

			if (theTutorialsYouTubeVideosLinksIterator != null) {
				ID = theTutorialsYouTubeVideosLinksIterator.getID();
			}

			if (theTutorialsYouTubeVideosLinksIterator == null && theTutorials == null && theYouTubeVideos == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TutorialsYouTubeVideosLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theTutorialsYouTubeVideosLinksIterator == null && theTutorials != null && theYouTubeVideos == null) {
				// an ID was provided as an attribute - we need to load a TutorialsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tutorial_id,you_tube_video_id,you_tube_video_order from strapi.tutorials_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tutorialId == 0)
						tutorialId = rs.getInt(1);
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
			} else if (theTutorialsYouTubeVideosLinksIterator == null && theTutorials == null && theYouTubeVideos != null) {
				// an ID was provided as an attribute - we need to load a TutorialsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tutorial_id,you_tube_video_id,you_tube_video_order from strapi.tutorials_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tutorialId == 0)
						tutorialId = rs.getInt(1);
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
				// an iterator or ID was provided as an attribute - we need to load a TutorialsYouTubeVideosLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select tutorial_id,you_tube_video_id,you_tube_video_order from strapi.tutorials_you_tube_videos_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (tutorialId == 0)
						tutorialId = rs.getInt(1);
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
			TutorialsYouTubeVideosLinks currentTutorialsYouTubeVideosLinks = (TutorialsYouTubeVideosLinks) pageContext.getAttribute("tag_tutorialsYouTubeVideosLinks");
			if(currentTutorialsYouTubeVideosLinks != null){
				cachedTutorialsYouTubeVideosLinks = currentTutorialsYouTubeVideosLinks;
			}
			currentTutorialsYouTubeVideosLinks = this;
			pageContext.setAttribute((var == null ? "tag_tutorialsYouTubeVideosLinks" : var), currentTutorialsYouTubeVideosLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTutorialsYouTubeVideosLinks != null){
				pageContext.setAttribute((var == null ? "tag_tutorialsYouTubeVideosLinks" : var), this.cachedTutorialsYouTubeVideosLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_tutorialsYouTubeVideosLinks" : var));
				this.cachedTutorialsYouTubeVideosLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.tutorials_you_tube_videos_links set tutorial_id = ?, you_tube_video_id = ?, you_tube_video_order = ? where id = ? ");
				if ( tutorialId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, tutorialId );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.tutorials_you_tube_videos_links(tutorial_id,you_tube_video_id,you_tube_video_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (tutorialId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,tutorialId);
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

		log.debug("generating new TutorialsYouTubeVideosLinks " + ID);

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

	public int getTutorialId () {
		return tutorialId;
	}

	public void setTutorialId (int tutorialId) {
		this.tutorialId = tutorialId;
		commitNeeded = true;
	}

	public int getActualTutorialId () {
		return tutorialId;
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

	public static Integer tutorialIdValue() throws JspException {
		try {
			return currentInstance.getTutorialId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function tutorialIdValue()");
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
		tutorialId = 0;
		youTubeVideoId = 0;
		youTubeVideoOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
