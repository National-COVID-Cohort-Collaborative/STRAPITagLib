package org.cd2h.STRAPITagLib.domainTeamsLeadsLinks;


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
import org.cd2h.STRAPITagLib.bios.Bios;
import org.cd2h.STRAPITagLib.domainTeams.DomainTeams;

@SuppressWarnings("serial")
public class DomainTeamsLeadsLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int domainTeamId = 0;
    int bioId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(DomainTeamsLeadsLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useBios = false;
   boolean useDomainTeams = false;

	public static String domainTeamsLeadsLinksCountByBios(String ID) throws JspTagException {
		int count = 0;
		DomainTeamsLeadsLinksIterator theIterator = new DomainTeamsLeadsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.domain_teams_leads_links where 1=1"
						+ " and bio_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating DomainTeamsLeadsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating DomainTeamsLeadsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean biosHasDomainTeamsLeadsLinks(String ID) throws JspTagException {
		return ! domainTeamsLeadsLinksCountByBios(ID).equals("0");
	}

	public static String domainTeamsLeadsLinksCountByDomainTeams(String ID) throws JspTagException {
		int count = 0;
		DomainTeamsLeadsLinksIterator theIterator = new DomainTeamsLeadsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.domain_teams_leads_links where 1=1"
						+ " and domain_team_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating DomainTeamsLeadsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating DomainTeamsLeadsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean domainTeamsHasDomainTeamsLeadsLinks(String ID) throws JspTagException {
		return ! domainTeamsLeadsLinksCountByDomainTeams(ID).equals("0");
	}

	public static Boolean domainTeamsLeadsLinksExists (String ID) throws JspTagException {
		int count = 0;
		DomainTeamsLeadsLinksIterator theIterator = new DomainTeamsLeadsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.domain_teams_leads_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating DomainTeamsLeadsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating DomainTeamsLeadsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean biosDomainTeamsExists (String ID) throws JspTagException {
		int count = 0;
		DomainTeamsLeadsLinksIterator theIterator = new DomainTeamsLeadsLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.domain_teams_leads_links where 1=1"
						+ " and id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating DomainTeamsLeadsLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating DomainTeamsLeadsLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		Bios theBios = (Bios)findAncestorWithClass(this, Bios.class);
		if (theBios!= null)
			parentEntities.addElement(theBios);
		DomainTeams theDomainTeams = (DomainTeams)findAncestorWithClass(this, DomainTeams.class);
		if (theDomainTeams!= null)
			parentEntities.addElement(theDomainTeams);

		if (theBios == null) {
		} else {
			bioId = theBios.getID();
		}
		if (theDomainTeams == null) {
		} else {
			domainTeamId = theDomainTeams.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioId == 0 ? "" : " and bio_id = ?")
                                                        + (domainTeamId == 0 ? "" : " and domain_team_id = ?")
                                                        + generateLimitCriteria());
            if (bioId != 0) stat.setInt(webapp_keySeq++, bioId);
            if (domainTeamId != 0) stat.setInt(webapp_keySeq++, domainTeamId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.domain_teams_leads_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (bioId == 0 ? "" : " and bio_id = ?")
                                                        + (domainTeamId == 0 ? "" : " and domain_team_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (bioId != 0) stat.setInt(webapp_keySeq++, bioId);
            if (domainTeamId != 0) stat.setInt(webapp_keySeq++, domainTeamId);
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
            log.error("JDBC error generating DomainTeamsLeadsLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating DomainTeamsLeadsLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating DomainTeamsLeadsLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.domain_teams_leads_links");
       if (useBios)
          theBuffer.append(", strapi.bios");
       if (useDomainTeams)
          theBuffer.append(", strapi.domain_teams");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useBios)
          theBuffer.append(" and strapi.bios.id = strapi.domain_teams_leads_links.bio_id");
       if (useDomainTeams)
          theBuffer.append(" and strapi.domain_teams.id = strapi.domain_teams_leads_links.domain_team_id");

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
            log.error("JDBC error iterating across DomainTeamsLeadsLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across DomainTeamsLeadsLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across DomainTeamsLeadsLinks",e);
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
            log.error("JDBC error ending DomainTeamsLeadsLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending DomainTeamsLeadsLinks iterator",e);
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


   public boolean getUseBios() {
        return useBios;
    }

    public void setUseBios(boolean useBios) {
        this.useBios = useBios;
    }

   public boolean getUseDomainTeams() {
        return useDomainTeams;
    }

    public void setUseDomainTeams(boolean useDomainTeams) {
        this.useDomainTeams = useDomainTeams;
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
