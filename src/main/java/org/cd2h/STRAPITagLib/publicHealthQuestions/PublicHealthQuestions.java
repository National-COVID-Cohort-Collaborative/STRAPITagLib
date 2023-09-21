package org.cd2h.STRAPITagLib.publicHealthQuestions;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.util.Date;
import java.sql.Timestamp;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;


import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PublicHealthQuestions extends STRAPITagLibTagSupport {

	static PublicHealthQuestions currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PublicHealthQuestions.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String priority = null;
	String owner = null;
	String title = null;
	String description = null;
	Date postDate = null;
	Date openDate = null;
	Date closeDate = null;
	String contractLength = null;
	int contractCount = 0;
	int contractAmount = 0;
	String contact = null;
	String contactEmail = null;
	String aims = null;
	String inclusionCriteria = null;
	String exclusionCriteria = null;
	String phenotype = null;
	String expectedResults = null;
	String analysisPlan = null;
	String deliverables = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private PublicHealthQuestions cachedPublicHealthQuestions = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			PublicHealthQuestionsIterator thePublicHealthQuestionsIterator = (PublicHealthQuestionsIterator)findAncestorWithClass(this, PublicHealthQuestionsIterator.class);

			if (thePublicHealthQuestionsIterator != null) {
				ID = thePublicHealthQuestionsIterator.getID();
			}

			if (thePublicHealthQuestionsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PublicHealthQuestions and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PublicHealthQuestions from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select priority,owner,title,description,post_date,open_date,close_date,contract_length,contract_count,contract_amount,contact,contact_email,aims,inclusion_criteria,exclusion_criteria,phenotype,expected_results,analysis_plan,deliverables,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.public_health_questions where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (priority == null)
						priority = rs.getString(1);
					if (owner == null)
						owner = rs.getString(2);
					if (title == null)
						title = rs.getString(3);
					if (description == null)
						description = rs.getString(4);
					if (postDate == null)
						postDate = rs.getDate(5);
					if (openDate == null)
						openDate = rs.getDate(6);
					if (closeDate == null)
						closeDate = rs.getDate(7);
					if (contractLength == null)
						contractLength = rs.getString(8);
					if (contractCount == 0)
						contractCount = rs.getInt(9);
					if (contractAmount == 0)
						contractAmount = rs.getInt(10);
					if (contact == null)
						contact = rs.getString(11);
					if (contactEmail == null)
						contactEmail = rs.getString(12);
					if (aims == null)
						aims = rs.getString(13);
					if (inclusionCriteria == null)
						inclusionCriteria = rs.getString(14);
					if (exclusionCriteria == null)
						exclusionCriteria = rs.getString(15);
					if (phenotype == null)
						phenotype = rs.getString(16);
					if (expectedResults == null)
						expectedResults = rs.getString(17);
					if (analysisPlan == null)
						analysisPlan = rs.getString(18);
					if (deliverables == null)
						deliverables = rs.getString(19);
					if (createdAt == null)
						createdAt = rs.getTimestamp(20);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(21);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(22);
					if (createdById == 0)
						createdById = rs.getInt(23);
					if (updatedById == 0)
						updatedById = rs.getInt(24);
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
			PublicHealthQuestions currentPublicHealthQuestions = (PublicHealthQuestions) pageContext.getAttribute("tag_publicHealthQuestions");
			if(currentPublicHealthQuestions != null){
				cachedPublicHealthQuestions = currentPublicHealthQuestions;
			}
			currentPublicHealthQuestions = this;
			pageContext.setAttribute((var == null ? "tag_publicHealthQuestions" : var), currentPublicHealthQuestions);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPublicHealthQuestions != null){
				pageContext.setAttribute((var == null ? "tag_publicHealthQuestions" : var), this.cachedPublicHealthQuestions);
			}else{
				pageContext.removeAttribute((var == null ? "tag_publicHealthQuestions" : var));
				this.cachedPublicHealthQuestions = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.public_health_questions set priority = ?, owner = ?, title = ?, description = ?, post_date = ?, open_date = ?, close_date = ?, contract_length = ?, contract_count = ?, contract_amount = ?, contact = ?, contact_email = ?, aims = ?, inclusion_criteria = ?, exclusion_criteria = ?, phenotype = ?, expected_results = ?, analysis_plan = ?, deliverables = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, priority );
				stmt.setString( 2, owner );
				stmt.setString( 3, title );
				stmt.setString( 4, description );
				stmt.setDate( 5, postDate == null ? null : new java.sql.Date( postDate.getTime() ) );
				stmt.setDate( 6, openDate == null ? null : new java.sql.Date( openDate.getTime() ) );
				stmt.setDate( 7, closeDate == null ? null : new java.sql.Date( closeDate.getTime() ) );
				stmt.setString( 8, contractLength );
				stmt.setInt( 9, contractCount );
				stmt.setInt( 10, contractAmount );
				stmt.setString( 11, contact );
				stmt.setString( 12, contactEmail );
				stmt.setString( 13, aims );
				stmt.setString( 14, inclusionCriteria );
				stmt.setString( 15, exclusionCriteria );
				stmt.setString( 16, phenotype );
				stmt.setString( 17, expectedResults );
				stmt.setString( 18, analysisPlan );
				stmt.setString( 19, deliverables );
				stmt.setTimestamp( 20, createdAt );
				stmt.setTimestamp( 21, updatedAt );
				stmt.setTimestamp( 22, publishedAt );
				stmt.setInt( 23, createdById );
				stmt.setInt( 24, updatedById );
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
			log.debug("generating new PublicHealthQuestions " + ID);
		}

		if (priority == null){
			priority = "";
		}
		if (owner == null){
			owner = "";
		}
		if (title == null){
			title = "";
		}
		if (description == null){
			description = "";
		}
		if (contractLength == null){
			contractLength = "";
		}
		if (contact == null){
			contact = "";
		}
		if (contactEmail == null){
			contactEmail = "";
		}
		if (aims == null){
			aims = "";
		}
		if (inclusionCriteria == null){
			inclusionCriteria = "";
		}
		if (exclusionCriteria == null){
			exclusionCriteria = "";
		}
		if (phenotype == null){
			phenotype = "";
		}
		if (expectedResults == null){
			expectedResults = "";
		}
		if (analysisPlan == null){
			analysisPlan = "";
		}
		if (deliverables == null){
			deliverables = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.public_health_questions(priority,owner,title,description,post_date,open_date,close_date,contract_length,contract_count,contract_amount,contact,contact_email,aims,inclusion_criteria,exclusion_criteria,phenotype,expected_results,analysis_plan,deliverables,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,priority);
		stmt.setString(2,owner);
		stmt.setString(3,title);
		stmt.setString(4,description);
		stmt.setDate(5,postDate == null ? null : new java.sql.Date(postDate.getTime()));
		stmt.setDate(6,openDate == null ? null : new java.sql.Date(openDate.getTime()));
		stmt.setDate(7,closeDate == null ? null : new java.sql.Date(closeDate.getTime()));
		stmt.setString(8,contractLength);
		stmt.setInt(9,contractCount);
		stmt.setInt(10,contractAmount);
		stmt.setString(11,contact);
		stmt.setString(12,contactEmail);
		stmt.setString(13,aims);
		stmt.setString(14,inclusionCriteria);
		stmt.setString(15,exclusionCriteria);
		stmt.setString(16,phenotype);
		stmt.setString(17,expectedResults);
		stmt.setString(18,analysisPlan);
		stmt.setString(19,deliverables);
		stmt.setTimestamp(20,createdAt);
		stmt.setTimestamp(21,updatedAt);
		stmt.setTimestamp(22,publishedAt);
		stmt.setInt(23,createdById);
		stmt.setInt(24,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PublicHealthQuestions " + ID);

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

	public String getPriority () {
		if (commitNeeded)
			return "";
		else
			return priority;
	}

	public void setPriority (String priority) {
		this.priority = priority;
		commitNeeded = true;
	}

	public String getActualPriority () {
		return priority;
	}

	public String getOwner () {
		if (commitNeeded)
			return "";
		else
			return owner;
	}

	public void setOwner (String owner) {
		this.owner = owner;
		commitNeeded = true;
	}

	public String getActualOwner () {
		return owner;
	}

	public String getTitle () {
		if (commitNeeded)
			return "";
		else
			return title;
	}

	public void setTitle (String title) {
		this.title = title;
		commitNeeded = true;
	}

	public String getActualTitle () {
		return title;
	}

	public String getDescription () {
		if (commitNeeded)
			return "";
		else
			return description;
	}

	public void setDescription (String description) {
		this.description = description;
		commitNeeded = true;
	}

	public String getActualDescription () {
		return description;
	}

	public Date getPostDate () {
		return postDate;
	}

	public void setPostDate (Date postDate) {
		this.postDate = postDate;
		commitNeeded = true;
	}

	public Date getActualPostDate () {
		return postDate;
	}

	public void setPostDateToNow ( ) {
		this.postDate = new java.util.Date();
		commitNeeded = true;
	}

	public Date getOpenDate () {
		return openDate;
	}

	public void setOpenDate (Date openDate) {
		this.openDate = openDate;
		commitNeeded = true;
	}

	public Date getActualOpenDate () {
		return openDate;
	}

	public void setOpenDateToNow ( ) {
		this.openDate = new java.util.Date();
		commitNeeded = true;
	}

	public Date getCloseDate () {
		return closeDate;
	}

	public void setCloseDate (Date closeDate) {
		this.closeDate = closeDate;
		commitNeeded = true;
	}

	public Date getActualCloseDate () {
		return closeDate;
	}

	public void setCloseDateToNow ( ) {
		this.closeDate = new java.util.Date();
		commitNeeded = true;
	}

	public String getContractLength () {
		if (commitNeeded)
			return "";
		else
			return contractLength;
	}

	public void setContractLength (String contractLength) {
		this.contractLength = contractLength;
		commitNeeded = true;
	}

	public String getActualContractLength () {
		return contractLength;
	}

	public int getContractCount () {
		return contractCount;
	}

	public void setContractCount (int contractCount) {
		this.contractCount = contractCount;
		commitNeeded = true;
	}

	public int getActualContractCount () {
		return contractCount;
	}

	public int getContractAmount () {
		return contractAmount;
	}

	public void setContractAmount (int contractAmount) {
		this.contractAmount = contractAmount;
		commitNeeded = true;
	}

	public int getActualContractAmount () {
		return contractAmount;
	}

	public String getContact () {
		if (commitNeeded)
			return "";
		else
			return contact;
	}

	public void setContact (String contact) {
		this.contact = contact;
		commitNeeded = true;
	}

	public String getActualContact () {
		return contact;
	}

	public String getContactEmail () {
		if (commitNeeded)
			return "";
		else
			return contactEmail;
	}

	public void setContactEmail (String contactEmail) {
		this.contactEmail = contactEmail;
		commitNeeded = true;
	}

	public String getActualContactEmail () {
		return contactEmail;
	}

	public String getAims () {
		if (commitNeeded)
			return "";
		else
			return aims;
	}

	public void setAims (String aims) {
		this.aims = aims;
		commitNeeded = true;
	}

	public String getActualAims () {
		return aims;
	}

	public String getInclusionCriteria () {
		if (commitNeeded)
			return "";
		else
			return inclusionCriteria;
	}

	public void setInclusionCriteria (String inclusionCriteria) {
		this.inclusionCriteria = inclusionCriteria;
		commitNeeded = true;
	}

	public String getActualInclusionCriteria () {
		return inclusionCriteria;
	}

	public String getExclusionCriteria () {
		if (commitNeeded)
			return "";
		else
			return exclusionCriteria;
	}

	public void setExclusionCriteria (String exclusionCriteria) {
		this.exclusionCriteria = exclusionCriteria;
		commitNeeded = true;
	}

	public String getActualExclusionCriteria () {
		return exclusionCriteria;
	}

	public String getPhenotype () {
		if (commitNeeded)
			return "";
		else
			return phenotype;
	}

	public void setPhenotype (String phenotype) {
		this.phenotype = phenotype;
		commitNeeded = true;
	}

	public String getActualPhenotype () {
		return phenotype;
	}

	public String getExpectedResults () {
		if (commitNeeded)
			return "";
		else
			return expectedResults;
	}

	public void setExpectedResults (String expectedResults) {
		this.expectedResults = expectedResults;
		commitNeeded = true;
	}

	public String getActualExpectedResults () {
		return expectedResults;
	}

	public String getAnalysisPlan () {
		if (commitNeeded)
			return "";
		else
			return analysisPlan;
	}

	public void setAnalysisPlan (String analysisPlan) {
		this.analysisPlan = analysisPlan;
		commitNeeded = true;
	}

	public String getActualAnalysisPlan () {
		return analysisPlan;
	}

	public String getDeliverables () {
		if (commitNeeded)
			return "";
		else
			return deliverables;
	}

	public void setDeliverables (String deliverables) {
		this.deliverables = deliverables;
		commitNeeded = true;
	}

	public String getActualDeliverables () {
		return deliverables;
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

	public static String priorityValue() throws JspException {
		try {
			return currentInstance.getPriority();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function priorityValue()");
		}
	}

	public static String ownerValue() throws JspException {
		try {
			return currentInstance.getOwner();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function ownerValue()");
		}
	}

	public static String titleValue() throws JspException {
		try {
			return currentInstance.getTitle();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function titleValue()");
		}
	}

	public static String descriptionValue() throws JspException {
		try {
			return currentInstance.getDescription();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function descriptionValue()");
		}
	}

	public static Date postDateValue() throws JspException {
		try {
			return currentInstance.getPostDate();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function postDateValue()");
		}
	}

	public static Date openDateValue() throws JspException {
		try {
			return currentInstance.getOpenDate();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function openDateValue()");
		}
	}

	public static Date closeDateValue() throws JspException {
		try {
			return currentInstance.getCloseDate();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function closeDateValue()");
		}
	}

	public static String contractLengthValue() throws JspException {
		try {
			return currentInstance.getContractLength();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contractLengthValue()");
		}
	}

	public static Integer contractCountValue() throws JspException {
		try {
			return currentInstance.getContractCount();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contractCountValue()");
		}
	}

	public static Integer contractAmountValue() throws JspException {
		try {
			return currentInstance.getContractAmount();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contractAmountValue()");
		}
	}

	public static String contactValue() throws JspException {
		try {
			return currentInstance.getContact();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contactValue()");
		}
	}

	public static String contactEmailValue() throws JspException {
		try {
			return currentInstance.getContactEmail();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function contactEmailValue()");
		}
	}

	public static String aimsValue() throws JspException {
		try {
			return currentInstance.getAims();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function aimsValue()");
		}
	}

	public static String inclusionCriteriaValue() throws JspException {
		try {
			return currentInstance.getInclusionCriteria();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function inclusionCriteriaValue()");
		}
	}

	public static String exclusionCriteriaValue() throws JspException {
		try {
			return currentInstance.getExclusionCriteria();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function exclusionCriteriaValue()");
		}
	}

	public static String phenotypeValue() throws JspException {
		try {
			return currentInstance.getPhenotype();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function phenotypeValue()");
		}
	}

	public static String expectedResultsValue() throws JspException {
		try {
			return currentInstance.getExpectedResults();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function expectedResultsValue()");
		}
	}

	public static String analysisPlanValue() throws JspException {
		try {
			return currentInstance.getAnalysisPlan();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function analysisPlanValue()");
		}
	}

	public static String deliverablesValue() throws JspException {
		try {
			return currentInstance.getDeliverables();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function deliverablesValue()");
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
		priority = null;
		owner = null;
		title = null;
		description = null;
		postDate = null;
		openDate = null;
		closeDate = null;
		contractLength = null;
		contractCount = 0;
		contractAmount = 0;
		contact = null;
		contactEmail = null;
		aims = null;
		inclusionCriteria = null;
		exclusionCriteria = null;
		phenotype = null;
		expectedResults = null;
		analysisPlan = null;
		deliverables = null;
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
