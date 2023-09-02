package org.cd2h.STRAPITagLib.landingPagesDomainTeamsLinks;


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
import org.cd2h.STRAPITagLib.domainTeams.DomainTeams;
import org.cd2h.STRAPITagLib.landingPages.LandingPages;

@SuppressWarnings("serial")
public class LandingPagesDomainTeamsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int landingPageId = 0;
    int domainTeamId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(LandingPagesDomainTeamsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useDomainTeams = false;
   boolean useLandingPages = false;

	public static String landingPagesDomainTeamsLinksCountByDomainTeams(String ID) throws JspTagException {
		int count = 0;
		LandingPagesDomainTeamsLinksIterator theIterator = new LandingPagesDomainTeamsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.landing_pages_domain_teams_links where 1=1"
						+ " and domain_team_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LandingPagesDomainTeamsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LandingPagesDomainTeamsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean domainTeamsHasLandingPagesDomainTeamsLinks(String ID) throws JspTagException {
		return ! landingPagesDomainTeamsLinksCountByDomainTeams(ID).equals("0");
	}

	public static String landingPagesDomainTeamsLinksCountByLandingPages(String ID) throws JspTagException {
		int count = 0;
		LandingPagesDomainTeamsLinksIterator theIterator = new LandingPagesDomainTeamsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.landing_pages_domain_teams_links where 1=1"
						+ " and landing_page_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LandingPagesDomainTeamsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LandingPagesDomainTeamsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean landingPagesHasLandingPagesDomainTeamsLinks(String ID) throws JspTagException {
		return ! landingPagesDomainTeamsLinksCountByLandingPages(ID).equals("0");
	}

	public static Boolean landingPagesDomainTeamsLinksExists (String ID) throws JspTagException {
		int count = 0;
		LandingPagesDomainTeamsLinksIterator theIterator = new LandingPagesDomainTeamsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.landing_pages_domain_teams_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LandingPagesDomainTeamsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LandingPagesDomainTeamsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean domainTeamsLandingPagesExists (String ID) throws JspTagException {
		int count = 0;
		LandingPagesDomainTeamsLinksIterator theIterator = new LandingPagesDomainTeamsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.landing_pages_domain_teams_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating LandingPagesDomainTeamsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating LandingPagesDomainTeamsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		DomainTeams theDomainTeams = (DomainTeams)findAncestorWithClass(this, DomainTeams.class);
		if (theDomainTeams!= null)
			parentEntities.addElement(theDomainTeams);
		LandingPages theLandingPages = (LandingPages)findAncestorWithClass(this, LandingPages.class);
		if (theLandingPages!= null)
			parentEntities.addElement(theLandingPages);

		if (theDomainTeams == null) {
		} else {
			domainTeamId = theDomainTeams.getID();
		}
		if (theLandingPages == null) {
		} else {
			landingPageId = theLandingPages.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (domainTeamId == 0 ? "" : " and domain_team_id = ?")
                                                        + (landingPageId == 0 ? "" : " and landing_page_id = ?")
                                                        + generateLimitCriteria());
            if (domainTeamId != 0) stat.setInt(webapp_keySeq++, domainTeamId);
            if (landingPageId != 0) stat.setInt(webapp_keySeq++, landingPageId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.landing_pages_domain_teams_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (domainTeamId == 0 ? "" : " and domain_team_id = ?")
                                                        + (landingPageId == 0 ? "" : " and landing_page_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (domainTeamId != 0) stat.setInt(webapp_keySeq++, domainTeamId);
            if (landingPageId != 0) stat.setInt(webapp_keySeq++, landingPageId);
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
            log.error("JDBC error generating LandingPagesDomainTeamsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating LandingPagesDomainTeamsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating LandingPagesDomainTeamsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.landing_pages_domain_teams_links");
       if (useDomainTeams)
          theBuffer.append(", strapi.domain_teams");
       if (useLandingPages)
          theBuffer.append(", strapi.landing_pages");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useDomainTeams)
          theBuffer.append(" and strapi.domain_teams.id = strapi.landing_pages_domain_teams_links.domain_team_id");
       if (useLandingPages)
          theBuffer.append(" and strapi.landing_pages.id = strapi.landing_pages_domain_teams_links.landing_page_id");

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
            log.error("JDBC error iterating across LandingPagesDomainTeamsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across LandingPagesDomainTeamsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across LandingPagesDomainTeamsLinks",e);
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
            log.error("JDBC error ending LandingPagesDomainTeamsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending LandingPagesDomainTeamsLinks iterator",e);
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


   public boolean getUseDomainTeams() {
        return useDomainTeams;
    }

    public void setUseDomainTeams(boolean useDomainTeams) {
        this.useDomainTeams = useDomainTeams;
    }

   public boolean getUseLandingPages() {
        return useLandingPages;
    }

    public void setUseLandingPages(boolean useLandingPages) {
        this.useLandingPages = useLandingPages;
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
