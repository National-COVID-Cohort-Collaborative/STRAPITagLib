package org.cd2h.STRAPITagLib.files;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.sql.Timestamp;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;


import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class Files extends STRAPITagLibTagSupport {

	static Files currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Files.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String name = null;
	String alternativeText = null;
	String caption = null;
	int width = 0;
	int height = 0;
	String formats = null;
	String hash = null;
	String ext = null;
	String mime = null;
	float size = 0.0f;
	String url = null;
	String previewUrl = null;
	String provider = null;
	String providerMetadata = null;
	String folderPath = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Files cachedFiles = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			FilesIterator theFilesIterator = (FilesIterator)findAncestorWithClass(this, FilesIterator.class);

			if (theFilesIterator != null) {
				ID = theFilesIterator.getID();
			}

			if (theFilesIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Files and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Files from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select name,alternative_text,caption,width,height,formats,hash,ext,mime,size,url,preview_url,provider,provider_metadata,folder_path,created_at,updated_at,created_by_id,updated_by_id from strapi.files where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (name == null)
						name = rs.getString(1);
					if (alternativeText == null)
						alternativeText = rs.getString(2);
					if (caption == null)
						caption = rs.getString(3);
					if (width == 0)
						width = rs.getInt(4);
					if (height == 0)
						height = rs.getInt(5);
					if (formats == null)
						formats = rs.getString(6);
					if (hash == null)
						hash = rs.getString(7);
					if (ext == null)
						ext = rs.getString(8);
					if (mime == null)
						mime = rs.getString(9);
					if (size == 0.0f)
						size = rs.getFloat(10);
					if (url == null)
						url = rs.getString(11);
					if (previewUrl == null)
						previewUrl = rs.getString(12);
					if (provider == null)
						provider = rs.getString(13);
					if (providerMetadata == null)
						providerMetadata = rs.getString(14);
					if (folderPath == null)
						folderPath = rs.getString(15);
					if (createdAt == null)
						createdAt = rs.getTimestamp(16);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(17);
					if (createdById == 0)
						createdById = rs.getInt(18);
					if (updatedById == 0)
						updatedById = rs.getInt(19);
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
			Files currentFiles = (Files) pageContext.getAttribute("tag_files");
			if(currentFiles != null){
				cachedFiles = currentFiles;
			}
			currentFiles = this;
			pageContext.setAttribute((var == null ? "tag_files" : var), currentFiles);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFiles != null){
				pageContext.setAttribute((var == null ? "tag_files" : var), this.cachedFiles);
			}else{
				pageContext.removeAttribute((var == null ? "tag_files" : var));
				this.cachedFiles = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.files set name = ?, alternative_text = ?, caption = ?, width = ?, height = ?, formats = ?, hash = ?, ext = ?, mime = ?, size = ?, url = ?, preview_url = ?, provider = ?, provider_metadata = ?, folder_path = ?, created_at = ?, updated_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, name );
				stmt.setString( 2, alternativeText );
				stmt.setString( 3, caption );
				stmt.setInt( 4, width );
				stmt.setInt( 5, height );
				stmt.setString( 6, formats );
				stmt.setString( 7, hash );
				stmt.setString( 8, ext );
				stmt.setString( 9, mime );
				stmt.setFloat( 10, size );
				stmt.setString( 11, url );
				stmt.setString( 12, previewUrl );
				stmt.setString( 13, provider );
				stmt.setString( 14, providerMetadata );
				stmt.setString( 15, folderPath );
				stmt.setTimestamp( 16, createdAt );
				stmt.setTimestamp( 17, updatedAt );
				stmt.setInt( 18, createdById );
				stmt.setInt( 19, updatedById );
				stmt.setInt(20,ID);
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
		if (ID == 0) {
			ID = Sequence.generateID();
			log.debug("generating new Files " + ID);
		}

		if (name == null){
			name = "";
		}
		if (alternativeText == null){
			alternativeText = "";
		}
		if (caption == null){
			caption = "";
		}
		if (formats == null){
			formats = "";
		}
		if (hash == null){
			hash = "";
		}
		if (ext == null){
			ext = "";
		}
		if (mime == null){
			mime = "";
		}
		if (url == null){
			url = "";
		}
		if (previewUrl == null){
			previewUrl = "";
		}
		if (provider == null){
			provider = "";
		}
		if (providerMetadata == null){
			providerMetadata = "";
		}
		if (folderPath == null){
			folderPath = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.files(name,alternative_text,caption,width,height,formats,hash,ext,mime,size,url,preview_url,provider,provider_metadata,folder_path,created_at,updated_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,name);
		stmt.setString(2,alternativeText);
		stmt.setString(3,caption);
		stmt.setInt(4,width);
		stmt.setInt(5,height);
		stmt.setString(6,formats);
		stmt.setString(7,hash);
		stmt.setString(8,ext);
		stmt.setString(9,mime);
		stmt.setFloat(10,size);
		stmt.setString(11,url);
		stmt.setString(12,previewUrl);
		stmt.setString(13,provider);
		stmt.setString(14,providerMetadata);
		stmt.setString(15,folderPath);
		stmt.setTimestamp(16,createdAt);
		stmt.setTimestamp(17,updatedAt);
		stmt.setInt(18,createdById);
		stmt.setInt(19,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Files " + ID);

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

	public String getName () {
		if (commitNeeded)
			return "";
		else
			return name;
	}

	public void setName (String name) {
		this.name = name;
		commitNeeded = true;
	}

	public String getActualName () {
		return name;
	}

	public String getAlternativeText () {
		if (commitNeeded)
			return "";
		else
			return alternativeText;
	}

	public void setAlternativeText (String alternativeText) {
		this.alternativeText = alternativeText;
		commitNeeded = true;
	}

	public String getActualAlternativeText () {
		return alternativeText;
	}

	public String getCaption () {
		if (commitNeeded)
			return "";
		else
			return caption;
	}

	public void setCaption (String caption) {
		this.caption = caption;
		commitNeeded = true;
	}

	public String getActualCaption () {
		return caption;
	}

	public int getWidth () {
		return width;
	}

	public void setWidth (int width) {
		this.width = width;
		commitNeeded = true;
	}

	public int getActualWidth () {
		return width;
	}

	public int getHeight () {
		return height;
	}

	public void setHeight (int height) {
		this.height = height;
		commitNeeded = true;
	}

	public int getActualHeight () {
		return height;
	}

	public String getFormats () {
		if (commitNeeded)
			return "";
		else
			return formats;
	}

	public void setFormats (String formats) {
		this.formats = formats;
		commitNeeded = true;
	}

	public String getActualFormats () {
		return formats;
	}

	public String getHash () {
		if (commitNeeded)
			return "";
		else
			return hash;
	}

	public void setHash (String hash) {
		this.hash = hash;
		commitNeeded = true;
	}

	public String getActualHash () {
		return hash;
	}

	public String getExt () {
		if (commitNeeded)
			return "";
		else
			return ext;
	}

	public void setExt (String ext) {
		this.ext = ext;
		commitNeeded = true;
	}

	public String getActualExt () {
		return ext;
	}

	public String getMime () {
		if (commitNeeded)
			return "";
		else
			return mime;
	}

	public void setMime (String mime) {
		this.mime = mime;
		commitNeeded = true;
	}

	public String getActualMime () {
		return mime;
	}

	public float getSize () {
		return size;
	}

	public void setSize (float size) {
		this.size = size;
		commitNeeded = true;
	}

	public float getActualSize () {
		return size;
	}

	public String getUrl () {
		if (commitNeeded)
			return "";
		else
			return url;
	}

	public void setUrl (String url) {
		this.url = url;
		commitNeeded = true;
	}

	public String getActualUrl () {
		return url;
	}

	public String getPreviewUrl () {
		if (commitNeeded)
			return "";
		else
			return previewUrl;
	}

	public void setPreviewUrl (String previewUrl) {
		this.previewUrl = previewUrl;
		commitNeeded = true;
	}

	public String getActualPreviewUrl () {
		return previewUrl;
	}

	public String getProvider () {
		if (commitNeeded)
			return "";
		else
			return provider;
	}

	public void setProvider (String provider) {
		this.provider = provider;
		commitNeeded = true;
	}

	public String getActualProvider () {
		return provider;
	}

	public String getProviderMetadata () {
		if (commitNeeded)
			return "";
		else
			return providerMetadata;
	}

	public void setProviderMetadata (String providerMetadata) {
		this.providerMetadata = providerMetadata;
		commitNeeded = true;
	}

	public String getActualProviderMetadata () {
		return providerMetadata;
	}

	public String getFolderPath () {
		if (commitNeeded)
			return "";
		else
			return folderPath;
	}

	public void setFolderPath (String folderPath) {
		this.folderPath = folderPath;
		commitNeeded = true;
	}

	public String getActualFolderPath () {
		return folderPath;
	}

	public Timestamp getCreatedAt () {
		return createdAt;
	}

	public void setCreatedAt (Timestamp createdAt) {
		this.createdAt = createdAt;
		commitNeeded = true;
	}

	public Timestamp getActualCreatedAt () {
		return createdAt;
	}

	public void setCreatedAtToNow ( ) {
		this.createdAt = new java.sql.Timestamp(new java.util.Date().getTime());
		commitNeeded = true;
	}

	public Timestamp getUpdatedAt () {
		return updatedAt;
	}

	public void setUpdatedAt (Timestamp updatedAt) {
		this.updatedAt = updatedAt;
		commitNeeded = true;
	}

	public Timestamp getActualUpdatedAt () {
		return updatedAt;
	}

	public void setUpdatedAtToNow ( ) {
		this.updatedAt = new java.sql.Timestamp(new java.util.Date().getTime());
		commitNeeded = true;
	}

	public int getCreatedById () {
		return createdById;
	}

	public void setCreatedById (int createdById) {
		this.createdById = createdById;
		commitNeeded = true;
	}

	public int getActualCreatedById () {
		return createdById;
	}

	public int getUpdatedById () {
		return updatedById;
	}

	public void setUpdatedById (int updatedById) {
		this.updatedById = updatedById;
		commitNeeded = true;
	}

	public int getActualUpdatedById () {
		return updatedById;
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

	public static String nameValue() throws JspException {
		try {
			return currentInstance.getName();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function nameValue()");
		}
	}

	public static String alternativeTextValue() throws JspException {
		try {
			return currentInstance.getAlternativeText();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function alternativeTextValue()");
		}
	}

	public static String captionValue() throws JspException {
		try {
			return currentInstance.getCaption();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function captionValue()");
		}
	}

	public static Integer widthValue() throws JspException {
		try {
			return currentInstance.getWidth();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function widthValue()");
		}
	}

	public static Integer heightValue() throws JspException {
		try {
			return currentInstance.getHeight();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function heightValue()");
		}
	}

	public static String formatsValue() throws JspException {
		try {
			return currentInstance.getFormats();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function formatsValue()");
		}
	}

	public static String hashValue() throws JspException {
		try {
			return currentInstance.getHash();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function hashValue()");
		}
	}

	public static String extValue() throws JspException {
		try {
			return currentInstance.getExt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function extValue()");
		}
	}

	public static String mimeValue() throws JspException {
		try {
			return currentInstance.getMime();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function mimeValue()");
		}
	}

	public static Float sizeValue() throws JspException {
		try {
			return currentInstance.getSize();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function sizeValue()");
		}
	}

	public static String urlValue() throws JspException {
		try {
			return currentInstance.getUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function urlValue()");
		}
	}

	public static String previewUrlValue() throws JspException {
		try {
			return currentInstance.getPreviewUrl();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function previewUrlValue()");
		}
	}

	public static String providerValue() throws JspException {
		try {
			return currentInstance.getProvider();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function providerValue()");
		}
	}

	public static String providerMetadataValue() throws JspException {
		try {
			return currentInstance.getProviderMetadata();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function providerMetadataValue()");
		}
	}

	public static String folderPathValue() throws JspException {
		try {
			return currentInstance.getFolderPath();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function folderPathValue()");
		}
	}

	public static Timestamp createdAtValue() throws JspException {
		try {
			return currentInstance.getCreatedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function createdAtValue()");
		}
	}

	public static Timestamp updatedAtValue() throws JspException {
		try {
			return currentInstance.getUpdatedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function updatedAtValue()");
		}
	}

	public static Integer createdByIdValue() throws JspException {
		try {
			return currentInstance.getCreatedById();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function createdByIdValue()");
		}
	}

	public static Integer updatedByIdValue() throws JspException {
		try {
			return currentInstance.getUpdatedById();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function updatedByIdValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		name = null;
		alternativeText = null;
		caption = null;
		width = 0;
		height = 0;
		formats = null;
		hash = null;
		ext = null;
		mime = null;
		size = 0.0f;
		url = null;
		previewUrl = null;
		provider = null;
		providerMetadata = null;
		folderPath = null;
		createdAt = null;
		updatedAt = null;
		createdById = 0;
		updatedById = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
