package org.cd2h.STRAPITagLib.faqLists;

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
public class FaqLists extends STRAPITagLibTagSupport {

	static FaqLists currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(FaqLists.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String subheader = null;
	String introBlock = null;
	String enclaveHeader = null;
	String domainHeader = null;
	String phenotypeHeader = null;
	String harmonizationHeader = null;
	String analyticsHeader = null;
	String syntheticHeader = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private FaqLists cachedFaqLists = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			FaqListsIterator theFaqListsIterator = (FaqListsIterator)findAncestorWithClass(this, FaqListsIterator.class);

			if (theFaqListsIterator != null) {
				ID = theFaqListsIterator.getID();
			}

			if (theFaqListsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new FaqLists and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a FaqLists from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,subheader,intro_block,enclave_header,domain_header,phenotype_header,harmonization_header,analytics_header,synthetic_header,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.faq_lists where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (subheader == null)
						subheader = rs.getString(2);
					if (introBlock == null)
						introBlock = rs.getString(3);
					if (enclaveHeader == null)
						enclaveHeader = rs.getString(4);
					if (domainHeader == null)
						domainHeader = rs.getString(5);
					if (phenotypeHeader == null)
						phenotypeHeader = rs.getString(6);
					if (harmonizationHeader == null)
						harmonizationHeader = rs.getString(7);
					if (analyticsHeader == null)
						analyticsHeader = rs.getString(8);
					if (syntheticHeader == null)
						syntheticHeader = rs.getString(9);
					if (createdAt == null)
						createdAt = rs.getTimestamp(10);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(11);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(12);
					if (createdById == 0)
						createdById = rs.getInt(13);
					if (updatedById == 0)
						updatedById = rs.getInt(14);
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
			FaqLists currentFaqLists = (FaqLists) pageContext.getAttribute("tag_faqLists");
			if(currentFaqLists != null){
				cachedFaqLists = currentFaqLists;
			}
			currentFaqLists = this;
			pageContext.setAttribute((var == null ? "tag_faqLists" : var), currentFaqLists);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFaqLists != null){
				pageContext.setAttribute((var == null ? "tag_faqLists" : var), this.cachedFaqLists);
			}else{
				pageContext.removeAttribute((var == null ? "tag_faqLists" : var));
				this.cachedFaqLists = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.faq_lists set header = ?, subheader = ?, intro_block = ?, enclave_header = ?, domain_header = ?, phenotype_header = ?, harmonization_header = ?, analytics_header = ?, synthetic_header = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, subheader );
				stmt.setString( 3, introBlock );
				stmt.setString( 4, enclaveHeader );
				stmt.setString( 5, domainHeader );
				stmt.setString( 6, phenotypeHeader );
				stmt.setString( 7, harmonizationHeader );
				stmt.setString( 8, analyticsHeader );
				stmt.setString( 9, syntheticHeader );
				stmt.setTimestamp( 10, createdAt );
				stmt.setTimestamp( 11, updatedAt );
				stmt.setTimestamp( 12, publishedAt );
				stmt.setInt( 13, createdById );
				stmt.setInt( 14, updatedById );
				stmt.setInt(15,ID);
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
			log.debug("generating new FaqLists " + ID);
		}

