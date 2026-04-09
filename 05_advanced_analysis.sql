-- Continents ranked by death count using window function
SELECT DISTINCT
    continent,
    SUM(new_deaths) OVER (PARTITION BY continent) AS total_deaths,
    RANK() OVER (ORDER BY SUM(new_deaths) OVER (PARTITION BY continent) DESC) AS death_rank
FROM covid_deaths
WHERE continent IS NOT NULL;

-- Create a VIEW for reuse
CREATE VIEW GlobalVaccinationSummary AS
SELECT
    d.location,
    d.date,
    d.population,
    v.new_vaccinations,
    SUM(v.new_vaccinations) OVER (
        PARTITION BY d.location ORDER BY d.date
    ) AS cumulative_vaccinations
FROM covid_deaths d
JOIN covid_vaccinations v
    ON d.location = v.location AND d.date = v.date
WHERE d.continent IS NOT NULL;

-- Use the view
SELECT *, ROUND(cumulative_vaccinations * 100.0 / population, 2) AS vax_rate
FROM GlobalVaccinationSummary
WHERE location = 'India';