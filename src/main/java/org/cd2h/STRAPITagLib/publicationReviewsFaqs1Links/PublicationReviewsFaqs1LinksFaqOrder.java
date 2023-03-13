package org.cd2h.STRAPITagLib.publicationReviewsFaqs1Links;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;

@SuppressWarnings("serial")
public class PublicationReviewsFaqs1LinksFaqOrder extends STRAPITagLibTagSupport {

	private static final Logger log = LogManager.getLogger(PublicationReviewsFaqs1LinksFaqOrder.class);

	public int doStartTag() throws JspException {
		try {
			PublicationReviewsFaqs1Links thePublicationReviewsFaqs1Links = (PublicationReviewsFaqs1Links)findAncestorWithClass(this, PublicationReviewsFaqs1Links.class);
			if (!thePublicationReviewsFaqs1Links.commitNeeded) {
				pageContext.getOut().print(thePublicationReviewsFaqs1Links.getFaqOrder());
			}
		} catch (Exception e) {
			log.error("Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
				return parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
			}

		}
		return SKIP_BODY;
	}

	public double getFaqOrder() throws JspException {
		try {
			PublicationReviewsFaqs1Links thePublicationReviewsFaqs1Links = (PublicationReviewsFaqs1Links)findAncestorWithClass(this, PublicationReviewsFaqs1Links.class);
			return thePublicationReviewsFaqs1Links.getFaqOrder();
		} catch (Exception e) {
			log.error("Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
				parent.doEndTag();
				return 0.0;
			}else{
				throw new JspTagException("Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
			}
		}
	}

	public void setFaqOrder(double faqOrder) throws JspException {
		try {
			PublicationReviewsFaqs1Links thePublicationReviewsFaqs1Links = (PublicationReviewsFaqs1Links)findAncestorWithClass(this, PublicationReviewsFaqs1Links.class);
			thePublicationReviewsFaqs1Links.setFaqOrder(faqOrder);
		} catch (Exception e) {
			log.error("Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ", e);
			freeConnection();
			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
				parent.doEndTag();
			}else{
				throw new JspTagException("Error: Can't find enclosing PublicationReviewsFaqs1Links for faqOrder tag ");
			}
		}
	}

}
