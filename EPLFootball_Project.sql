-- 1. Show all matches where the home team scored 6 or more goals (FTHG >= 6).
-- ■ Display: MatchDate, HomeTeam, AwayTeam, FTHG, FTAG.
select Date, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017
where FTHG >= 6;


-- 2. List all distinct teams that have ever played as a home team, sorted alphabetically.
select distinct HomeTeam
from epl_football.EPL2017
order by HomeTeam;


-- 3. Find all matches played in the '2003-2004' season where the result was a draw (FTR = 'D').
select Date, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
where FTR = "D";


-- 4. How many total matches were played each season? Show Season and match count, ordered by season.
select Season, count(*) as total_matches
from (select distinct "1993-1994" as Season, HomeTeam, AwayTeam
from epl_football.EPL1993
union all
select distinct "1994-1995" as Season, HomeTeam, AwayTeam
from epl_football.EPL1994
union all
select distinct "1995-1996" as Season, HomeTeam, AwayTeam
from epl_football.EPL1995
union all
select distinct "1996-1997" as Season, HomeTeam, AwayTeam
from epl_football.EPL1996
union all
select distinct "1997-1998" as Season, HomeTeam, AwayTeam
from epl_football.EPL1997
union all
select distinct "1998-1999" as Season, HomeTeam, AwayTeam
from epl_football.EPL1998
union all
select distinct "1999-2000" as Season, HomeTeam, AwayTeam
from epl_football.EPL1999
union all
select distinct "2000-2001" as Season, HomeTeam, AwayTeam
from epl_football.EPL2000
union all
select distinct "2001-2002" as Season, HomeTeam, AwayTeam
from epl_football.EPL2001
union all
select distinct "2002-2003" as Season, HomeTeam, AwayTeam
from epl_football.EPL2002
union all
select distinct "2003-2004" as Season, HomeTeam, AwayTeam
from epl_football.EPL2003
union all
select distinct "2004-2005" as Season, HomeTeam, AwayTeam
from epl_football.EPL2004
union all
select distinct "2005-2006" as Season, HomeTeam, AwayTeam
from epl_football.EPL2005
union all
select distinct "2006-2007" as Season, HomeTeam, AwayTeam
from epl_football.EPL2006
union all
select distinct "2007-2008" as Season, HomeTeam, AwayTeam
from epl_football.EPL2007
union all
select distinct "2008-2009" as Season, HomeTeam, AwayTeam
from epl_football.EPL2008
union all
select distinct "2009-2010" as Season, HomeTeam, AwayTeam
from epl_football.EPL2009
union all
select distinct "2010-2011" as Season, HomeTeam, AwayTeam
from epl_football.EPL2010
union all
select distinct "2011-2012" as Season, HomeTeam, AwayTeam
from epl_football.EPL2011
union all
select distinct "2012-2013" as Season, HomeTeam, AwayTeam
from epl_football.EPL2012
union all
select distinct "2013-2014" as Season, HomeTeam, AwayTeam
from epl_football.EPL2013
union all
select distinct "2014-2015" as Season, HomeTeam, AwayTeam
from epl_football.EPL2014
union all
select distinct "2015-2016" as Season, HomeTeam, AwayTeam
from epl_football.EPL2015
union all
select distinct "2016-2017" as Season, HomeTeam, AwayTeam
from epl_football.EPL2016
union all
select distinct "2017-2018" as Season, HomeTeam, AwayTeam
from epl_football.EPL2017) as all_seasons
group by Season
order by Season;


-- 5. Which home teams have scored more than 100 home goals across all seasons?
select HomeTeam, sum(FTHG) as total_goals_home
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
group by HomeTeam
having sum(FTHG) >= 100
order by total_goals_home desc;


-- 6. Find teams where their average away goals scored (AVG(FTAG)) is greater than 1.5 — but only include teams with at least 50 away games.
select HomeTeam, round(avg(FTAG), 2) as avg_away_goals
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
group by HomeTeam
having avg(FTAG) >= 1.5 and sum(FTAG) >= 50;


-- 7. Add a result_label column to every match that says 'Home Win', 'Away Win', or 'Draw' based on FTR.
select HomeTeam, AwayTeam, FTHG, FTAG, FTR,
case 
	when FTR = 'A' then 'Away Win'
    when FTR = 'H' then 'Home Win'
    when FTR = 'D' then 'Draw'
end as "result_label"
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2017) as all_seasons;


-- 8. Categorize each match by goal excitement based on total goals (FTHG + FTAG): 'Thriller' → 5+ goals | 'Good Game' → 3–4 goals | 'Boring' → 2 or fewer goals
select HomeTeam, AwayTeam, FTHG, FTAG,
case 
	when FTHG + FTAG >= 5 then "Thriller"
    when FTHG + FTAG between 3 and 4 then "Good Game"
    when FTHG + FTAG <= 2 then "Boring"
