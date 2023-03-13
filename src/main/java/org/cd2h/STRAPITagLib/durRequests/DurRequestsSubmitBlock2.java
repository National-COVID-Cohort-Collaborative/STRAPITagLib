package org.cd2h.STRAPITagLib.durRequests;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DurRequestsSubmitBlock2 extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DurRequestsSubmitBlock2.class);

	public int doStartTag() throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			if (!theDurRequests.commitNeeded) {
				pageContext.getOut().print(theDurRequests.getSubmitBlock2());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for submitBlock2 tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for submitBlock2 tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getSubmitBlock2() throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			return theDurRequests.getSubmitBlock2();
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for submitBlock2 tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for submitBlock2 tag ");
			}
		}
	}

	public void setSubmitBlock2(String submitBlock2) throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			theDurRequests.setSubmitBlock2(submitBlock2);
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for submitBlock2 tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for submitBlock2 tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for submitBlock2 tag ");
			}
		}
	}

}
