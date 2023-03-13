package org.cd2h.STRAPITagLib.trainingsEugYouTubeVideoLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.trainings.Trainings;
import org.cd2h.STRAPITagLib.youTubeVideos.YouTubeVideos;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class TrainingsEugYouTubeVideoLinks extends STRAPITagLibTagSupport {

	static TrainingsEugYouTubeVideoLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(TrainingsEugYouTubeVideoLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int trainingId = 0;
	int youTubeVideoId = 0;

	private String var = null;

	private TrainingsEugYouTubeVideoLinks cachedTrainingsEugYouTubeVideoLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Trainings theTrainings = (Trainings)findAncestorWithClass(this, Trainings.class);
			if (theTrainings!= null)
				parentEntities.addElement(theTrainings);
			YouTubeVideos theYouTubeVideos = (YouTubeVideos)findAncestorWithClass(this, YouTubeVideos.class);
			if (theYouTubeVideos!= null)
				parentEntities.addElement(theYouTubeVideos);

			if (theTrainings == null) {
			} else {
				trainingId = theTrainings.getID();
			}
			if (theYouTubeVideos == null) {
			} else {
				youTubeVideoId = theYouTubeVideos.getID();
			}

			TrainingsEugYouTubeVideoLinksIterator theTrainingsEugYouTubeVideoLinksIterator = (TrainingsEugYouTubeVideoLinksIterator)findAncestorWithClass(this, TrainingsEugYouTubeVideoLinksIterator.class);

			if (theTrainingsEugYouTubeVideoLinksIterator != null) {
				ID = theTrainingsEugYouTubeVideoLinksIterator.getID();
			}

			if (theTrainingsEugYouTubeVideoLinksIterator == null && theTrainings == null && theYouTubeVideos == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new TrainingsEugYouTubeVideoLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theTrainingsEugYouTubeVideoLinksIterator == null && theTrainings != null && theYouTubeVideos == null) {
				// an ID was provided as an attribute - we need to load a TrainingsEugYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select training_id,you_tube_video_id from strapi.trainings_eug_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (trainingId == 0)
						trainingId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theTrainingsEugYouTubeVideoLinksIterator == null && theTrainings == null && theYouTubeVideos != null) {
				// an ID was provided as an attribute - we need to load a TrainingsEugYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select training_id,you_tube_video_id from strapi.trainings_eug_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (trainingId == 0)
						trainingId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a TrainingsEugYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select training_id,you_tube_video_id from strapi.trainings_eug_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (trainingId == 0)
						trainingId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
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
			TrainingsEugYouTubeVideoLinks currentTrainingsEugYouTubeVideoLinks = (TrainingsEugYouTubeVideoLinks) pageContext.getAttribute("tag_trainingsEugYouTubeVideoLinks");
			if(currentTrainingsEugYouTubeVideoLinks != null){
				cachedTrainingsEugYouTubeVideoLinks = currentTrainingsEugYouTubeVideoLinks;
			}
			currentTrainingsEugYouTubeVideoLinks = this;
			pageContext.setAttribute((var == null ? "tag_trainingsEugYouTubeVideoLinks" : var), currentTrainingsEugYouTubeVideoLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTrainingsEugYouTubeVideoLinks != null){
				pageContext.setAttribute((var == null ? "tag_trainingsEugYouTubeVideoLinks" : var), this.cachedTrainingsEugYouTubeVideoLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_trainingsEugYouTubeVideoLinks" : var));
				this.cachedTrainingsEugYouTubeVideoLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.trainings_eug_you_tube_video_links set training_id = ?, you_tube_video_id = ? where id = ? ");
				if ( trainingId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, trainingId );
				}
				if ( youTubeVideoId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, youTubeVideoId );
				}
				stmt.setInt(3,ID);
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.trainings_eug_you_tube_video_links(training_id,you_tube_video_id) values (?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (trainingId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,trainingId);
		}
		if (youTubeVideoId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,youTubeVideoId);
		}
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new TrainingsEugYouTubeVideoLinks " + ID);

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

	public int getTrainingId () {
		return trainingId;
	}

	public void setTrainingId (int trainingId) {
		this.trainingId = trainingId;
		commitNeeded = true;
	}

	public int getActualTrainingId () {
		return trainingId;
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

	public static Integer trainingIdValue() throws JspException {
		try {
			return currentInstance.getTrainingId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function trainingIdValue()");
		}
	}

	public static Integer youTubeVideoIdValue() throws JspException {
		try {
			return currentInstance.getYouTubeVideoId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function youTubeVideoIdValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		trainingId = 0;
		youTubeVideoId = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
