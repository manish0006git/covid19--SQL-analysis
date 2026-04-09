-- Rolling vaccination count per country using CTE
WITH VaccinationProgress AS (
    SELECT
        d.continent,
        d.location,
        d.date,
        d.population,
        v.new_vaccinations,
        SUM(v.new_vaccinations) OVER (
            PARTITION BY d.location
            ORDER BY d.date
        ) AS cumulative_vaccinations
    FROM covid_deaths d
    JOIN covid_vaccinations v
        ON d.location = v.location
        AND d.date = v.date
    WHERE d.continent IS NOT NULL
)
SELECT *,
    ROUND(cumulative_vaccinations * 100.0 / population, 2) AS pct_vaccinated
FROM VaccinationProgress;

-- Countries with highest full vaccination rate
SELECT
    location,
    MAX(people_fully_vaccinated) AS fully_vaccinated,
    MAX(d.population) AS population,
    ROUND(MAX(people_fully_vaccinated) * 100.0 / MAX(d.population), 2) AS full_vax_pct
FROM covid_vaccinations v
JOIN covid_deaths d USING (location, date)
WHERE v.continent IS NOT NULL
GROUP BY location
ORDER BY full_vax_pct DESC
LIMIT 15;