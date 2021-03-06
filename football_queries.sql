-- Each of the questions/tasks below can be answered using a `SELECT` query. When you find a solution copy it into the code block under the question before pushing your solution to GitHub.

-- 1) Find all the matches from 2017.

--SELECT * FROM matches WHERE season = 2017;

-- 2) Find all the matches featuring Barcelona.

--SELECT * FROM matches WHERE hometeam = 'Barcelona' OR awayteam = 'Barcelona';

-- 3) What are the names of the Scottish divisions included?

--SELECT * FROM divisions WHERE country = 'Scotland';

-- 4) Find the division code for the Bundesliga. Use that code to find out how many matches Freiburg have played in the Bundesliga since the data started being collected.

--SELECT code FROM divisions WHERE name = 'Bundesliga';
--SELECT * FROM matches WHERE division_code = 'D1' AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg')

-- 5) Find the unique names of the teams which include the word "City" in their name (as entered in the database)

--SELECT DISTINCT hometeam FROM matches WHERE hometeam LIKE '%City%';
--Teams always play home and away in league so no need to search awayteam

-- 6) How many different teams have played in matches recorded in a French division?

--SELECT COUNT(DISTINCT hometeam) from matches WHERE division_code = 'F1' OR division_code = 'F2';

-- 7) Have Huddersfield played Swansea in the period covered?

--SELECT * FROM matches WHERE hometeam = 'Huddersfield' AND awayteam = 'Swansea'

-- 8) How many draws were there in the Eredivisie between 2010 and 2015?

--SELECT COUNT(*) FROM matches WHERE ftr = 'D' AND division_code = 'N1' AND season BETWEEN 2010 and 2015;

-- 9) Select the matches played in the Premier League in order of total goals scored from highest to lowest. Where there is a tie the match with more home goals should come first.

--SELECT * FROM matches WHERE division_code = 'E0' ORDER BY fthg+ftag DESC, fthg DESC;

-- 10) In which division and which season were the most goals scored?

--SELECT division_code,season, SUM(ftag+fthg) FROM matches GROUP BY division_code,season ORDER BY SUM(ftag+fthg) DESC;