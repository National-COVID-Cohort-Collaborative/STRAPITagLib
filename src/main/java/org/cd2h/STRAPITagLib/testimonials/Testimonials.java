package org.cd2h.STRAPITagLib.testimonials;

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
public class Testimonials extends STRAPITagLibTagSupport {

	static Testimonials currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(Testimonials.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	String name = null;
	String quote = null;
	String author = null;
	Timestamp createdAt = null;
	Timestamp updatedAt = null;
	Timestamp publishedAt = null;
	int createdById = 0;
	int updatedById = 0;

	private String var = null;

	private Testimonials cachedTestimonials = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {


			TestimonialsIterator theTestimonialsIterator = (TestimonialsIterator)findAncestorWithClass(this, TestimonialsIterator.class);

			if (theTestimonialsIterator != null) {
				ID = theTestimonialsIterator.getID();
			}

			if (theTestimonialsIterator == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new Testimonials and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else {
				// an iterator or ID was provided as an attribute - we need to load a Testimonials from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select name,quote,author,created_at,updated_at,published_at,created_by_id,updated_by_id from strapi.testimonials where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (name == null)
						name = rs.getString(1);
					if (quote == null)
						quote = rs.getString(2);
					if (author == null)
						author = rs.getString(3);
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
			Testimonials currentTestimonials = (Testimonials) pageContext.getAttribute("tag_testimonials");
			if(currentTestimonials != null){
				cachedTestimonials = currentTestimonials;
			}
			currentTestimonials = this;
			pageContext.setAttribute((var == null ? "tag_testimonials" : var), currentTestimonials);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedTestimonials != null){
				pageContext.setAttribute((var == null ? "tag_testimonials" : var), this.cachedTestimonials);
			}else{
				pageContext.removeAttribute((var == null ? "tag_testimonials" : var));
				this.cachedTestimonials = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.testimonials set name = ?, quote = ?, author = ?, created_at = ?, updated_at = ?, published_at = ?, created_by_id = ?, updated_by_id = ? where id = ? ");
				stmt.setString( 1, name );
				stmt.setString( 2, quote );
				stmt.setString( 3, author );
				stmt.setTimestamp( 4, createdAt );
				stmt.setTimestamp( 5, updatedAt );
				stmt.setTimestamp( 6, publishedAt );
				stmt.setInt( 7, createdById );
				stmt.setInt( 8, updatedById );
				stmt.setInt(9,ID);
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
			log.debug("generating new Testimonials " + ID);
		}

		if (name == null){
			name = "";
		}
		if (quote == null){
			quote = "";
		}
		if (author == null){
			author = "";
		}
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.testimonials(name,quote,author,created_at,updated_at,published_at,created_by_id,updated_by_id) values (?,?,?,?,?,?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1,name);
		stmt.setString(2,quote);
		stmt.setString(3,author);
		stmt.setTimestamp(4,createdAt);
		stmt.setTimestamp(5,updatedAt);
		stmt.setTimestamp(6,publishedAt);
		stmt.setInt(7,createdById);
		stmt.setInt(8,updatedById);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		stmt.close();

		log.debug("generating new Testimonials " + ID);

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

	public String getQuote () {
		if (commitNeeded)
			return "";
		else
			return quote;
	}

	public void setQuote (String quote) {
		this.quote = quote;
		commitNeeded = true;
	}

	public String getActualQuote () {
		return quote;
	}

	public String getAuthor () {
		if (commitNeeded)
			return "";
		else
			return author;
	}

	public void setAuthor (String author) {
		this.author = author;
		commitNeeded = true;
	}

	public String getActualAuthor () {
		return author;
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

	public static String nameValue() throws JspException {
		try {
			return currentInstance.getName();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function nameValue()");
		}
	}

	public static String quoteValue() throws JspException {
		try {
			return currentInstance.getQuote();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function quoteValue()");
		}
	}

	public static String authorValue() throws JspException {
		try {
			return currentInstance.getAuthor();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function authorValue()");
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
		name = null;
		quote = null;
		author = null;
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
