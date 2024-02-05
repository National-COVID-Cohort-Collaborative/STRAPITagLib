package org.cd2h.STRAPITagLib.pprls;

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
public class Pprls extends STRAPITagLibTagSupport {

	static Pprls currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Pprls.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String header = null;
	String subheader = null;
	String start = null;
	String introHeader = null;
	String introBlock = null;
	String participationHeader = null;
	String participationBlock1 = null;
	String participationBlock2 = null;
	String participationBlock3 = null;
	String participationBlock4 = null;
	String participationBlock5 = null;
	String governanceHeader = null;
	String governanceBlock1 = null;
	String governanceBlock2 = null;
	String governanceBlock3 = null;
	String faqHeader = null;
	String glossaryHeader = null;
	String glossaryBlock = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String faqBlock = null;

	private String var = null;

	private Pprls cachedPprls = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			PprlsIterator thePprlsIterator = (PprlsIterator)findAncestorWithClass(this, PprlsIterator.class);

			if (thePprlsIterator != null) {
				ID = thePprlsIterator.getID();
			}

			if (thePprlsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Pprls and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Pprls from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select header,subheader,start,intro_header,intro_block,participation_header,participation_block_1,participation_block_2,participation_block_3,participation_block_4,participation_block_5,governance_header,governance_block_1,governance_block_2,governance_block_3,faq_header,glossary_header,glossary_block,created_at,updated_at,published_at,created_by_id,updated_by_id,faq_block from strapi.pprls where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (header == null)
						header = rs.getString(1);
					if (subheader == null)
						subheader = rs.getString(2);
					if (start == null)
						start = rs.getString(3);
					if (introHeader == null)
						introHeader = rs.getString(4);
					if (introBlock == null)
						introBlock = rs.getString(5);
					if (participationHeader == null)
						participationHeader = rs.getString(6);
					if (participationBlock1 == null)
						participationBlock1 = rs.getString(7);
					if (participationBlock2 == null)
						participationBlock2 = rs.getString(8);
					if (participationBlock3 == null)
						participationBlock3 = rs.getString(9);
					if (participationBlock4 == null)
						participationBlock4 = rs.getString(10);
					if (participationBlock5 == null)
						participationBlock5 = rs.getString(11);
					if (governanceHeader == null)
						governanceHeader = rs.getString(12);
					if (governanceBlock1 == null)
						governanceBlock1 = rs.getString(13);
					if (governanceBlock2 == null)
						governanceBlock2 = rs.getString(14);
					if (governanceBlock3 == null)
						governanceBlock3 = rs.getString(15);
					if (faqHeader == null)
						faqHeader = rs.getString(16);
					if (glossaryHeader == null)
						glossaryHeader = rs.getString(17);
					if (glossaryBlock == null)
						glossaryBlock = rs.getString(18);
					if (createdAt == null)
						createdAt = rs.getTimestamp(19);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(20);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(21);
					if (createdById == 0)
						createdById = rs.getInt(22);
					if (updatedById == 0)
						updatedById = rs.getInt(23);
					if (faqBlock == null)
						faqBlock = rs.getString(24);
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
			Pprls currentPprls = (Pprls) pageContext.getAttribute("tag_pprls");
			if(currentPprls != null){
				cachedPprls = currentPprls;
			}
			currentPprls = this;
			pageContext.setAttribute((var == null ? "tag_pprls" : var), currentPprls);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPprls != null){
				pageContext.setAttribute((var == null ? "tag_pprls" : var), this.cachedPprls);
			}else{
				pageContext.removeAttribute((var == null ? "tag_pprls" : var));
				this.cachedPprls = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.pprls set header = ?, subheader = ?, start = ?, intro_header = ?, intro_block = ?, participation_header = ?, participation_block_1 = ?, participation_block_2 = ?, participation_block_3 = ?, participation_block_4 = ?, participation_block_5 = ?, governance_header = ?, governance_block_1 = ?, governance_block_2 = ?, governance_block_3 = ?, faq_header = ?, glossary_header = ?, glossary_block = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, faq_block = ? where id = ? ");
				stmt.setString( 1, header );
				stmt.setString( 2, subheader );
				stmt.setString( 3, start );
				stmt.setString( 4, introHeader );
				stmt.setString( 5, introBlock );
				stmt.setString( 6, participationHeader );
				stmt.setString( 7, participationBlock1 );
				stmt.setString( 8, participationBlock2 );
				stmt.setString( 9, participationBlock3 );
				stmt.setString( 10, participationBlock4 );
				stmt.setString( 11, participationBlock5 );
				stmt.setString( 12, governanceHeader );
				stmt.setString( 13, governanceBlock1 );
				stmt.setString( 14, governanceBlock2 );
				stmt.setString( 15, governanceBlock3 );
				stmt.setString( 16, faqHeader );
				stmt.setString( 17, glossaryHeader );
				stmt.setString( 18, glossaryBlock );
				stmt.setTimestamp( 19, createdAt );
				stmt.setTimestamp( 20, updatedAt );
				stmt.setTimestamp( 21, publishedAt );
				stmt.setInt( 22, createdById );
				stmt.setInt( 23, updatedById );
				stmt.setString( 24, faqBlock );
				stmt.setInt(25,ID);
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
			log.debug("generating new Pprls " + ID);
		}

