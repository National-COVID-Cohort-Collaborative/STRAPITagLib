package org.cd2h.STRAPITagLib.brochures;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class BrochuresUpdatedById extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(BrochuresUpdatedById.class);

	public int doStartTag() throws JspException {
		try {
			Brochures theBrochures = (Brochures)findAncestorWithClass(this, Brochures.class);
			if (!theBrochures.commitNeeded) {
				pageContext.getOut().print(theBrochures.getUpdatedById());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Brochures for updatedById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Brochures for updatedById tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Brochures for updatedById tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getUpdatedById() throws JspException {
		try {
			Brochures theBrochures = (Brochures)findAncestorWithClass(this, Brochures.class);
			return theBrochures.getUpdatedById();
		} catch (Exception e) {
			log.error("Can't find enclosing Brochures for updatedById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Brochures for updatedById tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing Brochures for updatedById tag ");
			}
		}
	}

	public void setUpdatedById(int updatedById) throws JspException {
		try {
			Brochures theBrochures = (Brochures)findAncestorWithClass(this, Brochures.class);
			theBrochures.setUpdatedById(updatedById);
		} catch (Exception e) {
			log.error("Can't find enclosing Brochures for updatedById tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Brochures for updatedById tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Brochures for updatedById tag ");
			}
		}
	}

}
