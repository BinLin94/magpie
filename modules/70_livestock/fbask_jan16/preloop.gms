*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

f70_slaughter_feed_share(t_all,i,kap,attributes,feed_scen70)$(m_year(t_all)<=2015) = f70_slaughter_feed_share(t_all,i,kap,attributes,"ssp2");
f70_livestock_productivity(t_all,i,sys,feed_scen70)$(m_year(t_all)<=2015) = f70_livestock_productivity(t_all,i,sys,"ssp2");
f70_feed_baskets(t_all,i,kap,kall,feed_scen70)$(m_year(t_all)<=2015) = f70_feed_baskets(t_all,i,kap,kall,"ssp2");

im_slaughter_feed_share(t_all,i,kap,attributes) =
             f70_slaughter_feed_share(t_all,i,kap,attributes,"%c70_feed_scen%");

i70_livestock_productivity(t_all,i,sys) =
             f70_livestock_productivity(t_all,i,sys,"%c70_feed_scen%");

im_feed_baskets(t_all,i,kap,kall) =
             f70_feed_baskets(t_all,i,kap,kall,"%c70_feed_scen%");
