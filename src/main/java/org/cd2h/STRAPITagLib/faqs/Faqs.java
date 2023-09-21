package org.cd2h.STRAPITagLib.faqs;

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
public class Faqs extends STRAPITagLibTagSupport {

	static Faqs currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Faqs.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String question = null;
	String answer = null;
	String category = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;
	String label = null;

	private String var = null;

	private Faqs cachedFaqs = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			FaqsIterator theFaqsIterator = (FaqsIterator)findAncestorWithClass(this, FaqsIterator.class);

			if (theFaqsIterator != null) {
				ID = theFaqsIterator.getID();
			}

			if (theFaqsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Faqs and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Faqs from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select question,answer,category,created_at,updated_at,published_at,created_by_id,updated_by_id,label from strapi.faqs where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (question == null)
						question = rs.getString(1);
					if (answer == null)
						answer = rs.getString(2);
					if (category == null)
						category = rs.getString(3);
					if (createdAt == null)
						createdAt = rs.getTimestamp(4);
					if (updatedAt == null)
						updatedAt = rs.getTimestamp(5);
					if (publishedAt == null)
						publishedAt = rs.getTimestamp(6);
					if (createdById == 0)
						createdById = rs.getInt(7);
					if (updatedById == 0)
						updatedById = rs.getInt(8);
					if (label == null)
						label = rs.getString(9);
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
			Faqs currentFaqs = (Faqs) pageContext.getAttribute("tag_faqs");
			if(currentFaqs != null){
				cachedFaqs = currentFaqs;
			}
			currentFaqs = this;
			pageContext.setAttribute((var == null ? "tag_faqs" : var), currentFaqs);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFaqs != null){
				pageContext.setAttribute((var == null ? "tag_faqs" : var), this.cachedFaqs);
			}else{
				pageContext.removeAttribute((var == null ? "tag_faqs" : var));
				this.cachedFaqs = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.faqs set question = ?, answer = ?, category = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ?, label = ? where id = ? ");
				stmt.setString( 1, question );
				stmt.setString( 2, answer );
				stmt.setString( 3, category );
				stmt.setTimestamp( 4, createdAt );
				stmt.setTimestamp( 5, updatedAt );
				stmt.setTimestamp( 6, publishedAt );
				stmt.setInt( 7, createdById );
				stmt.setInt( 8, updatedById );
				stmt.setString( 9, label );
				stmt.setInt(10,ID);
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
			log.debug("generating new Faqs " + ID);
		}

		if (question == null){
			question = "";
		}
		if (answer == null){
			answer = "";
		}
		if (category == null){
			category = "";
		}
		if (label == null){
			label = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.faqs(question,answer,category,created_at,updated_at,published_at,created_by_id,updated_by_id,label) values (?,?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,question);
		stmt.setString(2,answer);
		stmt.setString(3,category);
		stmt.setTimestamp(4,createdAt);
		stmt.setTimestamp(5,updatedAt);
		stmt.setTimestamp(6,publishedAt);
		stmt.setInt(7,createdById);
		stmt.setInt(8,updatedById);
		stmt.setString(9,label);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new Faqs " + ID);

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

	public String getQuestion () {
		if (commitNeeded)
			return "";
		else
			return question;
	}

	public void setQuestion (String question) {
		this.question = question;
		commitNeeded = true;
	}

	public String getActualQuestion () {
		return question;
	}

	public String getAnswer () {
		if (commitNeeded)
			return "";
		else
			return answer;
	}

	public void setAnswer (String answer) {
		this.answer = answer;
		commitNeeded = true;
	}

	public String getActualAnswer () {
		return answer;
	}

	public String getCategory () {
		if (commitNeeded)
			return "";
		else
			return category;
	}

	public void setCategory (String category) {
		this.category = category;
		commitNeeded = true;
	}

	public String getActualCategory () {
		return category;
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

	public String getLabel () {
		if (commitNeeded)
			return "";
		else
			return label;
	}

	public void setLabel (String label) {
		this.label = label;
		commitNeeded = true;
	}

	public String getActualLabel () {
		return label;
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

	public static String questionValue() throws JspException {
		try {
			return currentInstance.getQuestion();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function questionValue()");
		}
	}

	public static String answerValue() throws JspException {
		try {
			return currentInstance.getAnswer();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function answerValue()");
		}
	}

	public static String categoryValue() throws JspException {
		try {
			return currentInstance.getCategory();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function categoryValue()");
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

	public static String labelValue() throws JspException {
		try {
			return currentInstance.getLabel();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function labelValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		question = null;
		answer = null;
		category = null;
		createdAt = null;
		updatedAt = null;
		publishedAt = null;
		createdById = 0;
		updatedById = 0;
		label = null;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
