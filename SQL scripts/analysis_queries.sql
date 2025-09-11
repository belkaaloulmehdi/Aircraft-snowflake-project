-- ===============================================
-- Projet Aircraft DB - Requêtes d’analyse SQL
-- ===============================================

-- Q1 : Nombre de vols par avion
-- Cette requête compte le nombre total de vols réalisés par chaque modèle d’avion.
SELECT "Aircraft_Id", COUNT(*) AS "Nombre_de_Vols"
FROM individual_flights
GROUP BY "Aircraft_Id"
ORDER BY "Nombre_de_Vols" DESC;

-- Q2 : Nombre total de passagers par aéroport
-- Cette requête calcule le nombre de passagers transportés en multipliant
-- le nombre de vols de chaque avion par sa capacité, regroupés par aéroport.
-- Attention : le double comptage (départ + arrivée) est volontaire, comme précisé dans l’énoncé.

WITH flights_by_airport AS (
  SELECT f."Departure_Airport_Code" AS airport_code, f."Aircraft_Id", COUNT(*) AS nb_vols
  FROM INDIVIDUAL_FLIGHTS f
  GROUP BY 1,2
  UNION ALL
  SELECT f."Destination_Airport_Code" AS airport_code, f."Aircraft_Id", COUNT(*) AS nb_vols
  FROM INDIVIDUAL_FLIGHTS f
  GROUP BY 1,2
)
SELECT
  ap."Airport_Name" AS airport_name,
  fb.airport_code,
  SUM(fb.nb_vols * a."Capacity") AS passengers
FROM flights_by_airport fb
JOIN AIRCRAFT a  ON a."Aircraft_Id" = fb."Aircraft_Id"
JOIN AIRPORTS ap ON ap."Airport_Code" = fb.airport_code
GROUP BY ap."Airport_Name", fb.airport_code
ORDER BY passengers DESC
LIMIT 10;


-- Q3 : Meilleure année en RPM par compagnie
-- Cette requête identifie, pour chaque compagnie aérienne, l’année avec le revenu passager-kilomètre (RPM) le plus élevé.
WITH rpm_par_annee AS (
    SELECT
        "Airline_Code",
        DATE_TRUNC('YEAR', TO_DATE("Date", 'DD/MM/YYYY')) AS "Annee",
        SUM(COALESCE("RPM_Domestic", 0)) AS "RPM_Total"
    FROM flight_summary_data
    GROUP BY "Airline_Code", "Annee"
)
SELECT a."Airline_Name", r."Annee", r."RPM_Total"
FROM rpm_par_annee r
JOIN airlines a ON r."Airline_Code" = a."Airline_Code"
WHERE r."RPM_Total" = (
    SELECT MAX(r2."RPM_Total")
    FROM rpm_par_annee r2
    WHERE r2."Airline_Code" = r."Airline_Code"
)
ORDER BY a."Airline_Name";

-- Q4 : Meilleure année en ASM par compagnie
-- Cette requête trouve l’année où chaque compagnie a eu la plus grande capacité moyenne en sièges kilomètres offerts (ASM).
WITH asm_par_annee AS (
    SELECT
        "Airline_Code",
        DATE_TRUNC('YEAR', TO_DATE("Date", 'DD/MM/YYYY')) AS "Annee",
        AVG(COALESCE("ASM_Domestic", 0)) AS "ASM_Moyenne"
    FROM flight_summary_data
    GROUP BY "Airline_Code", "Annee"
)
SELECT a."Airline_Name", r."Annee", r."ASM_Moyenne"
FROM asm_par_annee r
JOIN airlines a ON r."Airline_Code" = a."Airline_Code"
WHERE r."ASM_Moyenne" = (
    SELECT MAX(r2."ASM_Moyenne")
    FROM asm_par_annee r2
    WHERE r2."Airline_Code" = r."Airline_Code"
)
ORDER BY a."Airline_Name";

-- Bonus : Top 5 compagnies en RPM total
-- Cette requête liste les cinq compagnies aériennes avec le RPM total le plus élevé, combinant domestique et international.
SELECT a."Airline_Name",
       SUM(COALESCE(f."RPM_Domestic", 0) + COALESCE(f."RPM_International", 0)) AS "RPM_Total"
FROM airlines a
JOIN flight_summary_data f ON a."Airline_Code" = f."Airline_Code"
GROUP BY a."Airline_Name"
ORDER BY "RPM_Total" DESC
LIMIT 5;
