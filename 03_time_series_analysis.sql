-- 7-day rolling average of new cases globally
SELECT
    date,
    SUM(new_cases) AS daily_cases,
    ROUND(AVG(SUM(new_cases)) OVER (
        ORDER BY date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 0) AS rolling_7day_avg
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY date
ORDER BY date;

-- Month-wise case summary
SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,   -- MySQL
    -- TO_CHAR(date, 'YYYY-MM') AS month   -- PostgreSQL
    SUM(new_cases) AS monthly_cases,
    SUM(new_deaths) AS monthly_deaths
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY DATE_FORMAT(date, '%Y-%m')
ORDER BY month;