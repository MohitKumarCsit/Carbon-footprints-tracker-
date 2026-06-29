USE CarbonDB;

-- 1. Total Carbon Emissions
SELECT SUM(emission_value) AS total_emission
FROM EMISSIONS;
