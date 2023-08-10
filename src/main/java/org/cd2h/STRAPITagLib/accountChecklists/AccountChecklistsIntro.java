package org.cd2h.STRAPITagLib.accountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class AccountChecklistsIntro extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(AccountChecklistsIntro.class);

	public int doStartTag() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			if (!theAccountChecklists.commitNeeded) {
				pageContext.getOut().print(theAccountChecklists.getIntro());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for intro tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for intro tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getIntro() throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			return theAccountChecklists.getIntro();
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for intro tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for intro tag ");
			}
		}
	}

	public void setIntro(String intro) throws JspException {
		try {
			AccountChecklists theAccountChecklists = (AccountChecklists)findAncestorWithClass(this, AccountChecklists.class);
			theAccountChecklists.setIntro(intro);
		} catch (Exception e) {
			log.error("Can't find enclosing AccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountChecklists for intro tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountChecklists for intro tag ");
			}
		}
	}

}
