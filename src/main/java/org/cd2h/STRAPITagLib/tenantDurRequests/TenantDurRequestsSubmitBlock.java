package org.cd2h.STRAPITagLib.tenantDurRequests;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class TenantDurRequestsSubmitBlock extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(TenantDurRequestsSubmitBlock.class);

	public int doStartTag() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			if (!theTenantDurRequests.commitNeeded) {
				pageContext.getOut().print(theTenantDurRequests.getSubmitBlock());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getSubmitBlock() throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			return theTenantDurRequests.getSubmitBlock();
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
			}
		}
	}

	public void setSubmitBlock(String submitBlock) throws JspException {
		try {
			TenantDurRequests theTenantDurRequests = (TenantDurRequests)findAncestorWithClass(this, TenantDurRequests.class);
			theTenantDurRequests.setSubmitBlock(submitBlock);
		} catch (Exception e) {
			log.error("Can't find enclosing TenantDurRequests for submitBlock tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing TenantDurRequests for submitBlock tag ");
			}
		}
	}

}
