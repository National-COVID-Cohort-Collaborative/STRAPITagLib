package org.cd2h.STRAPITagLib.faqListsAnalyticsFaqsLinks;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.faqLists.FaqLists;
import org.cd2h.STRAPITagLib.faqs.Faqs;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.Sequence;

@SuppressWarnings("serial")
public class FaqListsAnalyticsFaqsLinks extends STRAPITagLibTagSupport {

	static FaqListsAnalyticsFaqsLinks currentInstance = null;
	boolean commitNeeded = false;
	boolean newRecord = false;

	private static final Logger log = LogManager.getLogger(FaqListsAnalyticsFaqsLinks.class);

	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	int ID = 0;
	int faqListId = 0;
	int faqId = 0;
	double faqOrder = 0.0;

	private String var = null;

	private FaqListsAnalyticsFaqsLinks cachedFaqListsAnalyticsFaqsLinks = null;

	public int doStartTag() throws JspException {
		currentInstance = this;
		try {
			FaqLists theFaqLists = (FaqLists)findAncestorWithClass(this, FaqLists.class);
			if (theFaqLists!= null)
				parentEntities.addElement(theFaqLists);
			Faqs theFaqs = (Faqs)findAncestorWithClass(this, Faqs.class);
			if (theFaqs!= null)
				parentEntities.addElement(theFaqs);

			if (theFaqLists == null) {
			} else {
				faqListId = theFaqLists.getID();
			}
			if (theFaqs == null) {
			} else {
				faqId = theFaqs.getID();
			}

			FaqListsAnalyticsFaqsLinksIterator theFaqListsAnalyticsFaqsLinksIterator = (FaqListsAnalyticsFaqsLinksIterator)findAncestorWithClass(this, FaqListsAnalyticsFaqsLinksIterator.class);

			if (theFaqListsAnalyticsFaqsLinksIterator != null) {
				ID = theFaqListsAnalyticsFaqsLinksIterator.getID();
			}

			if (theFaqListsAnalyticsFaqsLinksIterator == null && theFaqLists == null && theFaqs == null && ID == 0) {
				// no ID was provided - the default is to assume that it is a new FaqListsAnalyticsFaqsLinks and to generate a new ID
				ID = Sequence.generateID();
				insertEntity();
			} else if (theFaqListsAnalyticsFaqsLinksIterator == null && theFaqLists != null && theFaqs == null) {
				// an ID was provided as an attribute - we need to load a FaqListsAnalyticsFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select faq_list_id,faq_id,faq_order from strapi.faq_lists_analytics_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (faqListId == 0)
						faqListId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else if (theFaqListsAnalyticsFaqsLinksIterator == null && theFaqLists == null && theFaqs != null) {
				// an ID was provided as an attribute - we need to load a FaqListsAnalyticsFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select faq_list_id,faq_id,faq_order from strapi.faq_lists_analytics_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (faqListId == 0)
						faqListId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
					found = true;
				}
				rs.close();
				stmt.close();

				if (!found) {
					insertEntity();
				}
			} else {
				// an iterator or ID was provided as an attribute - we need to load a FaqListsAnalyticsFaqsLinks from the database
				boolean found = false;
				PreparedStatement stmt = getConnection().prepareStatement("select faq_list_id,faq_id,faq_order from strapi.faq_lists_analytics_faqs_links where id = ?");
				stmt.setInt(1,ID);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					if (faqListId == 0)
						faqListId = rs.getInt(1);
					if (faqId == 0)
						faqId = rs.getInt(2);
					if (faqOrder == 0.0)
						faqOrder = rs.getDouble(3);
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
			FaqListsAnalyticsFaqsLinks currentFaqListsAnalyticsFaqsLinks = (FaqListsAnalyticsFaqsLinks) pageContext.getAttribute("tag_faqListsAnalyticsFaqsLinks");
			if(currentFaqListsAnalyticsFaqsLinks != null){
				cachedFaqListsAnalyticsFaqsLinks = currentFaqListsAnalyticsFaqsLinks;
			}
			currentFaqListsAnalyticsFaqsLinks = this;
			pageContext.setAttribute((var == null ? "tag_faqListsAnalyticsFaqsLinks" : var), currentFaqListsAnalyticsFaqsLinks);
		}

		return EVAL_PAGE;
	}

	public int doEndTag() throws JspException {
		currentInstance = null;

		if(pageContext != null){
			if(this.cachedFaqListsAnalyticsFaqsLinks != null){
				pageContext.setAttribute((var == null ? "tag_faqListsAnalyticsFaqsLinks" : var), this.cachedFaqListsAnalyticsFaqsLinks);
			}else{
				pageContext.removeAttribute((var == null ? "tag_faqListsAnalyticsFaqsLinks" : var));
				this.cachedFaqListsAnalyticsFaqsLinks = null;
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
				PreparedStatement stmt = getConnection().prepareStatement("update strapi.faq_lists_analytics_faqs_links set faq_list_id = ?, faq_id = ?, faq_order = ? where id = ? ");
				if ( faqListId == 0 ) {
					stmt.setNull( 1, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 1, faqListId );
				}
				if ( faqId == 0 ) {
					stmt.setNull( 2, java.sql.Types.INTEGER );
				} else {
					stmt.setInt( 2, faqId );
				}
				stmt.setDouble( 3, faqOrder );
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
		PreparedStatement stmt = getConnection().prepareStatement("insert into strapi.faq_lists_analytics_faqs_links(faq_list_id,faq_id,faq_order) values (?,?,?)", java.sql.Statement.RETURN_GENERATED_KEYS);
		if (faqListId == 0) {
			stmt.setNull(1, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(1,faqListId);
		}
		if (faqId == 0) {
			stmt.setNull(2, java.sql.Types.INTEGER);
		} else {
			stmt.setInt(2,faqId);
		}
		stmt.setDouble(3,faqOrder);
		stmt.executeUpdate();

		// snag the new auto-increment value
		ResultSet irs = stmt.getGeneratedKeys();
		while (irs.next()) {
			ID = irs.getInt(1);
		}

		irs.close();
		stmt.close();

		log.debug("generating new FaqListsAnalyticsFaqsLinks " + ID);

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

	public int getFaqListId () {
		return faqListId;
	}

	public void setFaqListId (int faqListId) {
		this.faqListId = faqListId;
		commitNeeded = true;
	}

	public int getActualFaqListId () {
		return faqListId;
	}

	public int getFaqId () {
		return faqId;
	}

	public void setFaqId (int faqId) {
		this.faqId = faqId;
		commitNeeded = true;
	}

	public int getActualFaqId () {
		return faqId;
	}

	public double getFaqOrder () {
		return faqOrder;
	}

	public void setFaqOrder (double faqOrder) {
		this.faqOrder = faqOrder;
		commitNeeded = true;
	}

	public double getActualFaqOrder () {
		return faqOrder;
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

	public static Integer faqListIdValue() throws JspException {
		try {
			return currentInstance.getFaqListId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqListIdValue()");
		}
	}

	public static Integer faqIdValue() throws JspException {
		try {
			return currentInstance.getFaqId();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqIdValue()");
		}
	}

	public static Double faqOrderValue() throws JspException {
		try {
			return currentInstance.getFaqOrder();
		} catch (Exception e) {
			 throw new JspTagException("Error in tag function faqOrderValue()");
		}
	}

	private void clearServiceState () {
		ID = 0;
		faqListId = 0;
		faqId = 0;
		faqOrder = 0.0;
		newRecord = false;
		commitNeeded = false;
		parentEntities = new Vector<STRAPITagLibTagSupport>();
		this.var = null;

	}

}
