package org.cd2h.STRAPITagLib.tools;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import java.sql.Timestamp;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class ToolsCreatedAt extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(ToolsCreatedAt.class);

	public int doStartTag() throws JspException {
		try {
			Tools theTools = (Tools)findAncestorWithClass(this, Tools.class);
			if (!theTools.commitNeeded) {
				pageContext.getOut().print(theTools.getCreatedAt());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Tools for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Tools for createdAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Tools for createdAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getCreatedAt() throws JspException {
		try {
			Tools theTools = (Tools)findAncestorWithClass(this, Tools.class);
			return theTools.getCreatedAt();
		} catch (Exception e) {
			log.error("Can't find enclosing Tools for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Tools for createdAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Tools for createdAt tag ");
			}
		}
	}

	public void setCreatedAt(Timestamp createdAt) throws JspException {
		try {
			Tools theTools = (Tools)findAncestorWithClass(this, Tools.class);
			theTools.setCreatedAt(createdAt);
		} catch (Exception e) {
			log.error("Can't find enclosing Tools for createdAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Tools for createdAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Tools for createdAt tag ");
			}
		}
	}

}
