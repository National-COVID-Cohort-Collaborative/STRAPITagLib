package org.cd2h.STRAPITagLib.filesRelatedMorphs;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.files.Files;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class FilesRelatedMorphs extends STRAPITagLibTagSupport {

	static FilesRelatedMorphs currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(FilesRelatedMorphs.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int fileId = 0;
	int relatedId = 0;
	String relatedType = null;
	String field = null;
	double order = 0.0;

	private String var = null;

	private FilesRelatedMorphs cachedFilesRelatedMorphs = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Files theFiles = (Files)findAncestorWithClass(this, Files.class);
			if (theFiles!= null)
				parentEntities.addElement(theFiles);

			if (theFiles == null) {
			} else {
				fileId = theFiles.getID();
			}

			FilesRelatedMorphsIterator theFilesRelatedMorphsIterator = (FilesRelatedMorphsIterator)findAncestorWithClass(this, FilesRelatedMorphsIterator.class);

			if (theFilesRelatedMorphsIterator != null) {
				ID = theFilesRelatedMorphsIterator.getID();
			}

			if (theFilesRelatedMorphsIterator == null && theFiles == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new FilesRelatedMorphs and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a FilesRelatedMorphs from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select file_id,related_id,related_type,field,order from strapi.files_related_morphs where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (fileId == 0)
						fileId = rs.getInt(1);
					if (relatedId == 0)
						relatedId = rs.getInt(2);
					if (relatedType == null)
						relatedType = rs.getString(3);
					if (field == null)
						field = rs.getString(4);
					if (order == 0.0)
						order = rs.getDouble(5);
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
			FilesRelatedMorphs currentFilesRelatedMorphs = (FilesRelatedMorphs) pageContext.getAttribute("tag_filesRelatedMorphs");
			if(currentFilesRelatedMorphs != null){
				cachedFilesRelatedMorphs = currentFilesRelatedMorphs;
			}
			currentFilesRelatedMorphs = this;
			pageContext.setAttribute((var == null ? "tag_filesRelatedMorphs" : var), currentFilesRelatedMorphs);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFilesRelatedMorphs != null){
				pageContext.setAttribute((var == null ? "tag_filesRelatedMorphs" : var), this.cachedFilesRelatedMorphs);
			}else{
				pageContext.removeAttribute((var == null ? "tag_filesRelatedMorphs" : var));
				this.cachedFilesRelatedMorphs = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.files_related_morphs set file_id = ?, related_id = ?, related_type = ?, field = ?, order = ? where id = ? ");
				if ( fileId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, fileId );
				}
				stmt.setInt( 2, relatedId );
				stmt.setString( 3, relatedType );
				stmt.setString( 4, field );
				stmt.setDouble( 5, order );
				stmt.setInt(6,ID);
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
		if (relatedType == null){
			relatedType = "";
		}
		if (field == null){
			field = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.files_related_morphs(file_id,related_id,related_type,field,order) values (?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (fileId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,fileId);
		}
		stmt.setInt(2,relatedId);
		stmt.setString(3,relatedType);
		stmt.setString(4,field);
		stmt.setDouble(5,order);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new FilesRelatedMorphs " + ID);

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

	public int getFileId () {
		return fileId;
	}

	public void setFileId (int fileId) {
		this.fileId = fileId;
		commitNeeded = true;
	}

	public int getActualFileId () {
		return fileId;
	}

	public int getRelatedId () {
		return relatedId;
	}

	public void setRelatedId (int relatedId) {
		this.relatedId = relatedId;
		commitNeeded = true;
	}

	public int getActualRelatedId () {
		return relatedId;
	}

	public String getRelatedType () {
		if (commitNeeded)
			return "";
		else
			return relatedType;
	}

	public void setRelatedType (String relatedType) {
		this.relatedType = relatedType;
		commitNeeded = true;
	}

	public String getActualRelatedType () {
		return relatedType;
	}

	public String getField () {
		if (commitNeeded)
			return "";
		else
			return field;
	}

	public void setField (String field) {
		this.field = field;
		commitNeeded = true;
	}

	public String getActualField () {
		return field;
	}

	public double getOrder () {
		return order;
	}

	public void setOrder (double order) {
		this.order = order;
		commitNeeded = true;
	}

	public double getActualOrder () {
		return order;
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

	public static Integer fileIdValue() throws JspException {
		try {
			return currentInstance.getFileId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function fileIdValue()");
		}
	}

	public static Integer relatedIdValue() throws JspException {
		try {
			return currentInstance.getRelatedId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function relatedIdValue()");
		}
	}

	public static String relatedTypeValue() throws JspException {
		try {
			return currentInstance.getRelatedType();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function relatedTypeValue()");
		}
	}

	public static String fieldValue() throws JspException {
		try {
			return currentInstance.getField();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function fieldValue()");
		}
	}

	public static Double orderValue() throws JspException {
		try {
			return currentInstance.getOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function orderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		fileId = 0;
		relatedId = 0;
		relatedType = null;
		field = null;
		order = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
