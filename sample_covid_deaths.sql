-- ============================================================
-- SAMPLE DATASET: COVID-19 Deaths Data
-- Source: Our World in Data (https://ourworldindata.org/covid-deaths)
-- NOTE: This is a SAMPLE dataset with 50 rows for demonstration
--       purposes only. Download the full dataset from the link above.
-- ============================================================

-- Create table first
CREATE TABLE IF NOT EXISTS covid_deaths (
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

-- ============================================================
-- SAMPLE DATA INSERT STATEMENTS (50 rows)
-- ============================================================

INSERT INTO covid_deaths VALUES
('IND', 'Asia',          'India',          '2021-01-01', 1380004385, 10266674,  18088, 148738, 201,  NULL, NULL, 176764500),
('IND', 'Asia',          'India',          '2021-02-01', 1380004385, 10766245,  11039, 154486, 100,  NULL, NULL, 201834200),
('IND', 'Asia',          'India',          '2021-03-01', 1380004385, 11131787,  15388, 157248, 113,  NULL, NULL, 230456000),
('IND', 'Asia',          'India',          '2021-04-01', 1380004385, 12689849,  72330, 165101, 459,  NULL, NULL, 260000000),
('IND', 'Asia',          'India',          '2021-05-01', 1380004385, 19164969, 392488, 211853, 3689, NULL, NULL, 290000000),
('IND', 'Asia',          'India',          '2021-06-01', 1380004385, 28307831,  96982, 335102, 2123, NULL, NULL, 330000000),
('IND', 'Asia',          'India',          '2021-07-01', 1380004385, 30549069,  48698, 402728,  895, NULL, NULL, 380000000),
('IND', 'Asia',          'India',          '2021-08-01', 1380004385, 31695958,  41965, 424773,  460, NULL, NULL, 420000000),
('IND', 'Asia',          'India',          '2021-09-01', 1380004385, 32931749,  42766, 439895,  380, NULL, NULL, 450000000),
('IND', 'Asia',          'India',          '2021-10-01', 1380004385, 33804156,  20799, 448817,  179, NULL, NULL, 480000000),

('USA', 'North America', 'United States',  '2021-01-01', 331002651, 20557636, 196256, 354178, 3438, 23443, 124000, 267560000),
('USA', 'North America', 'United States',  '2021-02-01', 331002651, 26558208, 115817, 453022, 3359, 17800,  95000, 308000000),
('USA', 'North America', 'United States',  '2021-03-01', 331002651, 29572244,  62703, 536070, 1128, 14100,  74000, 345000000),
('USA', 'North America', 'United States',  '2021-04-01', 331002651, 30602331,  64789, 553692,  984, 15800,  83000, 378000000),
('USA', 'North America', 'United States',  '2021-05-01', 331002651, 32346971,  25882, 576232,  696, 10800,  56000, 410000000),
('USA', 'North America', 'United States',  '2021-06-01', 331002651, 33440754,  12311, 599978,  338,  6500,  33000, 436000000),
('USA', 'North America', 'United States',  '2021-07-01', 331002651, 33895769,  25026, 608317,  264,  8200,  42000, 450000000),
('USA', 'North America', 'United States',  '2021-08-01', 331002651, 35557433, 102879, 617504,  462, 15600,  82000, 463000000),
('USA', 'North America', 'United States',  '2021-09-01', 331002651, 39797170, 161084, 643955, 1929, 26000, 135000, 476000000),
('USA', 'North America', 'United States',  '2021-10-01', 331002651, 44022268,  71968, 710608, 1890, 17500,  90000, 490000000),

('BRA', 'South America', 'Brazil',         '2021-01-01', 212559417, 7675973,   54703, 194949,  958, NULL,  NULL,  35000000),
('BRA', 'South America', 'Brazil',         '2021-02-01', 212559417, 9278970,   47712, 225763, 1261, NULL,  NULL,  45000000),
('BRA', 'South America', 'Brazil',         '2021-03-01', 212559417, 12748747,  90691, 321682, 3650, NULL,  NULL,  55000000),
('BRA', 'South America', 'Brazil',         '2021-04-01', 212559417, 14950770,  78340, 412062, 3869, NULL,  NULL,  65000000),
('BRA', 'South America', 'Brazil',         '2021-05-01', 212559417, 16471600,  73645, 461931, 2442, NULL,  NULL,  75000000),
('BRA', 'South America', 'Brazil',         '2021-06-01', 212559417, 17927928,  62065, 502758, 2045, NULL,  NULL,  85000000),
('BRA', 'South America', 'Brazil',         '2021-07-01', 212559417, 19473954,  49609, 545604, 1484, NULL,  NULL,  95000000),
('BRA', 'South America', 'Brazil',         '2021-08-01', 212559417, 20452071,  22068, 570508,  841, NULL,  NULL, 105000000),
('BRA', 'South America', 'Brazil',         '2021-09-01', 212559417, 21302558,  14488, 592408,  567, NULL,  NULL, 115000000),
('BRA', 'South America', 'Brazil',         '2021-10-01', 212559417, 21686709,   9771, 603855,  280, NULL,  NULL, 125000000),

('GBR', 'Europe',        'United Kingdom', '2021-01-01',  67886011, 2794799,   55761, 76352,  1243, 3756,  30000,  50000000),
('GBR', 'Europe',        'United Kingdom', '2021-02-01',  67886011, 4083481,   13013, 119711,  828, 1320,  11000,  68000000),
('GBR', 'Europe',        'United Kingdom', '2021-03-01',  67886011, 4270736,    5312, 126122,  108,  450,   3500,  85000000),
('GBR', 'Europe',        'United Kingdom', '2021-04-01',  67886011, 4403604,    2793, 127524,   25,  200,   1800, 100000000),
('GBR', 'Europe',        'United Kingdom', '2021-05-01',  67886011, 4468266,    2675, 127854,   15,  150,   1200, 115000000),
('GBR', 'Europe',        'United Kingdom', '2021-06-01',  67886011, 4769356,   11007, 128232,   19,  300,   2500, 125000000),
('GBR', 'Europe',        'United Kingdom', '2021-07-01',  67886011, 5765990,   46207, 129851,   73, 1050,   8500, 135000000),
('GBR', 'Europe',        'United Kingdom', '2021-08-01',  67886011, 6533961,   30428, 131757,   88,  800,   6500, 145000000),
('GBR', 'Europe',        'United Kingdom', '2021-09-01',  67886011, 7545259,   35784, 135592,  195, 1050,   8200, 155000000),
('GBR', 'Europe',        'United Kingdom', '2021-10-01',  67886011, 8545259,   42000, 140000,  200, 1100,   9000, 165000000),

('ZAF', 'Africa',        'South Africa',   '2021-01-01',  59308690, 1113349,   21296, 30131,   819, NULL,  NULL,  5200000),
('ZAF', 'Africa',        'South Africa',   '2021-02-01',  59308690, 1507671,   10619, 46665,   414, NULL,  NULL,  8000000),
('ZAF', 'Africa',        'South Africa',   '2021-03-01',  59308690, 1542336,    1675, 52587,    82, NULL,  NULL, 10000000),
('ZAF', 'Africa',        'South Africa',   '2021-04-01',  59308690, 1580455,    3011, 54147,    72, NULL,  NULL, 12000000),
('ZAF', 'Africa',        'South Africa',   '2021-05-01',  59308690, 1662539,    8560, 56627,   182, NULL,  NULL, 14000000),
('ZAF', 'Africa',        'South Africa',   '2021-06-01',  59308690, 1882615,   18889, 60137,   333, NULL,  NULL, 16000000),
('ZAF', 'Africa',        'South Africa',   '2021-07-01',  59308690, 2375024,   21713, 69949,   634, NULL,  NULL, 18000000),
('ZAF', 'Africa',        'South Africa',   '2021-08-01',  59308690, 2652678,    8777, 78568,   413, NULL,  NULL, 20000000),
('ZAF', 'Africa',        'South Africa',   '2021-09-01',  59308690, 2790034,    3326, 82395,   121, NULL,  NULL, 22000000),
('ZAF', 'Africa',        'South Africa',   '2021-10-01',  59308690, 2893236,    2742, 87048,    80, NULL,  NULL, 24000000);

-- ============================================================
-- END OF SAMPLE DATA
-- Total rows inserted: 50
-- Countries included: India, United States, Brazil,
--                     United Kingdom, South Africa
-- Date range: Jan 2021 - Oct 2021
-- ============================================================
