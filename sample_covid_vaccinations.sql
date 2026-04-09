-- ============================================================
-- SAMPLE DATASET: COVID-19 Vaccinations Data
-- Source: Our World in Data (https://ourworldindata.org/covid-deaths)
-- NOTE: This is a SAMPLE dataset with 50 rows for demonstration
--       purposes only. Download the full dataset from the link above.
-- ============================================================

-- Create table first
CREATE TABLE IF NOT EXISTS covid_vaccinations (
    iso_code                VARCHAR(10),
    continent               VARCHAR(50),
    location                VARCHAR(100),
    date                    DATE,
    total_vaccinations      BIGINT,
    people_vaccinated       BIGINT,
    people_fully_vaccinated BIGINT,
    new_vaccinations        INT
);

-- ============================================================
-- SAMPLE DATA INSERT STATEMENTS (50 rows)
-- ============================================================

INSERT INTO covid_vaccinations VALUES
('IND', 'Asia',          'India',          '2021-01-01', NULL,       NULL,       NULL,       NULL),
('IND', 'Asia',          'India',          '2021-02-01',  12456000,  11200000,   NULL,       500000),
('IND', 'Asia',          'India',          '2021-03-01',  45678000,  40000000,   5200000,   1500000),
('IND', 'Asia',          'India',          '2021-04-01',  98000000,  85000000,  12000000,   2000000),
('IND', 'Asia',          'India',          '2021-05-01', 165000000, 140000000,  24000000,   2200000),
('IND', 'Asia',          'India',          '2021-06-01', 240000000, 200000000,  38000000,   3000000),
('IND', 'Asia',          'India',          '2021-07-01', 360000000, 300000000,  58000000,   4000000),
('IND', 'Asia',          'India',          '2021-08-01', 490000000, 400000000,  85000000,   5000000),
('IND', 'Asia',          'India',          '2021-09-01', 620000000, 500000000, 110000000,   4500000),
('IND', 'Asia',          'India',          '2021-10-01', 750000000, 590000000, 145000000,   4000000),

('USA', 'North America', 'United States',  '2021-01-01',  4226976,   2795027,    NULL,       900000),
('USA', 'North America', 'United States',  '2021-02-01',  65934322,  46440929,  19493393,  1800000),
('USA', 'North America', 'United States',  '2021-03-01', 143432021, 100048434,  52968629,  2500000),
('USA', 'North America', 'United States',  '2021-04-01', 213622021, 147073040,  94879396,  3000000),
('USA', 'North America', 'United States',  '2021-05-01', 296031344, 167634716, 132527979,  1900000),
('USA', 'North America', 'United States',  '2021-06-01', 321765796, 178523698, 152424049,   700000),
('USA', 'North America', 'United States',  '2021-07-01', 336449215, 185498475, 161534000,   500000),
('USA', 'North America', 'United States',  '2021-08-01', 361045823, 198334000, 170000000,   800000),
('USA', 'North America', 'United States',  '2021-09-01', 393000000, 213000000, 183000000,  1000000),
('USA', 'North America', 'United States',  '2021-10-01', 415000000, 222000000, 192000000,   700000),

('BRA', 'South America', 'Brazil',         '2021-01-01', NULL,       NULL,       NULL,       NULL),
('BRA', 'South America', 'Brazil',         '2021-02-01',  4300000,   4300000,    NULL,       400000),
('BRA', 'South America', 'Brazil',         '2021-03-01',  18600000,  16100000,   2500000,   1000000),
('BRA', 'South America', 'Brazil',         '2021-04-01',  39700000,  30400000,   9300000,   1200000),
('BRA', 'South America', 'Brazil',         '2021-05-01',  63000000,  47400000,  15600000,   1400000),
('BRA', 'South America', 'Brazil',         '2021-06-01',  96000000,  69500000,  26500000,   1700000),
('BRA', 'South America', 'Brazil',         '2021-07-01', 131000000,  92300000,  38700000,   2000000),
('BRA', 'South America', 'Brazil',         '2021-08-01', 178000000, 119000000,  59000000,   2400000),
('BRA', 'South America', 'Brazil',         '2021-09-01', 224000000, 143000000,  81000000,   2300000),
('BRA', 'South America', 'Brazil',         '2021-10-01', 261000000, 158000000, 103000000,   2000000),

('GBR', 'Europe',        'United Kingdom', '2021-01-01',  1297690,   1297690,    NULL,       350000),
('GBR', 'Europe',        'United Kingdom', '2021-02-01',  20224842,  19285081,    939761,    600000),
('GBR', 'Europe',        'United Kingdom', '2021-03-01',  38594986,  30440272,   3887538,   1000000),
('GBR', 'Europe',        'United Kingdom', '2021-04-01',  57698071,  40977592,  11869073,    700000),
('GBR', 'Europe',        'United Kingdom', '2021-05-01',  69434456,  43983978,  25450478,    600000),
('GBR', 'Europe',        'United Kingdom', '2021-06-01',  79176427,  45534528,  33641899,    500000),
('GBR', 'Europe',        'United Kingdom', '2021-07-01',  88665440,  47745396,  40920044,    400000),
('GBR', 'Europe',        'United Kingdom', '2021-08-01',  96834553,  49499680,  46258283,    300000),
('GBR', 'Europe',        'United Kingdom', '2021-09-01', 102312547,  50500000,  50000000,    250000),
('GBR', 'Europe',        'United Kingdom', '2021-10-01', 107000000,  51500000,  52000000,    200000),

('ZAF', 'Africa',        'South Africa',   '2021-01-01', NULL,       NULL,       NULL,       NULL),
('ZAF', 'Africa',        'South Africa',   '2021-02-01',  80000,      80000,      NULL,       30000),
('ZAF', 'Africa',        'South Africa',   '2021-03-01',  370000,    370000,      NULL,       80000),
('ZAF', 'Africa',        'South Africa',   '2021-04-01',  550000,    520000,      30000,      50000),
('ZAF', 'Africa',        'South Africa',   '2021-05-01',  900000,    850000,      50000,      80000),
('ZAF', 'Africa',        'South Africa',   '2021-06-01',  2700000,  2500000,     200000,     200000),
('ZAF', 'Africa',        'South Africa',   '2021-07-01',  6200000,  5500000,     700000,     400000),
('ZAF', 'Africa',        'South Africa',   '2021-08-01', 10700000,  9200000,    1500000,     500000),
('ZAF', 'Africa',        'South Africa',   '2021-09-01', 14600000, 12000000,    2600000,     400000),
('ZAF', 'Africa',        'South Africa',   '2021-10-01', 17800000, 14400000,    3400000,     350000);

-- ============================================================
-- END OF SAMPLE DATA
-- Total rows inserted: 50
-- Countries included: India, United States, Brazil,
--                     United Kingdom, South Africa
-- Date range: Jan 2021 - Oct 2021
-- ============================================================