end as "enterainment_factor"
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons;


-- 9. The Season column looks like '2003-2004'. Use SUBSTRING() or LEFT() to extract just the starting year (e.g. '2003').
select left(Season, 4) as Starting_Season, HomeTeam, AwayTeam, FTHG, FTAG
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons;


-- 10. Find all matches where the home team name contains the word 'United'.
select Season, HomeTeam, AwayTeam, FTHG, FTAG
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
where HomeTeam like "%United";


create table Teams (
TeamName varchar(50),
City varchar(50),
Founded int
);
INSERT INTO Teams VALUES
('Arsenal', 'London', 1886),
('Chelsea', 'London', 1905),
('Manchester United', 'Manchester', 1878),
('Manchester City', 'Manchester', 1880),
('Liverpool', 'Liverpool', 1892),
('Tottenham', 'London', 1882);

-- 11. Join EPL to Teams on HomeTeam = TeamName to show all home matches for London-based clubs only.
select Season, HomeTeam, AwayTeam, FTHG, FTAG
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
right join Teams 
	on all_seasons.HomeTeam = Teams.TeamName;



-- 12. Find all matches where FTHG was greater than the average home goals across the entire dataset.
select Season, HomeTeam, AwayTeam, FTHG, FTAG
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
group by HomeTeam
having FTHG > avg(FTHG);


-- 13. Find all teams that have never won a single away game. Use a subquery with NOT IN.
with all_seasons as (
	(select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2017)
)
select distinct AwayTeam
from all_seasons
where AwayTeam not in (
	select AwayTeam
    from all_seasons
    where FTR = 'A'
);



-- 14. Create a combined list of the top 5 home scorers and top 5 away scorers (by total goals). Add a
-- column called type that says 'Home' or 'Away' to label each group.

# for Home Scorers
select HomeTeam, sum(FTHG) as home_goals, 'Home' as type
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
group by HomeTeam
order by home_goals desc
limit 5;

# for Away Scorers
select AwayTeam, sum(FTAG) as away_goals, 'Away' as type
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG
from epl_football.EPL2017) as all_seasons
group by AwayTeam
order by away_goals desc
limit 5;

-- 15. Rank all teams by total home wins per season using RANK().
-- ■ Partition by Season, order by win count descending — so you can see the best home team each year.
select Season, HomeTeam, 
count(case when FTR = 'H' then 1 end) as total_home_Wins,
rank() over( partition by Season order by count(case when FTR = 'H' then 1 end) desc) as rnk
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG, FTR
from epl_football.EPL2017) as all_seasons
group by HomeTeam;



-- 16. For Arsenal's home matches (ordered by MatchDate), show a running total of their home goals using SUM(FTHG) OVER (ORDER BY MatchDate).
select Season, HomeTeam, `Date`,
sum(FTHG) over (order by `Date` ) total_home_goals
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2017) as all_seasons
where HomeTeam = 'Arsenal';


-- 17. Use LAG() to compare each home team's goals in a match vs. their previous home match — so you can see if they scored more or fewer than last time
select *
from (
select Season, HomeTeam, AwayTeam, `Date`,
lag(FTHG) over(partition by HomeTeam order by `Date` asc) as previous_home_goals,
FTHG - lag(FTHG) over(partition by HomeTeam order by `Date` asc) as goal_diff
from (select "1993-1994" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1993
union all
select "1994-1995" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1994
union all
select "1995-1996" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1995
union all
select "1996-1997" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1996
union all
select "1997-1998" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1997
union all
select "1998-1999" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1998
union all
select "1999-2000" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL1999
union all
select "2000-2001" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2000
union all
select "2001-2002" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2001
union all
select "2002-2003" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2002
union all
select "2003-2004" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2003
union all
select "2004-2005" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2004
union all
select "2005-2006" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2005
union all
select "2006-2007" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2006
union all
select "2007-2008" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2007
union all
select "2008-2009" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2008
union all
select "2009-2010" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2009
union all
select "2010-2011" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2010
union all
select "2011-2012" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2011
union all
select "2012-2013" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2012
union all
select "2013-2014" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2013
union all
select "2014-2015" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2014
union all
select "2015-2016" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2015
union all
select "2016-2017" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2016
union all
select "2017-2018" as Season, HomeTeam, AwayTeam, FTHG, FTAG, `Date`
from epl_football.EPL2017) as all_seasons) as lagged
where previous_home_goals is not null;