		if (header == null){
			header = "";
		}
		if (subheader == null){
			subheader = "";
		}
		if (start == null){
			start = "";
		}
		if (introHeader == null){
			introHeader = "";
		}
		if (introBlock == null){
			introBlock = "";
		}
		if (participationHeader == null){
			participationHeader = "";
		}
		if (participationBlock1 == null){
			participationBlock1 = "";
		}
		if (participationBlock2 == null){
			participationBlock2 = "";
		}
		if (participationBlock3 == null){
			participationBlock3 = "";
		}
		if (participationBlock4 == null){
			participationBlock4 = "";
		}
		if (participationBlock5 == null){
			participationBlock5 = "";
		}
		if (governanceHeader == null){
			governanceHeader = "";
		}
		if (governanceBlock1 == null){
			governanceBlock1 = "";
		}
		if (governanceBlock2 == null){
			governanceBlock2 = "";
		}
		if (governanceBlock3 == null){
			governanceBlock3 = "";
		}
		if (faqHeader == null){
			faqHeader = "";
		}
		if (glossaryHeader == null){
			glossaryHeader = "";
		}
		if (glossaryBlock == null){
			glossaryBlock = "";
		}
		if (faqBlock == null){
			faqBlock = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.pprls(header,subheader,start,intro_header,intro_block,participation_header,participation_block_1,participation_block_2,participation_block_3,participation_block_4,participation_block_5,governance_header,governance_block_1,governance_block_2,governance_block_3,faq_header,glossary_header,glossary_block,created_at,updated_at,published_at,created_by_id,updated_by_id,faq_block) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,header);
		stmt.setString(2,subheader);
		stmt.setString(3,start);
		stmt.setString(4,introHeader);
		stmt.setString(5,introBlock);
		stmt.setString(6,participationHeader);
		stmt.setString(7,participationBlock1);
		stmt.setString(8,participationBlock2);
		stmt.setString(9,participationBlock3);
		stmt.setString(10,participationBlock4);
		stmt.setString(11,participationBlock5);
		stmt.setString(12,governanceHeader);
		stmt.setString(13,governanceBlock1);
		stmt.setString(14,governanceBlock2);
		stmt.setString(15,governanceBlock3);
		stmt.setString(16,faqHeader);
		stmt.setString(17,glossaryHeader);
		stmt.setString(18,glossaryBlock);
		stmt.setTimestamp(19,createdAt);
		stmt.setTimestamp(20,updatedAt);
		stmt.setTimestamp(21,publishedAt);
		stmt.setInt(22,createdById);
		stmt.setInt(23,updatedById);
		stmt.setString(24,faqBlock);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Pprls " + ID);

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

	public String getStart () {
		if (commitNeeded)
			return "";
		else
			return start;
	}

