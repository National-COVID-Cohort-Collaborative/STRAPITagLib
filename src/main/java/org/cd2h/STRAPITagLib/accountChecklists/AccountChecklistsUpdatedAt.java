package org.cd2h.STRAPITagLib.accountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import java.sql.Timestamp;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class AccountChecklistsUpdatedAt extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(AccountChecklistsUpdatedAt.class);

	public int doStartTag() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			if (!theAccountChecklists.commitNeeded) {
				pageContext.getOut().print(theAccountChecklists.getUpdatedAt());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for updatedAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for updatedAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getUpdatedAt() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			return theAccountChecklists.getUpdatedAt();
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for updatedAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for updatedAt tag ");
			}
		}
	}

	public void setUpdatedAt(Timestamp updatedAt) throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			theAccountChecklists.setUpdatedAt(updatedAt);
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for updatedAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for updatedAt tag ");
			}
		}
	}

}
