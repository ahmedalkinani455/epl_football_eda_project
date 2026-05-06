# Premier League Football EDA Project - MySQL
A SQL-based exploratory data analysis project covering 25 season of English Premier League match date (1993-94 to 2017-18). The project works through 17 progressively complex queries, starting from basic filtering and building up to window functions. 

## Dataset 
I gathered the csv file for this project from this github repository: https://github.com/vijinho/epl_mysql_db/tree/master/csv 

The dataset is structured as a MySQL schema containing one table per season, EPL1993 through EPL2017, each with the following columns:

`Date`: Macth date
`HomeTeam`: Home Team name
`AwayTeam`: Away Team name 
`FTHG`: Goals scored for the home team at full-time
`FTAG`: Goals scored for the away team at full-time
`FTR`: The result of the match at full-time (`H`- home win, `A`- away win, `D`- draw)

## SQL Concepts Covered
- Filtering and sorting with `WHERE`, `ORDER BY`, `DISTINCT`
- Aggregation functions with `COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING`
- Combining multi-season data with `UNION ALL`
- Conditional logic using `CASE` and `WHEN` statements
- String functions, `LEFT`, `LIKE`
- Table joins
- Subqueries
- Window functions; `RANK`, `SUM`, `OVER`, `LAG`

## Files Used
- `EPL_SQL_Challenges.pdf` -> a set of challenges designed to apply the SQL knowledge I have learned
- `EPLFootball_Project.sql` -> A SQL file with all of the queries for each challenge
