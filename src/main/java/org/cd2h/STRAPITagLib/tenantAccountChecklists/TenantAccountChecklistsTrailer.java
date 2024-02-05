package org.cd2h.STRAPITagLib.tenantAccountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantAccountChecklistsTrailer extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantAccountChecklistsTrailer.class);

	public int doStartTag() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			if (!theTenantAccountChecklists.commitNeeded) {
				pageContext.getOut().print(theTenantAccountChecklists.getTrailer());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for trailer tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getTrailer() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			return theTenantAccountChecklists.getTrailer();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for trailer tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
			}
		}
	}

	public void setTrailer(String trailer) throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			theTenantAccountChecklists.setTrailer(trailer);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for trailer tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for trailer tag ");
			}
		}
	}

}
