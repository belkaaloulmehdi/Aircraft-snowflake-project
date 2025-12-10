# Rapport d’analyse – Projet Aircraft Data Analysis

---

## 1. Introduction

Ce rapport présente l’analyse de la base de données aéronautique `AIRCRAFT_DB` réalisée dans le cadre de ma formation Data Analyst au bootcamp Jedha.  
L’objectif est d’exploiter les données relatives aux avions, compagnies, aéroports et vols pour répondre à des questions métier clés en utilisant SQL sur la plateforme cloud Snowflake.

---

## 2. Contexte et données

Le dataset est fourni sous forme d’un script SQL complet qui crée les tables suivantes :  
- `aircraft` : informations sur les modèles d’avions  
- `airlines` : compagnies aériennes  
- `airports` : aéroports et leurs caractéristiques  
- `flight_summary_data` : données opérationnelles par vol  
- `individual_flights` : informations détaillées sur chaque vol  

Les données sont hébergées dans Snowflake, permettant un traitement performant via SQL.

---

## 3. Objectifs du projet

Les objectifs principaux sont :  
- Identifier le nombre de vols réalisés par chaque modèle d’avion  
- Calculer le nombre total de passagers par aéroport  
- Déterminer l’année de meilleure performance en RPM (Revenue Passenger Miles) par compagnie  
- Identifier l’année de meilleure performance en ASM (Available Seat Miles) par compagnie  
- Bonus : lister le top 5 des compagnies selon le RPM total  

---

## 4. Méthodologie

- Création et chargement des données dans Snowflake via le script SQL fourni  
- Rédaction et exécution des requêtes SQL adaptées pour répondre aux questions posées  
- Export des résultats en CSV pour analyses complémentaires  
- Capture des résultats dans l’interface Snowflake pour validation visuelle  

---

## 5. Résultats clés

### Q1 – Nombre de vols par avion

Le modèle `g72` est le plus fréquemment utilisé avec 1008 vols enregistrés, suivi du `t10` avec 553 vols. Cela met en évidence la popularité et la fréquence d’utilisation des différents avions.

![Q1](Screenshots/Q1.png)


### Q2 – Nombre total de passagers par aéroport

L’aéroport `Flocktopia (FKT)` a accueilli le plus grand nombre de passagers, avec plus de 430 millions cumulés, suivi par `Nestland Airport (NSA)` avec environ 179 millions. Ces chiffres incluent les passagers domestiques et internationaux.

![Q2](Screenshots/Q2.png)


### Q3 – Meilleure année en RPM par compagnie

Amazon Airlines a enregistré sa meilleure année en 2015 avec environ 9,17 millions de RPM. Flock Air et Goose Airways ont atteint leur pic en 2016, avec respectivement 13,4M et 3,46M RPM.

![Q3](Screenshots/Q3.png)


### Q4 – Meilleure année en ASM par compagnie

Amazon Airlines a atteint une ASM moyenne de 315931 en 2002, tandis que Flock Air et Goose Airways ont connu leurs meilleures années en 2016, avec ASM moyennes respectives de 427255 et 1100639.

![Q4](Screenshots/Q4.png)


### Bonus – Top 5 compagnies en RPM total

Amazon Airlines domine largement le classement des compagnies aériennes en termes de RPM total, confirmant sa position de leader.

![Q5](Screenshots/Q5.png)

---

## 6. Conclusion

L’analyse démontre une bonne maîtrise des données aéronautiques et permet de dégager des insights précis sur la fréquentation des avions, la charge passagers par aéroport et la performance des compagnies aériennes sur plusieurs années.  
Le projet illustre également ma capacité à manipuler des bases de données complexes dans un environnement cloud et à extraire des informations business pertinentes via SQL.

---
