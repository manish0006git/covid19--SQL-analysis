-- Death percentage per country (likelihood of dying if infected)
SELECT
    location,
    date,
    total_cases,
    total_deaths,
    ROUND((total_deaths * 100.0 / NULLIF(total_cases, 0)), 2) AS death_pct
FROM covid_deaths
WHERE continent IS NOT NULL
ORDER BY location, date;

-- Infection rate vs population
SELECT
    location,
    population,
    MAX(total_cases) AS peak_cases,
    ROUND(MAX(total_cases) * 100.0 / population, 2) AS infection_rate_pct
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY location, population
ORDER BY infection_rate_pct DESC;