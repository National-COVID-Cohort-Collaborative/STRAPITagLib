package org.cd2h.STRAPITagLib.tenantResearcherEssentials;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import java.sql.Timestamp;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsCreatedAtToNow extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsCreatedAtToNow.class);


	public int doStartTag() throws JspException {
		try {
			TenantResearcherEssentials theTenantResearcherEssentials = (TenantResearcherEssentials)findAncestorWithClass(this, TenantResearcherEssentials.class);
			theTenantResearcherEssentials.setCreatedAtToNow( );
		} catch (Exception e) {
			log.error(" Can't find enclosing TenantResearcherEssentials for createdAt tag ", e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantResearcherEssentials for createdAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentials for createdAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getCreatedAt() throws JspException {
		try {
			TenantResearcherEssentials theTenantResearcherEssentials = (TenantResearcherEssentials)findAncestorWithClass(this, TenantResearcherEssentials.class);
			return theTenantResearcherEssentials.getCreatedAt();
		} catch (Exception e) {

			log.error("Can't find enclosing TenantResearcherEssentials for createdAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantResearcherEssentials for createdAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentials for createdAt tag ");
			}

		}
	}

	public void setCreatedAt() throws JspException {
		try {
			TenantResearcherEssentials theTenantResearcherEssentials = (TenantResearcherEssentials)findAncestorWithClass(this, TenantResearcherEssentials.class);
			theTenantResearcherEssentials.setCreatedAtToNow( );
		} catch (Exception e) {

			log.error("Can't find enclosing TenantResearcherEssentials for createdAt tag ", e);

			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Can't find enclosing TenantResearcherEssentials for createdAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentials for createdAt tag ");
			}

		}
	}
}