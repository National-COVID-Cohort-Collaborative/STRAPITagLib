package org.cd2h.STRAPITagLib.files;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class FilesWidth extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(FilesWidth.class);

	public int doStartTag() throws JspException {
		try {
			Files theFiles = (Files)findAncestorWithClass(this, Files.class);
			if (!theFiles.commitNeeded) {
				pageContext.getOut().print(theFiles.getWidth());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Files for width tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Files for width tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Files for width tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getWidth() throws JspException {
		try {
			Files theFiles = (Files)findAncestorWithClass(this, Files.class);
			return theFiles.getWidth();
		} catch (Exception e) {
			log.error("Can't find enclosing Files for width tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Files for width tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing Files for width tag ");
			}
		}
	}

	public void setWidth(int width) throws JspException {
		try {
			Files theFiles = (Files)findAncestorWithClass(this, Files.class);
			theFiles.setWidth(width);
		} catch (Exception e) {
			log.error("Can't find enclosing Files for width tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Files for width tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Files for width tag ");
			}
		}
	}

}
