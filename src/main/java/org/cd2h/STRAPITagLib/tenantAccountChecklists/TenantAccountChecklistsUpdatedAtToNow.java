package org.cd2h.STRAPITagLib.tenantAccountChecklists;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import java.sql.Timestamp;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantAccountChecklistsUpdatedAtToNow extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantAccountChecklistsUpdatedAtToNow.class);


	public int doStartTag() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			theTenantAccountChecklists.setUpdatedAtToNow( );
		} catch (Exception e) {
			log.error(" Can't find enclosing TenantAccountChecklists for updatedAt tag ", e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantAccountChecklists for updatedAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for updatedAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getUpdatedAt() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			return theTenantAccountChecklists.getUpdatedAt();
		} catch (Exception e) {

			log.error("Can't find enclosing TenantAccountChecklists for updatedAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantAccountChecklists for updatedAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for updatedAt tag ");
			}

		}
	}

	public void setUpdatedAt() throws JspException {
		try {
			TenantAccountChecklists theTenantAccountChecklists = (TenantAccountChecklists)findAncestorWithClass(this, TenantAccountChecklists.class);
			theTenantAccountChecklists.setUpdatedAtToNow( );
		} catch (Exception e) {

			log.error("Can't find enclosing TenantAccountChecklists for updatedAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantAccountChecklists for updatedAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantAccountChecklists for updatedAt tag ");
			}

		}
	}
}