	public void setStart (String start) {
		this.start = start;
		commitNeeded = true;
	}

	public String getActualStart () {
		return start;
	}

	public String getIntroHeader () {
		if (commitNeeded)
			return "";
		else
			return introHeader;
	}

	public void setIntroHeader (String introHeader) {
		this.introHeader = introHeader;
		commitNeeded = true;
	}

	public String getActualIntroHeader () {
		return introHeader;
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

	public String getParticipationHeader () {
		if (commitNeeded)
			return "";
		else
			return participationHeader;
	}

	public void setParticipationHeader (String participationHeader) {
		this.participationHeader = participationHeader;
		commitNeeded = true;
	}

	public String getActualParticipationHeader () {
		return participationHeader;
	}

	public String getParticipationBlock1 () {
		if (commitNeeded)
			return "";
		else
			return participationBlock1;
	}

	public void setParticipationBlock1 (String participationBlock1) {
		this.participationBlock1 = participationBlock1;
		commitNeeded = true;
	}

	public String getActualParticipationBlock1 () {
		return participationBlock1;
	}

	public String getParticipationBlock2 () {
		if (commitNeeded)
			return "";
		else
			return participationBlock2;
	}

	public void setParticipationBlock2 (String participationBlock2) {
		this.participationBlock2 = participationBlock2;
		commitNeeded = true;
	}

	public String getActualParticipationBlock2 () {
		return participationBlock2;
	}

	public String getParticipationBlock3 () {
		if (commitNeeded)
			return "";
		else
			return participationBlock3;
	}

	public void setParticipationBlock3 (String participationBlock3) {
		this.participationBlock3 = participationBlock3;
		commitNeeded = true;
	}

	public String getActualParticipationBlock3 () {
		return participationBlock3;
	}

	public String getParticipationBlock4 () {
		if (commitNeeded)
			return "";
		else
			return participationBlock4;
	}

	public void setParticipationBlock4 (String participationBlock4) {
		this.participationBlock4 = participationBlock4;
		commitNeeded = true;
	}

	public String getActualParticipationBlock4 () {
		return participationBlock4;
	}

	public String getParticipationBlock5 () {
		if (commitNeeded)
			return "";
		else
			return participationBlock5;
	}

	public void setParticipationBlock5 (String participationBlock5) {
		this.participationBlock5 = participationBlock5;
		commitNeeded = true;
	}

	public String getActualParticipationBlock5 () {
		return participationBlock5;
	}

	public String getGovernanceHeader () {
		if (commitNeeded)
			return "";
		else
			return governanceHeader;
	}

	public void setGovernanceHeader (String governanceHeader) {
		this.governanceHeader = governanceHeader;
		commitNeeded = true;
	}

	public String getActualGovernanceHeader () {
		return governanceHeader;
	}

	public String getGovernanceBlock1 () {
		if (commitNeeded)
			return "";
		else
			return governanceBlock1;
	}

	public void setGovernanceBlock1 (String governanceBlock1) {
		this.governanceBlock1 = governanceBlock1;
		commitNeeded = true;
	}

	public String getActualGovernanceBlock1 () {
		return governanceBlock1;
	}

	public String getGovernanceBlock2 () {
		if (commitNeeded)
			return "";
		else
			return governanceBlock2;
	}

	public void setGovernanceBlock2 (String governanceBlock2) {
		this.governanceBlock2 = governanceBlock2;
		commitNeeded = true;
	}

	public String getActualGovernanceBlock2 () {
		return governanceBlock2;
	}

	public String getGovernanceBlock3 () {
		if (commitNeeded)
			return "";
		else
			return governanceBlock3;
	}

	public void setGovernanceBlock3 (String governanceBlock3) {
		this.governanceBlock3 = governanceBlock3;
		commitNeeded = true;
	}

	public String getActualGovernanceBlock3 () {
		return governanceBlock3;
	}

	public String getFaqHeader () {
		if (commitNeeded)
			return "";
		else
			return faqHeader;
	}

	public void setFaqHeader (String faqHeader) {
		this.faqHeader = faqHeader;
		commitNeeded = true;
	}

	public String getActualFaqHeader () {
		return faqHeader;
	}

	public String getGlossaryHeader () {
		if (commitNeeded)
			return "";
		else
			return glossaryHeader;
	}

	public void setGlossaryHeader (String glossaryHeader) {
		this.glossaryHeader = glossaryHeader;
		commitNeeded = true;
	}

	public String getActualGlossaryHeader () {
		return glossaryHeader;
	}

	public String getGlossaryBlock () {
		if (commitNeeded)
			return "";
		else
			return glossaryBlock;
	}

	public void setGlossaryBlock (String glossaryBlock) {
		this.glossaryBlock = glossaryBlock;
		commitNeeded = true;
	}

	public String getActualGlossaryBlock () {
		return glossaryBlock;
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

	public String getFaqBlock () {
		if (commitNeeded)
			return "";
		else
			return faqBlock;
	}

	public void setFaqBlock (String faqBlock) {
		this.faqBlock = faqBlock;
		commitNeeded = true;
	}

	public String getActualFaqBlock () {
		return faqBlock;
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

	public static String startValue() throws JspException {
		try {
			return currentInstance.getStart();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function startValue()");
		}
	}

	public static String introHeaderValue() throws JspException {
		try {
			return currentInstance.getIntroHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function introHeaderValue()");
		}
	}

	public static String introBlockValue() throws JspException {
		try {
			return currentInstance.getIntroBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function introBlockValue()");
		}
	}

	public static String participationHeaderValue() throws JspException {
		try {
			return currentInstance.getParticipationHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationHeaderValue()");
		}
	}

	public static String participationBlock1Value() throws JspException {
		try {
			return currentInstance.getParticipationBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationBlock1Value()");
		}
	}

	public static String participationBlock2Value() throws JspException {
		try {
			return currentInstance.getParticipationBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationBlock2Value()");
		}
	}

	public static String participationBlock3Value() throws JspException {
		try {
			return currentInstance.getParticipationBlock3();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationBlock3Value()");
		}
	}

	public static String participationBlock4Value() throws JspException {
		try {
			return currentInstance.getParticipationBlock4();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationBlock4Value()");
		}
	}

	public static String participationBlock5Value() throws JspException {
		try {
			return currentInstance.getParticipationBlock5();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function participationBlock5Value()");
		}
	}

	public static String governanceHeaderValue() throws JspException {
		try {
			return currentInstance.getGovernanceHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function governanceHeaderValue()");
		}
	}

	public static String governanceBlock1Value() throws JspException {
		try {
			return currentInstance.getGovernanceBlock1();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function governanceBlock1Value()");
		}
	}

	public static String governanceBlock2Value() throws JspException {
		try {
			return currentInstance.getGovernanceBlock2();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function governanceBlock2Value()");
		}
	}

	public static String governanceBlock3Value() throws JspException {
		try {
			return currentInstance.getGovernanceBlock3();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function governanceBlock3Value()");
		}
	}

	public static String faqHeaderValue() throws JspException {
		try {
			return currentInstance.getFaqHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqHeaderValue()");
		}
	}

	public static String glossaryHeaderValue() throws JspException {
		try {
			return currentInstance.getGlossaryHeader();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function glossaryHeaderValue()");
		}
	}

	public static String glossaryBlockValue() throws JspException {
		try {
			return currentInstance.getGlossaryBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function glossaryBlockValue()");
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

	public static String faqBlockValue() throws JspException {
		try {
			return currentInstance.getFaqBlock();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqBlockValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		header = null;
		subheader = null;
		start = null;
		introHeader = null;
		introBlock = null;
		participationHeader = null;
		participationBlock1 = null;
		participationBlock2 = null;
		participationBlock3 = null;
		participationBlock4 = null;
		participationBlock5 = null;
		governanceHeader = null;
		governanceBlock1 = null;
		governanceBlock2 = null;
		governanceBlock3 = null;
		faqHeader = null;
		glossaryHeader = null;
		glossaryBlock = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		faqBlock = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
