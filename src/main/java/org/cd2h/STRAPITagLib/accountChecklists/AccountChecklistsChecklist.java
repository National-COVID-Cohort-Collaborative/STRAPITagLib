package org.cd2h.STRAPITagLib.accountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class AccountChecklistsChecklist extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(AccountChecklistsChecklist.class);

	public int doStartTag() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			if (!theAccountChecklists.commitNeeded) {
				pageContext.getOut().print(theAccountChecklists.getChecklist());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for checklist tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for checklist tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for checklist tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getChecklist() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			return theAccountChecklists.getChecklist();
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for checklist tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for checklist tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for checklist tag ");
			}
		}
	}

	public void setChecklist(String checklist) throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			theAccountChecklists.setChecklist(checklist);
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for checklist tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for checklist tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for checklist tag ");
			}
		}
	}

}
