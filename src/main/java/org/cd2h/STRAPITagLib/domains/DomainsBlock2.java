package org.cd2h.STRAPITagLib.domains;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DomainsBlock2 extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DomainsBlock2.class);

	public int doStartTag() throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			if (!theDomains.commitNeeded) {
				pageContext.getOut().print(theDomains.getBlock2());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for block2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for block2 tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for block2 tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getBlock2() throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			return theDomains.getBlock2();
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for block2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for block2 tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for block2 tag ");
			}
		}
	}

	public void setBlock2(String block2) throws JspException {
		try {
			Domains theDomains = (Domains)findAncestorWithClass(this, Domains.class);
			theDomains.setBlock2(block2);
		} catch (Exception e) {
			log.error("Can't find enclosing Domains for block2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Domains for block2 tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Domains for block2 tag ");
			}
		}
	}

}
