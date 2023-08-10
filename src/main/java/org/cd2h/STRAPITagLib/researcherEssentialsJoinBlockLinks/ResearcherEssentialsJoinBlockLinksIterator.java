package org.cd2h.STRAPITagLib.researcherEssentialsJoinBlockLinks;


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
import org.cd2h.STRAPITagLib.contentImageBlockLefts.ContentImageBlockLefts;
import org.cd2h.STRAPITagLib.researcherEssentials.ResearcherEssentials;

@SuppressWarnings("serial")
public class ResearcherEssentialsJoinBlockLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int researcherEssentialId = 0;
    int contentImageBlockLeftId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(ResearcherEssentialsJoinBlockLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useContentImageBlockLefts = false;
   boolean useResearcherEssentials = false;

	public static String researcherEssentialsJoinBlockLinksCountByContentImageBlockLefts(String ID) throws JspTagException {
		int count = 0;
		ResearcherEssentialsJoinBlockLinksIterator theIterator = new ResearcherEssentialsJoinBlockLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.researcher_essentials_join_block_links where 1=1"
						+ " and content_image_block_left_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ResearcherEssentialsJoinBlockLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean contentImageBlockLeftsHasResearcherEssentialsJoinBlockLinks(String ID) throws JspTagException {
		return ! researcherEssentialsJoinBlockLinksCountByContentImageBlockLefts(ID).equals("0");
	}

	public static String researcherEssentialsJoinBlockLinksCountByResearcherEssentials(String ID) throws JspTagException {
		int count = 0;
		ResearcherEssentialsJoinBlockLinksIterator theIterator = new ResearcherEssentialsJoinBlockLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.researcher_essentials_join_block_links where 1=1"
						+ " and researcher_essential_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ResearcherEssentialsJoinBlockLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean researcherEssentialsHasResearcherEssentialsJoinBlockLinks(String ID) throws JspTagException {
		return ! researcherEssentialsJoinBlockLinksCountByResearcherEssentials(ID).equals("0");
	}

	public static Boolean researcherEssentialsJoinBlockLinksExists (String ID) throws JspTagException {
		int count = 0;
		ResearcherEssentialsJoinBlockLinksIterator theIterator = new ResearcherEssentialsJoinBlockLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.researcher_essentials_join_block_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ResearcherEssentialsJoinBlockLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean contentImageBlockLeftsResearcherEssentialsExists (String ID) throws JspTagException {
		int count = 0;
		ResearcherEssentialsJoinBlockLinksIterator theIterator = new ResearcherEssentialsJoinBlockLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.researcher_essentials_join_block_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating ResearcherEssentialsJoinBlockLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		ContentImageBlockLefts theContentImageBlockLefts = (ContentImageBlockLefts)findAncestorWithClass(this, ContentImageBlockLefts.class);
		if (theContentImageBlockLefts!= null)
			parentEntities.addElement(theContentImageBlockLefts);
		ResearcherEssentials theResearcherEssentials = (ResearcherEssentials)findAncestorWithClass(this, ResearcherEssentials.class);
		if (theResearcherEssentials!= null)
			parentEntities.addElement(theResearcherEssentials);

		if (theContentImageBlockLefts == null) {
		} else {
			contentImageBlockLeftId = theContentImageBlockLefts.getID();
		}
		if (theResearcherEssentials == null) {
		} else {
			researcherEssentialId = theResearcherEssentials.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (contentImageBlockLeftId == 0 ? "" : " and content_image_block_left_id = ?")
                                                        + (researcherEssentialId == 0 ? "" : " and researcher_essential_id = ?")
                                                        + generateLimitCriteria());
            if (contentImageBlockLeftId != 0) stat.setInt(webapp_keySeq++, contentImageBlockLeftId);
            if (researcherEssentialId != 0) stat.setInt(webapp_keySeq++, researcherEssentialId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.researcher_essentials_join_block_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (contentImageBlockLeftId == 0 ? "" : " and content_image_block_left_id = ?")
                                                        + (researcherEssentialId == 0 ? "" : " and researcher_essential_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (contentImageBlockLeftId != 0) stat.setInt(webapp_keySeq++, contentImageBlockLeftId);
            if (researcherEssentialId != 0) stat.setInt(webapp_keySeq++, researcherEssentialId);
            rs = stat.executeQuery();

            if ( rs != null && rs.next() ) {
                ID = rs.getInt(1);
                if (var != null)
                    pageContext.setAttribute(var, this);
                return EVAL_BODY_INCLUDE;
            }
        } catch (SQLException e) {
            log.error("JDBC error generating ResearcherEssentialsJoinBlockLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating ResearcherEssentialsJoinBlockLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.researcher_essentials_join_block_links");
       if (useContentImageBlockLefts)
          theBuffer.append(", strapi.content_image_block_lefts");
       if (useResearcherEssentials)
          theBuffer.append(", strapi.researcher_essentials");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useContentImageBlockLefts)
          theBuffer.append(" and strapi.content_image_block_lefts.id = strapi.researcher_essentials_join_block_links.content_image_block_left_id");
       if (useResearcherEssentials)
          theBuffer.append(" and strapi.researcher_essentials.id = strapi.researcher_essentials_join_block_links.researcher_essential_id");

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
            log.error("JDBC error iterating across ResearcherEssentialsJoinBlockLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across ResearcherEssentialsJoinBlockLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across ResearcherEssentialsJoinBlockLinks",e);
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
            log.error("JDBC error ending ResearcherEssentialsJoinBlockLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending ResearcherEssentialsJoinBlockLinks iterator",e);
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


   public boolean getUseContentImageBlockLefts() {
        return useContentImageBlockLefts;
    }

    public void setUseContentImageBlockLefts(boolean useContentImageBlockLefts) {
        this.useContentImageBlockLefts = useContentImageBlockLefts;
    }

   public boolean getUseResearcherEssentials() {
        return useResearcherEssentials;
    }

    public void setUseResearcherEssentials(boolean useResearcherEssentials) {
        this.useResearcherEssentials = useResearcherEssentials;
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
