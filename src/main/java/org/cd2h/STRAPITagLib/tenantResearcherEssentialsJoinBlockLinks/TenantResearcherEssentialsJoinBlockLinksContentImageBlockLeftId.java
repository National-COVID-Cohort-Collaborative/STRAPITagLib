package org.cd2h.STRAPITagLib.tenantResearcherEssentialsJoinBlockLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantResearcherEssentialsJoinBlockLinksContentImageBlockLeftId.class);

	public int doStartTag() throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			if (!theTenantResearcherEssentialsJoinBlockLinks.commitNeeded) {
				pageContext.getOut().print(theTenantResearcherEssentialsJoinBlockLinks.getContentImageBlockLeftId());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getContentImageBlockLeftId() throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			return theTenantResearcherEssentialsJoinBlockLinks.getContentImageBlockLeftId();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}
		}
	}

	public void setContentImageBlockLeftId(int contentImageBlockLeftId) throws JspException {
		try {
			TenantResearcherEssentialsJoinBlockLinks theTenantResearcherEssentialsJoinBlockLinks = (TenantResearcherEssentialsJoinBlockLinks)findAncestorWithClass(this, TenantResearcherEssentialsJoinBlockLinks.class);
			theTenantResearcherEssentialsJoinBlockLinks.setContentImageBlockLeftId(contentImageBlockLeftId);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantResearcherEssentialsJoinBlockLinks for contentImageBlockLeftId tag ");
			}
		}
	}

}
