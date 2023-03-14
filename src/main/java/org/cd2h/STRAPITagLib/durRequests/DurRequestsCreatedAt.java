package org.cd2h.STRAPITagLib.durRequests;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import java.sql.Timestamp;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DurRequestsCreatedAt extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DurRequestsCreatedAt.class);

	public int doStartTag() throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			if (!theDurRequests.commitNeeded) {
				pageContext.getOut().print(theDurRequests.getCreatedAt());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for createdAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for createdAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getCreatedAt() throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			return theDurRequests.getCreatedAt();
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for createdAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for createdAt tag ");
			}
		}
	}

	public void setCreatedAt(Timestamp createdAt) throws JspException {
		try {
			DurRequests theDurRequests = (DurRequests)findAncestorWithClass(this, DurRequests.class);
			theDurRequests.setCreatedAt(createdAt);
		} catch (Exception e) {
			log.error("Can't find enclosing DurRequests for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing DurRequests for createdAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing DurRequests for createdAt tag ");
			}
		}
	}

}