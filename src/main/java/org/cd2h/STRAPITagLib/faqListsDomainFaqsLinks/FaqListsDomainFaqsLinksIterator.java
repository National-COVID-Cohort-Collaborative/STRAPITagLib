package org.cd2h.STRAPITagLib.faqListsDomainFaqsLinks;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;

import org.cd2h.STRAPITagLib.STRAPITagLibTagSupport;
import org.cd2h.STRAPITagLib.STRAPITagLibBodyTagSupport;
import org.cd2h.STRAPITagLib.faqLists.FaqLists;
import org.cd2h.STRAPITagLib.faqs.Faqs;

@SuppressWarnings("serial")
public class FaqListsDomainFaqsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int faqListId = 0;
    int faqId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(FaqListsDomainFaqsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useFaqLists = false;
   boolean useFaqs = false;

	public static String faqListsDomainFaqsLinksCountByFaqLists(String ID) throws JspTagException {
		int count = 0;
		FaqListsDomainFaqsLinksIterator theIterator = new FaqListsDomainFaqsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faq_lists_domain_faqs_links where 1=1"
						+ " and faq_list_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqListsDomainFaqsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqListsDomainFaqsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean faqListsHasFaqListsDomainFaqsLinks(String ID) throws JspTagException {
		return ! faqListsDomainFaqsLinksCountByFaqLists(ID).equals("0");
	}

	public static String faqListsDomainFaqsLinksCountByFaqs(String ID) throws JspTagException {
		int count = 0;
		FaqListsDomainFaqsLinksIterator theIterator = new FaqListsDomainFaqsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faq_lists_domain_faqs_links where 1=1"
						+ " and faq_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqListsDomainFaqsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqListsDomainFaqsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean faqsHasFaqListsDomainFaqsLinks(String ID) throws JspTagException {
		return ! faqListsDomainFaqsLinksCountByFaqs(ID).equals("0");
	}

	public static Boolean faqListsDomainFaqsLinksExists (String ID) throws JspTagException {
		int count = 0;
		FaqListsDomainFaqsLinksIterator theIterator = new FaqListsDomainFaqsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faq_lists_domain_faqs_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqListsDomainFaqsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqListsDomainFaqsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean faqListsFaqsExists (String ID) throws JspTagException {
		int count = 0;
		FaqListsDomainFaqsLinksIterator theIterator = new FaqListsDomainFaqsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faq_lists_domain_faqs_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqListsDomainFaqsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqListsDomainFaqsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		FaqLists theFaqLists = (FaqLists)findAncestorWithClass(this, FaqLists.class);
		if (theFaqLists!= null)
			parentEntities.addElement(theFaqLists);
		Faqs theFaqs = (Faqs)findAncestorWithClass(this, Faqs.class);
		if (theFaqs!= null)
			parentEntities.addElement(theFaqs);

		if (theFaqLists == null) {
		} else {
			faqListId = theFaqLists.getID();
		}
		if (theFaqs == null) {
		} else {
			faqId = theFaqs.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (faqListId == 0 ? "" : " and faq_list_id = ?")
                                                        + (faqId == 0 ? "" : " and faq_id = ?")
                                                        + generateLimitCriteria());
            if (faqListId != 0) stat.setInt(webapp_keySeq++, faqListId);
            if (faqId != 0) stat.setInt(webapp_keySeq++, faqId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.faq_lists_domain_faqs_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (faqListId == 0 ? "" : " and faq_list_id = ?")
                                                        + (faqId == 0 ? "" : " and faq_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (faqListId != 0) stat.setInt(webapp_keySeq++, faqListId);
            if (faqId != 0) stat.setInt(webapp_keySeq++, faqId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null) {
                    pageContext.setAttribute(var, this);
                    pageContext.setAttribute(var+"Count", ++rsCount);
                }
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating FaqListsDomainFaqsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating FaqListsDomainFaqsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating FaqListsDomainFaqsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.faq_lists_domain_faqs_links");
       if (useFaqLists)
          theBuffer.append(", strapi.faq_lists");
       if (useFaqs)
          theBuffer.append(", strapi.faqs");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useFaqLists)
          theBuffer.append(" and strapi.faq_lists.id = strapi.faq_lists_domain_faqs_links.faq_list_id");
       if (useFaqs)
          theBuffer.append(" and strapi.faqs.id = strapi.faq_lists_domain_faqs_links.faq_id");

      return theBuffer.toString();
    }

    private String generateFilterCriteria() {
        if (filterCriteria != null) {
            return " and " + filterCriteria;
        } else {
            return "";
        }
    }

    private String generateSortCriteria() {
        if (sortCriteria != null) {
            return sortCriteria;
        } else {
            return "id";
        }
    }

    private String generateLimitCriteria() {
        if (limitCriteria > 0) {
            return " limit " + limitCriteria;
        } else {
            return "";
        }
    }

    public int doAfterBody() throws JspException {
        try {
            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                pageContext.setAttribute(var+"Count", ++rsCount);
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across FaqListsDomainFaqsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across FaqListsDomainFaqsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across FaqListsDomainFaqsLinks",e);
			}

        }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspTagException, JspException {
        try {
			if( var != null )
				pageContext.removeAttribute(var);
			if( pageContext != null ){
				Boolean error = (Boolean) pageContext.getAttribute("tagError");
				if( error != null && error ){

					freeConnection();
					clearServiceState();

					Exception e = null; // (Exception) pageContext.getAttribute("tagErrorException");
					String message = null; // (String) pageContext.getAttribute("tagErrorMessage");

					if(pageContext != null){
						e = (Exception) pageContext.getAttribute("tagErrorException");
						message = (String) pageContext.getAttribute("tagErrorMessage");

					}
					Tag parent = getParent();
					if(parent != null){
						return parent.doEndTag();
					}else if(e != null && message != null){
						throw new JspException(message,e);
					}else if(parent == null && pageContext != null){
						pageContext.removeAttribute("tagError");
						pageContext.removeAttribute("tagErrorException");
						pageContext.removeAttribute("tagErrorMessage");
					}
				}
			}

            if( rs != null ){
                rs.close();
            }

            if( stat != null ){
                stat.close();
            }

        } catch ( SQLException e ) {
            log.error("JDBC error ending FaqListsDomainFaqsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending FaqListsDomainFaqsLinks iterator",e);
			}

        } finally {
            clearServiceState();
            freeConnection();
        }
        return super.doEndTag();
    }

    private void clearServiceState() {
        ID = 0;
        parentEntities = new Vector<STRAPITagLibTagSupport>();

        this.rs = null;
        this.stat = null;
        this.sortCriteria = null;
        this.var = null;
        this.rsCount = 0;
    }

    public String getFromList() {
        return fromList;
    }

    public void setFromList(String fromList) {
        this.fromList = fromList;
    }

    public String getJoinCriteria() {
        return joinCriteria;
    }

    public void setJoinCriteria(String joinCriteria) {
        this.joinCriteria = joinCriteria;
    }

    public String getFilterCriteria() {
        return filterCriteria;
    }

    public void setFilterCriteria(String filterCriteria) {
        this.filterCriteria = filterCriteria;
    }

    public String getSortCriteria() {
        return sortCriteria;
    }

    public void setSortCriteria(String sortCriteria) {
        this.sortCriteria = sortCriteria;
    }

    public int getLimitCriteria() {
        return limitCriteria;
    }

    public void setLimitCriteria(int limitCriteria) {
        this.limitCriteria = limitCriteria;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }

    public Boolean isFirst() throws SQLException {
        return rs.isFirst();
    }

    public Boolean isLast() throws SQLException {
        return rs.isLast();
    }


   public boolean getUseFaqLists() {
        return useFaqLists;
    }

    public void setUseFaqLists(boolean useFaqLists) {
        this.useFaqLists = useFaqLists;
    }

   public boolean getUseFaqs() {
        return useFaqs;
    }

    public void setUseFaqs(boolean useFaqs) {
        this.useFaqs = useFaqs;
    }



	public int getID () {
		return ID;
	}

	public void setID (int ID) {
		this.ID = ID;
	}

	public int getActualID () {
		return ID;
	}
}
