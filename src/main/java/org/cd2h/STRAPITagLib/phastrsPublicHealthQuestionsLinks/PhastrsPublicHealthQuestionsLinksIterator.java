package org.cd2h.STRAPITagLib.phastrsPublicHealthQuestionsLinks;


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
import org.cd2h.STRAPITagLib.phastrs.Phastrs;
import org.cd2h.STRAPITagLib.publicHealthQuestions.PublicHealthQuestions;

@SuppressWarnings("serial")
public class PhastrsPublicHealthQuestionsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int phastrId = 0;
    int publicHealthQuestionId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(PhastrsPublicHealthQuestionsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean usePhastrs = false;
   boolean usePublicHealthQuestions = false;

	public static String phastrsPublicHealthQuestionsLinksCountByPhastrs(String ID) throws JspTagException {
		int count = 0;
		PhastrsPublicHealthQuestionsLinksIterator theIterator = new PhastrsPublicHealthQuestionsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.phastrs_public_health_questions_links where 1=1"
						+ " and phastr_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PhastrsPublicHealthQuestionsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean phastrsHasPhastrsPublicHealthQuestionsLinks(String ID) throws JspTagException {
		return ! phastrsPublicHealthQuestionsLinksCountByPhastrs(ID).equals("0");
	}

	public static String phastrsPublicHealthQuestionsLinksCountByPublicHealthQuestions(String ID) throws JspTagException {
		int count = 0;
		PhastrsPublicHealthQuestionsLinksIterator theIterator = new PhastrsPublicHealthQuestionsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.phastrs_public_health_questions_links where 1=1"
						+ " and public_health_question_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PhastrsPublicHealthQuestionsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean publicHealthQuestionsHasPhastrsPublicHealthQuestionsLinks(String ID) throws JspTagException {
		return ! phastrsPublicHealthQuestionsLinksCountByPublicHealthQuestions(ID).equals("0");
	}

	public static Boolean phastrsPublicHealthQuestionsLinksExists (String ID) throws JspTagException {
		int count = 0;
		PhastrsPublicHealthQuestionsLinksIterator theIterator = new PhastrsPublicHealthQuestionsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.phastrs_public_health_questions_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PhastrsPublicHealthQuestionsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean phastrsPublicHealthQuestionsExists (String ID) throws JspTagException {
		int count = 0;
		PhastrsPublicHealthQuestionsLinksIterator theIterator = new PhastrsPublicHealthQuestionsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.phastrs_public_health_questions_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating PhastrsPublicHealthQuestionsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Phastrs thePhastrs = (Phastrs)findAncestorWithClass(this, Phastrs.class);
		if (thePhastrs!= null)
			parentEntities.addElement(thePhastrs);
		PublicHealthQuestions thePublicHealthQuestions = (PublicHealthQuestions)findAncestorWithClass(this, PublicHealthQuestions.class);
		if (thePublicHealthQuestions!= null)
			parentEntities.addElement(thePublicHealthQuestions);

		if (thePhastrs == null) {
		} else {
			phastrId = thePhastrs.getID();
		}
		if (thePublicHealthQuestions == null) {
		} else {
			publicHealthQuestionId = thePublicHealthQuestions.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (phastrId == 0 ? "" : " and phastr_id = ?")
                                                        + (publicHealthQuestionId == 0 ? "" : " and public_health_question_id = ?")
                                                        + generateLimitCriteria());
            if (phastrId != 0) stat.setInt(webapp_keySeq++, phastrId);
            if (publicHealthQuestionId != 0) stat.setInt(webapp_keySeq++, publicHealthQuestionId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.phastrs_public_health_questions_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (phastrId == 0 ? "" : " and phastr_id = ?")
                                                        + (publicHealthQuestionId == 0 ? "" : " and public_health_question_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (phastrId != 0) stat.setInt(webapp_keySeq++, phastrId);
            if (publicHealthQuestionId != 0) stat.setInt(webapp_keySeq++, publicHealthQuestionId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating PhastrsPublicHealthQuestionsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating PhastrsPublicHealthQuestionsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.phastrs_public_health_questions_links");
       if (usePhastrs)
          theBuffer.append(", strapi.phastrs");
       if (usePublicHealthQuestions)
          theBuffer.append(", strapi.public_health_questions");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (usePhastrs)
          theBuffer.append(" and strapi.phastrs.id = strapi.phastrs_public_health_questions_links.phastr_id");
       if (usePublicHealthQuestions)
          theBuffer.append(" and strapi.public_health_questions.id = strapi.phastrs_public_health_questions_links.public_health_question_id");

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
                return EVAL_BODY_AGAIN;
            }
        } catch (SQLException e) {
            log.error("JDBC error iterating across PhastrsPublicHealthQuestionsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across PhastrsPublicHealthQuestionsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across PhastrsPublicHealthQuestionsLinks",e);
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
            log.error("JDBC error ending PhastrsPublicHealthQuestionsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending PhastrsPublicHealthQuestionsLinks iterator",e);
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


   public boolean getUsePhastrs() {
        return usePhastrs;
    }

    public void setUsePhastrs(boolean usePhastrs) {
        this.usePhastrs = usePhastrs;
    }

   public boolean getUsePublicHealthQuestions() {
        return usePublicHealthQuestions;
    }

    public void setUsePublicHealthQuestions(boolean usePublicHealthQuestions) {
        this.usePublicHealthQuestions = usePublicHealthQuestions;
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
