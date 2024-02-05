package org.cd2h.STRAPITagLib.dummies;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DummiesA extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DummiesA.class);

	public int doStartTag() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			if (!theDummies.commitNeeded) {
				pageContext.getOut().print(theDummies.getA());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for a tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for a tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for a tag ");
			}

		}
		return SKIP_BODY;
	}

	public String getA() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			return theDummies.getA();
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for a tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for a tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for a tag ");
			}
		}
	}

	public void setA(String a) throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			theDummies.setA(a);
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for a tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for a tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for a tag ");
			}
		}
	}

}
