-- Total cases and deaths globally
SELECT 
    SUM(new_cases) AS total_cases,
    SUM(new_deaths) AS total_deaths,
    ROUND(SUM(new_deaths) * 100.0 / NULLIF(SUM(new_cases), 0), 2) AS death_rate_pct
FROM covid_deaths
WHERE continent IS NOT NULL;

-- Top 10 countries by total cases
SELECT 
    location,
    MAX(total_cases) AS highest_cases,
    MAX(total_deaths) AS highest_deaths
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY location
ORDER BY highest_cases DESC
LIMIT 10;