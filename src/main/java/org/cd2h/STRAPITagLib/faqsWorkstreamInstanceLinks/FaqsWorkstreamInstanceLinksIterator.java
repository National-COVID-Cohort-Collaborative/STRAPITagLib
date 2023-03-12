package org.cd2h.STRAPITagLib.faqsWorkstreamInstanceLinks;


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
import org.cd2h.STRAPITagLib.faqs.Faqs;
import org.cd2h.STRAPITagLib.workstreamInstances.WorkstreamInstances;

@SuppressWarnings("serial")
public class FaqsWorkstreamInstanceLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int faqId = 0;
    int workstreamInstanceId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(FaqsWorkstreamInstanceLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useFaqs = false;
   boolean useWorkstreamInstances = false;

	public static String faqsWorkstreamInstanceLinksCountByFaqs(String ID) throws JspTagException {
		int count = 0;
		FaqsWorkstreamInstanceLinksIterator theIterator = new FaqsWorkstreamInstanceLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faqs_workstream_instance_links where 1=1"
						+ " and faq_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqsWorkstreamInstanceLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean faqsHasFaqsWorkstreamInstanceLinks(String ID) throws JspTagException {
		return ! faqsWorkstreamInstanceLinksCountByFaqs(ID).equals("0");
	}

	public static String faqsWorkstreamInstanceLinksCountByWorkstreamInstances(String ID) throws JspTagException {
		int count = 0;
		FaqsWorkstreamInstanceLinksIterator theIterator = new FaqsWorkstreamInstanceLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faqs_workstream_instance_links where 1=1"
						+ " and workstream_instance_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqsWorkstreamInstanceLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean workstreamInstancesHasFaqsWorkstreamInstanceLinks(String ID) throws JspTagException {
		return ! faqsWorkstreamInstanceLinksCountByWorkstreamInstances(ID).equals("0");
	}

	public static Boolean faqsWorkstreamInstanceLinksExists (String ID) throws JspTagException {
		int count = 0;
		FaqsWorkstreamInstanceLinksIterator theIterator = new FaqsWorkstreamInstanceLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faqs_workstream_instance_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqsWorkstreamInstanceLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean faqsWorkstreamInstancesExists (String ID) throws JspTagException {
		int count = 0;
		FaqsWorkstreamInstanceLinksIterator theIterator = new FaqsWorkstreamInstanceLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.faqs_workstream_instance_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating FaqsWorkstreamInstanceLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Faqs theFaqs = (Faqs)findAncestorWithClass(this, Faqs.class);
		if (theFaqs!= null)
			parentEntities.addElement(theFaqs);
		WorkstreamInstances theWorkstreamInstances = (WorkstreamInstances)findAncestorWithClass(this, WorkstreamInstances.class);
		if (theWorkstreamInstances!= null)
			parentEntities.addElement(theWorkstreamInstances);

		if (theFaqs == null) {
		} else {
			faqId = theFaqs.getID();
		}
		if (theWorkstreamInstances == null) {
		} else {
			workstreamInstanceId = theWorkstreamInstances.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + (faqId == 0 ? "" : " and faq_id = ?")
                                                        + (workstreamInstanceId == 0 ? "" : " and workstream_instance_id = ?")
                                                        + generateLimitCriteria());
            if (faqId != 0) stat.setInt(webapp_keySeq++, faqId);
            if (workstreamInstanceId != 0) stat.setInt(webapp_keySeq++, workstreamInstanceId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.faqs_workstream_instance_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + (faqId == 0 ? "" : " and faq_id = ?")
                                                        + (workstreamInstanceId == 0 ? "" : " and workstream_instance_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (faqId != 0) stat.setInt(webapp_keySeq++, faqId);
            if (workstreamInstanceId != 0) stat.setInt(webapp_keySeq++, workstreamInstanceId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating FaqsWorkstreamInstanceLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating FaqsWorkstreamInstanceLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.faqs_workstream_instance_links");
       if (useFaqs)
          theBuffer.append(", strapi.faqs");
       if (useWorkstreamInstances)
          theBuffer.append(", strapi.workstream_instances");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useFaqs)
          theBuffer.append(" and strapi.faqs.id = strapi.faqs_workstream_instance_links.faq_id");
       if (useWorkstreamInstances)
          theBuffer.append(" and strapi.workstream_instances.id = strapi.faqs_workstream_instance_links.workstream_instance_id");

      return theBuffer.toString();
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
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across FaqsWorkstreamInstanceLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across FaqsWorkstreamInstanceLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across FaqsWorkstreamInstanceLinks",e);
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
            log.error("JDBC error ending FaqsWorkstreamInstanceLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending FaqsWorkstreamInstanceLinks iterator",e);
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


   public boolean getUseFaqs() {
        return useFaqs;
    }

    public void setUseFaqs(boolean useFaqs) {
        this.useFaqs = useFaqs;
    }

   public boolean getUseWorkstreamInstances() {
        return useWorkstreamInstances;
    }

    public void setUseWorkstreamInstances(boolean useWorkstreamInstances) {
        this.useWorkstreamInstances = useWorkstreamInstances;
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
