package org.cd2h.STRAPITagLib.domains;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DomainsCreatedById extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DomainsCreatedById.class);

	public int doStartTag() throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			if (!theDomains.commitNeeded) {
				pageContext.getOut().print(theDomains.getCreatedById());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for createdById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for createdById tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for createdById tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getCreatedById() throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			return theDomains.getCreatedById();
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for createdById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for createdById tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for createdById tag ");
			}
		}
	}

	public void setCreatedById(int createdById) throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			theDomains.setCreatedById(createdById);
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for createdById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for createdById tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for createdById tag ");
			}
		}
	}

}
