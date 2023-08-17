package org.cd2h.STRAPITagLib.landingPagesTestimonialsLinks;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class LandingPagesTestimonialsLinksTestimonialOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(LandingPagesTestimonialsLinksTestimonialOrder.class);

	public int doStartTag() throws JspException {
		try {
			LandingPagesTestimonialsLinks theLandingPagesTestimonialsLinks = (LandingPagesTestimonialsLinks)findAncestorWithClass(this, LandingPagesTestimonialsLinks.class);
			if (!theLandingPagesTestimonialsLinks.commitNeeded) {
				pageContext.getOut().print(theLandingPagesTestimonialsLinks.getTestimonialOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getTestimonialOrder() throws JspException {
		try {
			LandingPagesTestimonialsLinks theLandingPagesTestimonialsLinks = (LandingPagesTestimonialsLinks)findAncestorWithClass(this, LandingPagesTestimonialsLinks.class);
			return theLandingPagesTestimonialsLinks.getTestimonialOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
			}
		}
	}

	public void setTestimonialOrder(double testimonialOrder) throws JspException {
		try {
			LandingPagesTestimonialsLinks theLandingPagesTestimonialsLinks = (LandingPagesTestimonialsLinks)findAncestorWithClass(this, LandingPagesTestimonialsLinks.class);
			theLandingPagesTestimonialsLinks.setTestimonialOrder(testimonialOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing LandingPagesTestimonialsLinks for testimonialOrder tag ");
			}
		}
	}

}
