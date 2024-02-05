package org.cd2h.STRAPITagLib.dummies;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DummiesID extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DummiesID.class);

	public int doStartTag() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			if (!theDummies.commitNeeded) {
				pageContext.getOut().print(theDummies.getID());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for ID tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for ID tag ");
			}

		}
		return SKIP_BODY;
	}

	public int getID() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			return theDummies.getID();
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for ID tag ");
				parent.doEndTag();
				return 0;
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for ID tag ");
			}
		}
	}

	public void setID(int ID) throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			theDummies.setID(ID);
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for ID tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for ID tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for ID tag ");
			}
		}
	}

}
