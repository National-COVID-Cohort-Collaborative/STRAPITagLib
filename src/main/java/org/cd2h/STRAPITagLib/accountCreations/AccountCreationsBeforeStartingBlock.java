package org.cd2h.STRAPITagLib.accountCreations;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class AccountCreationsBeforeStartingBlock extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(AccountCreationsBeforeStartingBlock.class);

	public int doStartTag() throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			if (!theAccountCreations.commitNeeded) {
				pageContext.getOut().print(theAccountCreations.getBeforeStartingBlock());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getBeforeStartingBlock() throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			return theAccountCreations.getBeforeStartingBlock();
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
			}
		}
	}

	public void setBeforeStartingBlock(String beforeStartingBlock) throws JspException {
		try {
			AccountCreations theAccountCreations = (AccountCreations)findAncestorWithClass(this, AccountCreations.class);
			theAccountCreations.setBeforeStartingBlock(beforeStartingBlock);
		} catch (Exception e) {
			log.error("Can't find enclosing AccountCreations for beforeStartingBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing AccountCreations for beforeStartingBlock tag ");
			}
		}
	}

}
