package org.cd2h.STRAPITagLib.tenantAccountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantAccountChecklistsIntro extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantAccountChecklistsIntro.class);

	public int doStartTag() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			if (!theTenantAccountChecklists.commitNeeded) {
				pageContext.getOut().print(theTenantAccountChecklists.getIntro());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for intro tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for intro tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getIntro() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			return theTenantAccountChecklists.getIntro();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for intro tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for intro tag ");
			}
		}
	}

	public void setIntro(String intro) throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			theTenantAccountChecklists.setIntro(intro);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantAccountChecklists for intro tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantAccountChecklists for intro tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for intro tag ");
			}
		}
	}

}
