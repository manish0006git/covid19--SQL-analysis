CREATE TABLE covid_deaths (
    iso_code            VARCHAR(10),
    continent           VARCHAR(50),
    location            VARCHAR(100),
    date                DATE,
    population          BIGINT,
    total_cases         BIGINT,
    new_cases           INT,
    total_deaths        BIGINT,
    new_deaths          INT,
    icu_patients        INT,
    hosp_patients       INT,
    total_tests         BIGINT
);

CREATE TABLE covid_vaccinations (
    iso_code            VARCHAR(10),
    continent           VARCHAR(50),
    location            VARCHAR(100),
    date                DATE,
    total_vaccinations  BIGINT,
    people_vaccinated   BIGINT,
    people_fully_vaccinated BIGINT,
    new_vaccinations    INT
);