package org.cd2h.STRAPITagLib.dummies;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import java.sql.Timestamp;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class DummiesUpdatedAt extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(DummiesUpdatedAt.class);

	public int doStartTag() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			if (!theDummies.commitNeeded) {
				pageContext.getOut().print(theDummies.getUpdatedAt());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for updatedAt tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for updatedAt tag ");
			}

		}
		return SKIP_BODY;
	}

	public Timestamp getUpdatedAt() throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			return theDummies.getUpdatedAt();
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for updatedAt tag ");
				parent.doEndTag();
				return null;
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for updatedAt tag ");
			}
		}
	}

	public void setUpdatedAt(Timestamp updatedAt) throws JspException {
		try {
			Dummies theDummies = (Dummies)findAncestorWithClass(this, Dummies.class);
			theDummies.setUpdatedAt(updatedAt);
		} catch (Exception e) {
			log.error("Can't find enclosing Dummies for updatedAt tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing Dummies for updatedAt tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing Dummies for updatedAt tag ");
			}
		}
	}

}
