package org.cd2h.STRAPITagLib.forumsForumPresentationsLinks;


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
import org.cd2h.STRAPITagLib.forumPresentations.ForumPresentations;
import org.cd2h.STRAPITagLib.forums.Forums;

@SuppressWarnings("serial")
public class ForumsForumPresentationsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int forumId = 0;
    int forumPresentationId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(ForumsForumPresentationsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useForumPresentations = false;
   boolean useForums = false;

	public static String forumsForumPresentationsLinksCountByForumPresentations(String ID) throws JspTagException {
		int count = 0;
		ForumsForumPresentationsLinksIterator theIterator = new ForumsForumPresentationsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.forums_forum_presentations_links where 1=1"
						+ " and forum_presentation_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ForumsForumPresentationsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ForumsForumPresentationsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean forumPresentationsHasForumsForumPresentationsLinks(String ID) throws JspTagException {
		return ! forumsForumPresentationsLinksCountByForumPresentations(ID).equals("0");
	}

	public static String forumsForumPresentationsLinksCountByForums(String ID) throws JspTagException {
		int count = 0;
		ForumsForumPresentationsLinksIterator theIterator = new ForumsForumPresentationsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.forums_forum_presentations_links where 1=1"
						+ " and forum_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ForumsForumPresentationsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ForumsForumPresentationsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean forumsHasForumsForumPresentationsLinks(String ID) throws JspTagException {
		return ! forumsForumPresentationsLinksCountByForums(ID).equals("0");
	}

	public static Boolean forumsForumPresentationsLinksExists (String ID) throws JspTagException {
		int count = 0;
		ForumsForumPresentationsLinksIterator theIterator = new ForumsForumPresentationsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.forums_forum_presentations_links where 1=1"
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
			log.error("JDBC error generating ForumsForumPresentationsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ForumsForumPresentationsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean forumPresentationsForumsExists (String ID) throws JspTagException {
		int count = 0;
		ForumsForumPresentationsLinksIterator theIterator = new ForumsForumPresentationsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.forums_forum_presentations_links where 1=1"
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
			log.error("JDBC error generating ForumsForumPresentationsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ForumsForumPresentationsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		ForumPresentations theForumPresentations = (ForumPresentations)findAncestorWithClass(this, ForumPresentations.class);
		if (theForumPresentations!= null)
			parentEntities.addElement(theForumPresentations);
		Forums theForums = (Forums)findAncestorWithClass(this, Forums.class);
		if (theForums!= null)
			parentEntities.addElement(theForums);

		if (theForumPresentations == null) {
		} else {
			forumPresentationId = theForumPresentations.getID();
		}
		if (theForums == null) {
		} else {
			forumId = theForums.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (forumPresentationId == 0 ? "" : " and forum_presentation_id = ?")
                                                        + (forumId == 0 ? "" : " and forum_id = ?")
                                                        + generateLimitCriteria());
            if (forumPresentationId != 0) stat.setInt(webapp_keySeq++, forumPresentationId);
            if (forumId != 0) stat.setInt(webapp_keySeq++, forumId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.forums_forum_presentations_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (forumPresentationId == 0 ? "" : " and forum_presentation_id = ?")
                                                        + (forumId == 0 ? "" : " and forum_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (forumPresentationId != 0) stat.setInt(webapp_keySeq++, forumPresentationId);
            if (forumId != 0) stat.setInt(webapp_keySeq++, forumId);
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
            log.error("JDBC error generating ForumsForumPresentationsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating ForumsForumPresentationsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating ForumsForumPresentationsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.forums_forum_presentations_links");
       if (useForumPresentations)
          theBuffer.append(", strapi.forum_presentations");
       if (useForums)
          theBuffer.append(", strapi.forums");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useForumPresentations)
          theBuffer.append(" and strapi.forum_presentations.id = strapi.forums_forum_presentations_links.forum_presentation_id");
       if (useForums)
          theBuffer.append(" and strapi.forums.id = strapi.forums_forum_presentations_links.forum_id");

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
            log.error("JDBC error iterating across ForumsForumPresentationsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across ForumsForumPresentationsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across ForumsForumPresentationsLinks",e);
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
            log.error("JDBC error ending ForumsForumPresentationsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending ForumsForumPresentationsLinks iterator",e);
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


   public boolean getUseForumPresentations() {
        return useForumPresentations;
    }

    public void setUseForumPresentations(boolean useForumPresentations) {
        this.useForumPresentations = useForumPresentations;
    }

   public boolean getUseForums() {
        return useForums;
    }

    public void setUseForums(boolean useForums) {
        this.useForums = useForums;
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
