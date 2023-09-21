package org.cd2h.STRAPITagLib.filesFolderLinks;

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
public class FilesFolderLinks extends STRAPITagLibTagSupport {

	static FilesFolderLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(FilesFolderLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int fileId = 0;
	int folderId = 0;
	double fileOrder = 0.0;

	private String var = null;

	private FilesFolderLinks cachedFilesFolderLinks = null;

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

			FilesFolderLinksIterator theFilesFolderLinksIterator = (FilesFolderLinksIterator)findAncestorWithClass(this, FilesFolderLinksIterator.class);

			if (theFilesFolderLinksIterator != null) {
				ID = theFilesFolderLinksIterator.getID();
			}

			if (theFilesFolderLinksIterator == null && theFiles == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new FilesFolderLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a FilesFolderLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select file_id,folder_id,file_order from strapi.files_folder_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (fileId == 0)
						fileId = rs.getInt(1);
					if (folderId == 0)
						folderId = rs.getInt(2);
					if (fileOrder == 0.0)
						fileOrder = rs.getDouble(3);
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
			FilesFolderLinks currentFilesFolderLinks = (FilesFolderLinks) pageContext.getAttribute("tag_filesFolderLinks");
			if(currentFilesFolderLinks != null){
				cachedFilesFolderLinks = currentFilesFolderLinks;
			}
			currentFilesFolderLinks = this;
			pageContext.setAttribute((var == null ? "tag_filesFolderLinks" : var), currentFilesFolderLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFilesFolderLinks != null){
				pageContext.setAttribute((var == null ? "tag_filesFolderLinks" : var), this.cachedFilesFolderLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_filesFolderLinks" : var));
				this.cachedFilesFolderLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.files_folder_links set file_id = ?, folder_id = ?, file_order = ? where id = ? ");
				if ( fileId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, fileId );
				}
				stmt.setInt( 2, folderId );
				stmt.setDouble( 3, fileOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.files_folder_links(file_id,folder_id,file_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (fileId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,fileId);
		}
		stmt.setInt(2,folderId);
		stmt.setDouble(3,fileOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new FilesFolderLinks " + ID);

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

	public int getFolderId () {
		return folderId;
	}

	public void setFolderId (int folderId) {
		this.folderId = folderId;
		commitNeeded = true;
	}

	public int getActualFolderId () {
		return folderId;
	}

	public double getFileOrder () {
		return fileOrder;
	}

	public void setFileOrder (double fileOrder) {
		this.fileOrder = fileOrder;
		commitNeeded = true;
	}

	public double getActualFileOrder () {
		return fileOrder;
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

	public static Integer folderIdValue() throws JspException {
		try {
			return currentInstance.getFolderId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function folderIdValue()");
		}
	}

	public static Double fileOrderValue() throws JspException {
		try {
			return currentInstance.getFileOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function fileOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		fileId = 0;
		folderId = 0;
		fileOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
