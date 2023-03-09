package org.cd2h.STRAPITagLib.newslettersNewsletterIssuesLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.newsletterIssues.NewsletterIssues;
import org.cd2h.STRAPITagLib.newsletters.Newsletters;

@SuppressWarnings("serial")
public class NewslettersNewsletterIssuesLinksDeleter extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int newsletterId = 0;
    int newsletterIssueId = 0;
    double newsletterIssueOrder = 0.0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(NewslettersNewsletterIssuesLinksDeleter.class);


    ResultSet rs = null;
    String var = null;
    int rsCount = 0;

    public int doStartTag() throws JspException {
		NewsletterIssues theNewsletterIssues = (NewsletterIssues)findAncestorWithClass(this, NewsletterIssues.class);
		if (theNewsletterIssues!= null)
			parentEntities.addElement(theNewsletterIssues);
		Newsletters theNewsletters = (Newsletters)findAncestorWithClass(this, Newsletters.class);
		if (theNewsletters!= null)
			parentEntities.addElement(theNewsletters);

		if (theNewsletterIssues == null) {
		} else {
			newsletterIssueId = theNewsletterIssues.getID();
		}
		if (theNewsletters == null) {
		} else {
			newsletterId = theNewsletters.getID();
		}


        PreparedStatement stat;
        try {
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("DELETE from strapi.newsletters_newsletter_issues_links where 1=1"
                                                        + (ID == 0 ? "" : " and id = ? ")
                                                        + (newsletterIssueId == 0 ? "" : " and newsletter_issue_id = ? ")
                                                        + (newsletterId == 0 ? "" : " and newsletter_id = ? "));
            if (ID != 0) stat.setInt(webapp_keySeq++, ID);
			if (newsletterIssueId != 0) stat.setInt(webapp_keySeq++, newsletterIssueId);
			if (newsletterId != 0) stat.setInt(webapp_keySeq++, newsletterId);
            stat.execute();

			webapp_keySeq = 1;
        } catch (SQLException e) {
            log.error("JDBC error generating NewslettersNewsletterIssuesLinks deleter", e);

			clearServiceState();
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating NewslettersNewsletterIssuesLinks deleter");
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating NewslettersNewsletterIssuesLinks deleter",e);
			}

        } finally {
            freeConnection();
        }

        return SKIP_BODY;
    }

	public int doEndTag() throws JspException {

		clearServiceState();
		Boolean error = (Boolean) pageContext.getAttribute("tagError");
		if(error != null && error){

			freeConnection();

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
		return super.doEndTag();
	}

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
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
}
