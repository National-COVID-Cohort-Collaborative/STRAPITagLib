package org.cd2h.STRAPITagLib.newsItemsPressReleasesLinks;


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
import org.cd2h.STRAPITagLib.newsItems.NewsItems;
import org.cd2h.STRAPITagLib.pressReleases.PressReleases;

@SuppressWarnings("serial")
public class NewsItemsPressReleasesLinksIterator extends STRAPITagLibBodyTagSupport {
    int ID = 0;
    int newsItemId = 0;
    int pressReleaseId = 0;
	Vector<STRAPITagLibTagSupport> parentEntities = new Vector<STRAPITagLibTagSupport>();

	private static final Logger log = LogManager.getLogger(NewsItemsPressReleasesLinksIterator.class);


    PreparedStatement stat = null;
    ResultSet rs = null;
    String fromList = null;
    String joinCriteria = null;
    String filterCriteria = null;
    String sortCriteria = null;
    int limitCriteria = 0;
    String var = null;
    int rsCount = 0;

   boolean useNewsItems = false;
   boolean usePressReleases = false;

	public static String newsItemsPressReleasesLinksCountByNewsItems(String ID) throws JspTagException {
		int count = 0;
		NewsItemsPressReleasesLinksIterator theIterator = new NewsItemsPressReleasesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.news_items_press_releases_links where 1=1"
						+ " and news_item_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NewsItemsPressReleasesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NewsItemsPressReleasesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean newsItemsHasNewsItemsPressReleasesLinks(String ID) throws JspTagException {
		return ! newsItemsPressReleasesLinksCountByNewsItems(ID).equals("0");
	}

	public static String newsItemsPressReleasesLinksCountByPressReleases(String ID) throws JspTagException {
		int count = 0;
		NewsItemsPressReleasesLinksIterator theIterator = new NewsItemsPressReleasesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.news_items_press_releases_links where 1=1"
						+ " and press_release_id = ?"
						);

			stat.setInt(1,Integer.parseInt(ID));
			ResultSet crs = stat.executeQuery();

			if (crs.next()) {
				count = crs.getInt(1);
			}
			crs.close();
			stat.close();
		} catch (SQLException e) {
			log.error("JDBC error generating NewsItemsPressReleasesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NewsItemsPressReleasesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return "" + count;
	}

	public static Boolean pressReleasesHasNewsItemsPressReleasesLinks(String ID) throws JspTagException {
		return ! newsItemsPressReleasesLinksCountByPressReleases(ID).equals("0");
	}

	public static Boolean newsItemsPressReleasesLinksExists (String ID) throws JspTagException {
		int count = 0;
		NewsItemsPressReleasesLinksIterator theIterator = new NewsItemsPressReleasesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.news_items_press_releases_links where 1=1"
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
			log.error("JDBC error generating NewsItemsPressReleasesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NewsItemsPressReleasesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

	public static Boolean newsItemsPressReleasesExists (String ID) throws JspTagException {
		int count = 0;
		NewsItemsPressReleasesLinksIterator theIterator = new NewsItemsPressReleasesLinksIterator();
		try {
			PreparedStatement stat = theIterator.getConnection().prepareStatement("SELECT count(*) from strapi.news_items_press_releases_links where 1=1"
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
			log.error("JDBC error generating NewsItemsPressReleasesLinks iterator", e);
			throw new JspTagException("Error: JDBC error generating NewsItemsPressReleasesLinks iterator");
		} finally {
			theIterator.freeConnection();
		}
		return count > 0;
	}

    public int doStartTag() throws JspException {
		NewsItems theNewsItems = (NewsItems)findAncestorWithClass(this, NewsItems.class);
		if (theNewsItems!= null)
			parentEntities.addElement(theNewsItems);
		PressReleases thePressReleases = (PressReleases)findAncestorWithClass(this, PressReleases.class);
		if (thePressReleases!= null)
			parentEntities.addElement(thePressReleases);

		if (theNewsItems == null) {
		} else {
			newsItemId = theNewsItems.getID();
		}
		if (thePressReleases == null) {
		} else {
			pressReleaseId = thePressReleases.getID();
		}


      try {
            //run count query  
            int webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT count(*) from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (newsItemId == 0 ? "" : " and news_item_id = ?")
                                                        + (pressReleaseId == 0 ? "" : " and press_release_id = ?")
                                                        + generateLimitCriteria());
            if (newsItemId != 0) stat.setInt(webapp_keySeq++, newsItemId);
            if (pressReleaseId != 0) stat.setInt(webapp_keySeq++, pressReleaseId);
            rs = stat.executeQuery();

            if (rs.next()) {
                pageContext.setAttribute(var+"Total", rs.getInt(1));
            }


            //run select id query  
            webapp_keySeq = 1;
            stat = getConnection().prepareStatement("SELECT strapi.news_items_press_releases_links.id from " + generateFromClause() + " where 1=1"
                                                        + generateJoinCriteria()
                                                        + generateFilterCriteria()
                                                        + (newsItemId == 0 ? "" : " and news_item_id = ?")
                                                        + (pressReleaseId == 0 ? "" : " and press_release_id = ?")
                                                        + " order by " + generateSortCriteria()  +  generateLimitCriteria());
            if (newsItemId != 0) stat.setInt(webapp_keySeq++, newsItemId);
            if (pressReleaseId != 0) stat.setInt(webapp_keySeq++, pressReleaseId);
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
            log.error("JDBC error generating NewsItemsPressReleasesLinks iterator: " + stat, e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "Error: JDBC error generating NewsItemsPressReleasesLinks iterator: " + stat);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error generating NewsItemsPressReleasesLinks iterator: " + stat,e);
			}

        }

        return SKIP_BODY;
    }

    private String generateFromClause() {
       StringBuffer theBuffer = new StringBuffer("strapi.news_items_press_releases_links");
       if (useNewsItems)
          theBuffer.append(", strapi.news_items");
       if (usePressReleases)
          theBuffer.append(", strapi.press_releases");

      return theBuffer.toString();
    }

    private String generateJoinCriteria() {
       StringBuffer theBuffer = new StringBuffer();
       if (useNewsItems)
          theBuffer.append(" and strapi.news_items.id = strapi.news_items_press_releases_links.news_item_id");
       if (usePressReleases)
          theBuffer.append(" and strapi.press_releases.id = strapi.news_items_press_releases_links.press_release_id");

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
            log.error("JDBC error iterating across NewsItemsPressReleasesLinks", e);

			freeConnection();
			clearServiceState();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error iterating across NewsItemsPressReleasesLinks" + stat.toString());
				return parent.doEndTag();
			}else{
				throw new JspException("JDBC error iterating across NewsItemsPressReleasesLinks",e);
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
            log.error("JDBC error ending NewsItemsPressReleasesLinks iterator",e);
			freeConnection();

			Tag parent = getParent();
			if(parent != null){
				pageContext.setAttribute("tagError", true);
				pageContext.setAttribute("tagErrorException", e);
				pageContext.setAttribute("tagErrorMessage", "JDBC error retrieving ID " + ID);
				return parent.doEndTag();
			}else{
				throw new JspException("Error: JDBC error ending NewsItemsPressReleasesLinks iterator",e);
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


   public boolean getUseNewsItems() {
        return useNewsItems;
    }

    public void setUseNewsItems(boolean useNewsItems) {
        this.useNewsItems = useNewsItems;
    }

   public boolean getUsePressReleases() {
        return usePressReleases;
    }

    public void setUsePressReleases(boolean usePressReleases) {
        this.usePressReleases = usePressReleases;
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
