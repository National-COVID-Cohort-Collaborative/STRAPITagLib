package org.cd2h.STRAPITagLib.phastrsPublicHealthQuestionsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.phastrs.Phastrs;
import org.cd2h.STRAPITagLib.publicHealthQuestions.PublicHealthQuestions;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class PhastrsPublicHealthQuestionsLinks extends STRAPITagLibTagSupport {

	static PhastrsPublicHealthQuestionsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(PhastrsPublicHealthQuestionsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int phastrId = 0;
	int publicHealthQuestionId = 0;
	double publicHealthQuestionOrder = 0.0;

	private String var = null;

	private PhastrsPublicHealthQuestionsLinks cachedPhastrsPublicHealthQuestionsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			Phastrs thePhastrs = (Phastrs)findAncestorWithClass(this, Phastrs.class);
			if (thePhastrs!= null)
				parentEntities.addElement(thePhastrs);
			PublicHealthQuestions thePublicHealthQuestions = (PublicHealthQuestions)findAncestorWithClass(this, PublicHealthQuestions.class);
			if (thePublicHealthQuestions!= null)
				parentEntities.addElement(thePublicHealthQuestions);

			if (thePhastrs == null) {
			} else {
				phastrId = thePhastrs.getID();
			}
			if (thePublicHealthQuestions == null) {
			} else {
				publicHealthQuestionId = thePublicHealthQuestions.getID();
			}

			PhastrsPublicHealthQuestionsLinksIterator thePhastrsPublicHealthQuestionsLinksIterator = (PhastrsPublicHealthQuestionsLinksIterator)findAncestorWithClass(this, PhastrsPublicHealthQuestionsLinksIterator.class);

			if (thePhastrsPublicHealthQuestionsLinksIterator != null) {
				ID = thePhastrsPublicHealthQuestionsLinksIterator.getID();
			}

			if (thePhastrsPublicHealthQuestionsLinksIterator == null && thePhastrs == null && thePublicHealthQuestions == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new PhastrsPublicHealthQuestionsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (thePhastrsPublicHealthQuestionsLinksIterator == null && thePhastrs != null && thePublicHealthQuestions == null) {
				// an ID was provided as an attribute - we need to load a PhastrsPublicHealthQuestionsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select phastr_id,public_health_question_id,public_health_question_order from strapi.phastrs_public_health_questions_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (phastrId == 0)
						phastrId = rs.getInt(1);
					if (publicHealthQuestionId == 0)
						publicHealthQuestionId = rs.getInt(2);
					if (publicHealthQuestionOrder == 0.0)
						publicHealthQuestionOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (thePhastrsPublicHealthQuestionsLinksIterator == null && thePhastrs == null && thePublicHealthQuestions != null) {
				// an ID was provided as an attribute - we need to load a PhastrsPublicHealthQuestionsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select phastr_id,public_health_question_id,public_health_question_order from strapi.phastrs_public_health_questions_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (phastrId == 0)
						phastrId = rs.getInt(1);
					if (publicHealthQuestionId == 0)
						publicHealthQuestionId = rs.getInt(2);
					if (publicHealthQuestionOrder == 0.0)
						publicHealthQuestionOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a PhastrsPublicHealthQuestionsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select phastr_id,public_health_question_id,public_health_question_order from strapi.phastrs_public_health_questions_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (phastrId == 0)
						phastrId = rs.getInt(1);
					if (publicHealthQuestionId == 0)
						publicHealthQuestionId = rs.getInt(2);
					if (publicHealthQuestionOrder == 0.0)
						publicHealthQuestionOrder = rs.getDouble(3);
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
			PhastrsPublicHealthQuestionsLinks currentPhastrsPublicHealthQuestionsLinks = (PhastrsPublicHealthQuestionsLinks) pageContext.getAttribute("tag_phastrsPublicHealthQuestionsLinks");
			if(currentPhastrsPublicHealthQuestionsLinks != null){
				cachedPhastrsPublicHealthQuestionsLinks = currentPhastrsPublicHealthQuestionsLinks;
			}
			currentPhastrsPublicHealthQuestionsLinks = this;
			pageContext.setAttribute((var == null ? "tag_phastrsPublicHealthQuestionsLinks" : var), currentPhastrsPublicHealthQuestionsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedPhastrsPublicHealthQuestionsLinks != null){
				pageContext.setAttribute((var == null ? "tag_phastrsPublicHealthQuestionsLinks" : var), this.cachedPhastrsPublicHealthQuestionsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_phastrsPublicHealthQuestionsLinks" : var));
				this.cachedPhastrsPublicHealthQuestionsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.phastrs_public_health_questions_links set phastr_id = ?, public_health_question_id = ?, public_health_question_order = ? where id = ? ");
				if ( phastrId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, phastrId );
				}
				if ( publicHealthQuestionId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, publicHealthQuestionId );
				}
				stmt.setDouble( 3, publicHealthQuestionOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.phastrs_public_health_questions_links(phastr_id,public_health_question_id,public_health_question_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (phastrId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,phastrId);
		}
		if (publicHealthQuestionId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,publicHealthQuestionId);
		}
		stmt.setDouble(3,publicHealthQuestionOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new PhastrsPublicHealthQuestionsLinks " + ID);

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

	public int getPhastrId () {
		return phastrId;
	}

	public void setPhastrId (int phastrId) {
		this.phastrId = phastrId;
		commitNeeded = true;
	}

	public int getActualPhastrId () {
		return phastrId;
	}

	public int getPublicHealthQuestionId () {
		return publicHealthQuestionId;
	}

	public void setPublicHealthQuestionId (int publicHealthQuestionId) {
		this.publicHealthQuestionId = publicHealthQuestionId;
		commitNeeded = true;
	}

	public int getActualPublicHealthQuestionId () {
		return publicHealthQuestionId;
	}

	public double getPublicHealthQuestionOrder () {
		return publicHealthQuestionOrder;
	}

	public void setPublicHealthQuestionOrder (double publicHealthQuestionOrder) {
		this.publicHealthQuestionOrder = publicHealthQuestionOrder;
		commitNeeded = true;
	}

	public double getActualPublicHealthQuestionOrder () {
		return publicHealthQuestionOrder;
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

	public static Integer phastrIdValue() throws JspException {
		try {
			return currentInstance.getPhastrId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function phastrIdValue()");
		}
	}

	public static Integer publicHealthQuestionIdValue() throws JspException {
		try {
			return currentInstance.getPublicHealthQuestionId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function publicHealthQuestionIdValue()");
		}
	}

	public static Double publicHealthQuestionOrderValue() throws JspException {
		try {
			return currentInstance.getPublicHealthQuestionOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function publicHealthQuestionOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		phastrId = 0;
		publicHealthQuestionId = 0;
		publicHealthQuestionOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
