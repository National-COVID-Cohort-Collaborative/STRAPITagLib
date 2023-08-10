package org.cd2h.STRAPITagLib.accountCreations;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class AccountCreationsBeforeStartingHeader extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(AccountCreationsBeforeStartingHeader.class);

	public int doStartTag() throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			if (!theAccountCreations.commitNeeded) {
				pageContext.getOut().print(theAccountCreations.getBeforeStartingHeader());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getBeforeStartingHeader() throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			return theAccountCreations.getBeforeStartingHeader();
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
			}
		}
	}

	public void setBeforeStartingHeader(String beforeStartingHeader) throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			theAccountCreations.setBeforeStartingHeader(beforeStartingHeader);
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingHeader tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingHeader tag ");
			}
		}
	}

}
