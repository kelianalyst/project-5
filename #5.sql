select * 
from covid.coviddeaths
order by 3,4;

-- select data 

select location,date,total_cases,new_cases,total_deaths,population
from covid.coviddeaths
order by 1,2;

-- TOTAL CASES VS TOTAL DEATHS

 select location, date, total_cases,total_deaths,(total_deaths/total_cases)*100 as deathpercentage
 from covid.coviddeaths
 where location = 'algeria'
 order by 1,2;
 
 -- TOTAL CASES VS POPULATION
 SELECT location,population,date,total_cases,(total_cases/population)*100
 from covid.coviddeaths
 -- where location ='algeria'
 order by 1,2;
 
 -- COUNTRIES WITH HIG INFECTION RATE COMPARED TO POPULATION
 
 SELECT location, max(Total_cases)  as highestinfection,max(total_cases/population)* 100 as infectedpopulationpercentage
 from covid.coviddeaths
 -- where location= 'algeria'
 group by location,population
 order by infectedpopulationpercentage desc;
 
 -- COUNTRIES WITH HIGHEST DEATH COUNT PER POPULATION.
 
 SELECT location, max(total_deaths) as totaldeath
 from covid.coviddeaths
 where continent<>""
 group by location
 order by totaldeath;
 
 -- BY CONTINENT
 
 SELECT continent, max(total_deaths) as totaldeath
 from covid.coviddeaths
 where continent<>""
 group by continent
 order  by totaldeath;
 
 -- continent WITH HIGHEST DEATH COUNT PER POPULATION.
 
 SELECT continent, max(total_deaths) as TOTALdeathcount
 from covid.coviddeaths
 where continent <>""
 group by continent
 order by TOTALdeathcount DESC;
 
 
 -- global numbers
 
select sum(new_cases)as totalcasese,sum(new_deaths)as total_deaths,sum(new_deaths)/sum(new_cases)* 100 as deathpercentage
from covid.coviddeaths
where continent<>""
order by 1,2;
 
 
 
 
 
 