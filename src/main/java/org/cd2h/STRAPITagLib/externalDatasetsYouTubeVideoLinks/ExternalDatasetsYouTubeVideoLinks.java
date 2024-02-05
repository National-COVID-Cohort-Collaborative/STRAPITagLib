package org.cd2h.STRAPITagLib.externalDatasetsYouTubeVideoLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.externalDatasets.ExternalDatasets;
import org.cd2h.STRAPITagLib.youTubeVideos.YouTubeVideos;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class ExternalDatasetsYouTubeVideoLinks extends STRAPITagLibTagSupport {

	static ExternalDatasetsYouTubeVideoLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(ExternalDatasetsYouTubeVideoLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int externalDatasetId = 0;
	int youTubeVideoId = 0;

	private String var = null;

	private ExternalDatasetsYouTubeVideoLinks cachedExternalDatasetsYouTubeVideoLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			ExternalDatasets theExternalDatasets = (ExternalDatasets)findAncestorWithClass(this, ExternalDatasets.class);
			if (theExternalDatasets!= null)
				parentEntities.addElement(theExternalDatasets);
			YouTubeVideos theYouTubeVideos = (YouTubeVideos)findAncestorWithClass(this, YouTubeVideos.class);
			if (theYouTubeVideos!= null)
				parentEntities.addElement(theYouTubeVideos);

			if (theExternalDatasets == null) {
			} else {
				externalDatasetId = theExternalDatasets.getID();
			}
			if (theYouTubeVideos == null) {
			} else {
				youTubeVideoId = theYouTubeVideos.getID();
			}

			ExternalDatasetsYouTubeVideoLinksIterator theExternalDatasetsYouTubeVideoLinksIterator = (ExternalDatasetsYouTubeVideoLinksIterator)findAncestorWithClass(this, ExternalDatasetsYouTubeVideoLinksIterator.class);

			if (theExternalDatasetsYouTubeVideoLinksIterator != null) {
				ID = theExternalDatasetsYouTubeVideoLinksIterator.getID();
			}

			if (theExternalDatasetsYouTubeVideoLinksIterator == null && theExternalDatasets == null && theYouTubeVideos == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new ExternalDatasetsYouTubeVideoLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theExternalDatasetsYouTubeVideoLinksIterator == null && theExternalDatasets != null && theYouTubeVideos == null) {
				// an ID was provided as an attribute - we need to load a ExternalDatasetsYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select external_dataset_id,you_tube_video_id from strapi.external_datasets_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (externalDatasetId == 0)
						externalDatasetId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theExternalDatasetsYouTubeVideoLinksIterator == null && theExternalDatasets == null && theYouTubeVideos != null) {
				// an ID was provided as an attribute - we need to load a ExternalDatasetsYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select external_dataset_id,you_tube_video_id from strapi.external_datasets_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (externalDatasetId == 0)
						externalDatasetId = rs.getInt(1);
					if (youTubeVideoId == 0)
						youTubeVideoId = rs.getInt(2);
					found = true;
				}
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a ExternalDatasetsYouTubeVideoLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select external_dataset_id,you_tube_video_id from strapi.external_datasets_you_tube_video_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (externalDatasetId == 0)
						externalDatasetId = rs.getInt(1);
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
			ExternalDatasetsYouTubeVideoLinks currentExternalDatasetsYouTubeVideoLinks = (ExternalDatasetsYouTubeVideoLinks) pageContext.getAttribute("tag_externalDatasetsYouTubeVideoLinks");
			if(currentExternalDatasetsYouTubeVideoLinks != null){
				cachedExternalDatasetsYouTubeVideoLinks = currentExternalDatasetsYouTubeVideoLinks;
			}
			currentExternalDatasetsYouTubeVideoLinks = this;
			pageContext.setAttribute((var == null ? "tag_externalDatasetsYouTubeVideoLinks" : var), currentExternalDatasetsYouTubeVideoLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedExternalDatasetsYouTubeVideoLinks != null){
				pageContext.setAttribute((var == null ? "tag_externalDatasetsYouTubeVideoLinks" : var), this.cachedExternalDatasetsYouTubeVideoLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_externalDatasetsYouTubeVideoLinks" : var));
				this.cachedExternalDatasetsYouTubeVideoLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.external_datasets_you_tube_video_links set external_dataset_id = ?, you_tube_video_id = ? where id = ? ");
				if ( externalDatasetId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, externalDatasetId );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.external_datasets_you_tube_video_links(external_dataset_id,you_tube_video_id) values (?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (externalDatasetId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,externalDatasetId);
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

		log.debug("generating new ExternalDatasetsYouTubeVideoLinks " + ID);

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

	public int getExternalDatasetId () {
		return externalDatasetId;
	}

	public void setExternalDatasetId (int externalDatasetId) {
		this.externalDatasetId = externalDatasetId;
		commitNeeded = true;
	}

	public int getActualExternalDatasetId () {
		return externalDatasetId;
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

	public static Integer externalDatasetIdValue() throws JspException {
		try {
			return currentInstance.getExternalDatasetId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function externalDatasetIdValue()");
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
		externalDatasetId = 0;
		youTubeVideoId = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