		if (header == null){
			header = "";
		}
		if (subheader == null){
			subheader = "";
		}
		if (introBlock == null){
			introBlock = "";
		}
		if (enclaveHeader == null){
			enclaveHeader = "";
		}
		if (domainHeader == null){
			domainHeader = "";
		}
		if (phenotypeHeader == null){
			phenotypeHeader = "";
		}
		if (harmonizationHeader == null){
			harmonizationHeader = "";
		}
		if (analyticsHeader == null){
			analyticsHeader = "";
		}
		if (syntheticHeader == null){
			syntheticHeader = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.faq_lists(header,subheader,intro_block,enclave_header,domain_header,phenotype_header,harmonization_header,analytics_header,synthetic_header,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,subheader);
		stmt.setString(3,introBlock);
		stmt.setString(4,enclaveHeader);
		stmt.setString(5,domainHeader);
		stmt.setString(6,phenotypeHeader);
		stmt.setString(7,harmonizationHeader);
		stmt.setString(8,analyticsHeader);
		stmt.setString(9,syntheticHeader);
		stmt.setTimestamp(10,createdAt);
		stmt.setTimestamp(11,updatedAt);
		stmt.setTimestamp(12,publishedAt);
		stmt.setInt(13,createdById);
		stmt.setInt(14,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new FaqLists " + ID);

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

	public String getHeader () {
		if (commitNeeded)
			return "";
		else
			return header;
	}

	public void setHeader (String header) {
		this.header = header;
		commitNeeded = true;
	}

	public String getActualHeader () {
		return header;
	}

	public String getSubheader () {
		if (commitNeeded)
			return "";
		else
			return subheader;
	}

	public void setSubheader (String subheader) {
		this.subheader = subheader;
		commitNeeded = true;
	}

	public String getActualSubheader () {
		return subheader;
	}

	public String getIntroBlock () {
		if (commitNeeded)
			return "";
		else
			return introBlock;
	}

	public void setIntroBlock (String introBlock) {
		this.introBlock = introBlock;
		commitNeeded = true;
	}

	public String getActualIntroBlock () {
		return introBlock;
	}

	public String getEnclaveHeader () {
		if (commitNeeded)
			return "";
		else
			return enclaveHeader;
	}

	public void setEnclaveHeader (String enclaveHeader) {
		this.enclaveHeader = enclaveHeader;
		commitNeeded = true;
	}

	public String getActualEnclaveHeader () {
		return enclaveHeader;
	}

	public String getDomainHeader () {
		if (commitNeeded)
			return "";
		else
			return domainHeader;
	}

	public void setDomainHeader (String domainHeader) {
		this.domainHeader = domainHeader;
		commitNeeded = true;
	}

	public String getActualDomainHeader () {
		return domainHeader;
	}

	public String getPhenotypeHeader () {
		if (commitNeeded)
			return "";
		else
			return phenotypeHeader;
	}

	public void setPhenotypeHeader (String phenotypeHeader) {
		this.phenotypeHeader = phenotypeHeader;
		commitNeeded = true;
	}

	public String getActualPhenotypeHeader () {
		return phenotypeHeader;
	}

	public String getHarmonizationHeader () {
		if (commitNeeded)
			return "";
		else
			return harmonizationHeader;
	}

	public void setHarmonizationHeader (String harmonizationHeader) {
		this.harmonizationHeader = harmonizationHeader;
		commitNeeded = true;
	}

	public String getActualHarmonizationHeader () {
		return harmonizationHeader;
	}

	public String getAnalyticsHeader () {
		if (commitNeeded)
			return "";
		else
			return analyticsHeader;
	}

	public void setAnalyticsHeader (String analyticsHeader) {
		this.analyticsHeader = analyticsHeader;
		commitNeeded = true;
	}

	public String getActualAnalyticsHeader () {
		return analyticsHeader;
	}

	public String getSyntheticHeader () {
		if (commitNeeded)
			return "";
		else
			return syntheticHeader;
	}

	public void setSyntheticHeader (String syntheticHeader) {
		this.syntheticHeader = syntheticHeader;
		commitNeeded = true;
	}

	public String getActualSyntheticHeader () {
		return syntheticHeader;
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

	public Timestamp getPublishedAt () {
		return publishedAt;
	}

	public void setPublishedAt (Timestamp publishedAt) {
		this.publishedAt = publishedAt;
		commitNeeded = true;
	}

	public Timestamp getActualPublishedAt () {
		return publishedAt;
	}

	public void setPublishedAtToNow ( ) {
		this.publishedAt = new java.sql.Timestamp(new java.util.Date().getTime());
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

	public static String headerValue() throws JspException {
		try {
			return currentInstance.getHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function headerValue()");
		}
	}

	public static String subheaderValue() throws JspException {
		try {
			return currentInstance.getSubheader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function subheaderValue()");
		}
	}

	public static String introBlockValue() throws JspException {
		try {
			return currentInstance.getIntroBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function introBlockValue()");
		}
	}

	public static String enclaveHeaderValue() throws JspException {
		try {
			return currentInstance.getEnclaveHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function enclaveHeaderValue()");
		}
	}

	public static String domainHeaderValue() throws JspException {
		try {
			return currentInstance.getDomainHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function domainHeaderValue()");
		}
	}

	public static String phenotypeHeaderValue() throws JspException {
		try {
			return currentInstance.getPhenotypeHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function phenotypeHeaderValue()");
		}
	}

	public static String harmonizationHeaderValue() throws JspException {
		try {
			return currentInstance.getHarmonizationHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function harmonizationHeaderValue()");
		}
	}

	public static String analyticsHeaderValue() throws JspException {
		try {
			return currentInstance.getAnalyticsHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function analyticsHeaderValue()");
		}
	}

	public static String syntheticHeaderValue() throws JspException {
		try {
			return currentInstance.getSyntheticHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function syntheticHeaderValue()");
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

	public static Timestamp publishedAtValue() throws JspException {
		try {
			return currentInstance.getPublishedAt();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function publishedAtValue()");
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
		header = null;
		subheader = null;
		introBlock = null;
		enclaveHeader = null;
		domainHeader = null;
		phenotypeHeader = null;
		harmonizationHeader = null;
		analyticsHeader = null;
		syntheticHeader = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
