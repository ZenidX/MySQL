SHOW VARIABLES WHERE variable_name = 'autocommit';
SET autocommit = ON;
SHOW VARIABLES WHERE variable_name = 'autocommit';
SET autocommit = OFF;
SHOW VARIABLES WHERE variable_name = 'autocommit';
BEGIN;

COMMIT; -- fijar una transaccion
BEGIN;
	DELETE FROM employees;
    SELECT * FROM employees;
ROLLBACK; -- cancelar la transaccion

-- juego de detectives con SQL
SELECT * FROM crime_scene_report WHERE type LIKE "%murder%" AND city LIKE "%SQL city%" AND `date`=20180115;
-- Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".
-- Someone killed the guard! He took an arrow to the knee!
-- VAMOS A NORTHWESTERN DR A LA ÚLTIMA CALLE
SELECT * FROM person WHERE address_street_name LIKE "%Northwestern Dr%" ORDER BY address_number DESC LIMIT 1;
-- id = 14887, name = "Morty Schapiro", license_id = 118009, address_number = 4919, ssn = 111564949
-- VAMOS A ENTREVISTAR A MORTY SCHAPIRO
SELECT * 
	FROM person
	INNER JOIN interview
	ON person.id=interview.person_id
	WHERE id=14887;
-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
-- The membership number on the bag started with "48Z".
-- Only gold members have those bags. The man got into a car with a plate that included "H42W".
-- VIO A UN TIO HUYENDO DESPUES DE OIR UN DISPARO DE ESCOPETA, CASI IDENTIFICAMOS SU MOCHILA DEL GIMNASIO
SELECT * FROM get_fit_now_member WHERE id LIKE "48Z%" AND membership_status = "gold";
-- id = 48Z7A, person_id = 28819, name = "Joe Germuska" , membership_start_date = 20160305, membership_status = "gold"
-- id = 48Z55, person_id = 67318, name = "Jeremy Bowers", membership_start_date = 20160101, membership_status = "gold"
-- INVESTIGAMOS EL FACEBOOK DE ESTAS DOS PERSONAS
SELECT *
	FROM get_fit_now_member t1
	INNER JOIN facebook_event_checkin t2
	ON t1.person_id=t2.person_id
	WHERE id LIKE "48Z%" AND membership_status = "gold";
-- name = "Jeremy Bowers", event_name = "SQL Symphony Concert"  , date = 20171206
-- name = "Jeremy Bowers", event_name = "The Funky Grooves Tour", date = 20180115
-- PARECE QUE JEREMY TIENE COARTADA, ESTUVO EN EL EVENTO "THE FUNKY GROOVES TOUR" EL DIA DEL ASESINATO. NOS VOLCARÉMOS CONTRA JOE GERMUSKA SIN PERDER DE VISTA A JEREMY.
SELECT *
	FROM get_fit_now_member t1
	INNER JOIN get_fit_now_check_in t2
	ON t1.id=t2.membership_id
	WHERE t1.name LIKE "Joe%" OR t1.name LIKE "Jeremy%";
-- name = "Joe Germuska" , check_in_date = 20180109, check_in_time = 1600, check_out_time = 1730
-- name = "Jeremy Bowers", check_in_date = 20180109, check_in_time = 1530, check_out_time = 1700
-- LOS DATOS DEL GIMNASIO LOS GUARDAMOS, LOS SOSPECHOSOS ESTUVIERON EN CONTACTO DE 16:00 A 17:00 EL 9/1/2018
-- VAMOS A FRANKLIN AVE A POR ANNABEL
SELECT * FROM person WHERE address_street_name LIKE "%Franklin Ave%" AND `name` LIKE "%Annabel%";
-- id = 16371, name = "Annabel Miller", license_id = 490173, address_number = 103 , ssn = 318771143
-- VAMOS A ENTREVISTAR A ANNABEL
SELECT *
	FROM interview t1
	INNER JOIN person t2
	ON t1.person_id=t2.id
	WHERE t2.id=16371;
-- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
-- VALE, ANNABEL RECONOCE AL ASESINO Y LO ÚBICA EN EL GIMNASIO DONDE ELLA TRABAJA EL DIA DONDE ELLOS COINCIDEN UNA HORA, ¿CUAL DE LOS DOS ES?
-- VAMOS A ENTREVISTARLO A VER QUE DICEN
SELECT * 
	FROM person
	INNER JOIN interview
	ON person.id=interview.person_id
	WHERE id=28819 OR id=67318;
-- NO HEMOS PODIDO ENTREVISTAR A JOE
-- I was hired by a woman with a lot of money.
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
-- She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.
-- VENGA, FUE CONTRATADO ¿PARA QUE? POR UNA MUJER CON CIERTA ESTATURA, UN COCHE Y QUE ACUDIO AL "SQL SYMPHONY CONCERT" TRES VECES EN "201712%"
-- COMPROVAMOS QUE COINCIDE CON LA DESCRIPCIÓN Y DESPUES MIRAMOS EN FACEBOOK SI DEJO PRUEBA DE SUS VISITAS AL EVENTO.
SELECT * 
	FROM person 
	INNER JOIN facebook_event_checkin facebook
	INNER JOIN drivers_license license
    INNER JOIN income 
	ON person.id=facebook.person_id AND person.license_id=license.id AND income.ssn=person.ssn
	WHERE gender LIKE "%female%"
		AND height BETWEEN 65 AND 67
		AND car_make LIKE "%Tesla%"
		AND car_model LIKE "%Model S%"
        AND annual_income > (SELECT annual_income FROM income WHERE ssn = (SELECT ssn FROM person WHERE `name` LIKE "%Jeremy%"))
	GROUP BY `name`;
-- id = 99716, name = "Miranda Priestly"
-- VAMOS A ENTREVISTARLA
SELECT * FROM interview WHERE person_id = 99716;
-- No data
-- ÉSTA SE NOS ESTA ESCAPANDO, EL ASESINO EJECUTOR ES "JEREMY BOWERS", LA MENTE PLANIFICADORA ES "MIRANDA PRIESTLY".
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        SELECT value FROM solution;
-- Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        SELECT value FROM solution;
-- Congrats, you found the murderer! But wait, there's more...
-- If you think you're up for a challenge, try querying the interview transcript of the murderer to find the real villain behind this crime.
-- If you feel especially confident in your SQL skills, try to complete this final step with no more than 2 queries.
-- Use this same INSERT statement with your new suspect to check your answer.
