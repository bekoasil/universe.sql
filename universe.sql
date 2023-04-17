--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    description text,
    has_life boolean,
    star_of_galaxy_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric,
    moon_of_planet_id integer,
    description character varying(60)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    star_of_planet_id integer,
    moon_of_planet_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: relations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relations (
    relation_to character varying(40),
    relations_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.relations OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric,
    star_of_galaxy_id integer,
    star_of_planet_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxyone', 10, 'descriptionone', true, 1);
INSERT INTO public.galaxy VALUES (2, 'galaxytwo', 11, 'descriptiontwo', true, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxythree', 12, 'descriptionthree', true, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxyfour', 13, 'descriptionfour', false, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxyfive', 14, 'descriptionfive', false, 5);
INSERT INTO public.galaxy VALUES (6, 'galaxysix', 15, 'descriptionsix', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonone', 100, 1, 'descriptionone');
INSERT INTO public.moon VALUES (2, 'moontwo', 101, 2, 'descriptiontwo');
INSERT INTO public.moon VALUES (3, 'moonthree', 102, 3, 'descriptionthree');
INSERT INTO public.moon VALUES (4, 'moonfour', 103, 4, 'descriptionfour');
INSERT INTO public.moon VALUES (5, 'moonfive', 104, 5, 'descriptionfive');
INSERT INTO public.moon VALUES (6, 'moonsix', 105, 6, 'descriptionsix');
INSERT INTO public.moon VALUES (7, ' moonseven', 106, 7, 'descriptionseven');
INSERT INTO public.moon VALUES (8, 'mooneight', 107, 8, 'descriptioneight');
INSERT INTO public.moon VALUES (9, 'moonnine', 108, 9, 'descriptionnine');
INSERT INTO public.moon VALUES (10, 'moonten', 109, 10, 'descriptionten');
INSERT INTO public.moon VALUES (11, 'mooneleven', 110, 11, 'descriptioneleven');
INSERT INTO public.moon VALUES (12, 'moontwelve', 111, 12, 'descriptiontwelve');
INSERT INTO public.moon VALUES (13, 'moonthirteen', 112, 13, 'descriptionthirteen');
INSERT INTO public.moon VALUES (14, 'moonfourteen', 113, 14, 'descriptionfourteen');
INSERT INTO public.moon VALUES (15, 'moonfifteen', 114, 15, 'descriptionfifteen');
INSERT INTO public.moon VALUES (16, 'moonsixteen', 115, 16, 'descriptionsixteen');
INSERT INTO public.moon VALUES (17, 'moonseventeen', 116, 17, 'decsriptionseventeen');
INSERT INTO public.moon VALUES (18, 'mooneigteen', 117, 18, 'descriptioneighteen');
INSERT INTO public.moon VALUES (19, 'moonnineteen', 118, 19, 'descriptionnineteen');
INSERT INTO public.moon VALUES (20, 'moontwenty', 119, 20, 'descriptiontwenty');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetone', 10, false, 1, 1);
INSERT INTO public.planet VALUES (2, 'planettwo', 11, true, 2, 2);
INSERT INTO public.planet VALUES (3, 'planetthree', 12, true, 3, 3);
INSERT INTO public.planet VALUES (4, 'planetfour', 13, true, 4, 4);
INSERT INTO public.planet VALUES (5, 'planetfive', 14, true, 5, 5);
INSERT INTO public.planet VALUES (6, 'planetsix', 15, true, 6, 6);
INSERT INTO public.planet VALUES (7, 'planetseven', 16, true, 7, 7);
INSERT INTO public.planet VALUES (8, 'planeteight', 17, true, 8, 8);
INSERT INTO public.planet VALUES (9, 'planetnine', 18, false, 9, 9);
INSERT INTO public.planet VALUES (10, 'planetten', 19, false, 10, 10);
INSERT INTO public.planet VALUES (11, 'planeteleven', 20, false, 11, 11);
INSERT INTO public.planet VALUES (12, 'planettwelve', 21, true, 12, 12);
INSERT INTO public.planet VALUES (13, 'planetthirteen', 22, true, 13, 13);
INSERT INTO public.planet VALUES (14, 'planetfourteen', 23, true, 14, 14);
INSERT INTO public.planet VALUES (15, 'planetfifteen', 24, true, 15, 15);
INSERT INTO public.planet VALUES (16, 'planetsixteen', 25, true, 16, 16);
INSERT INTO public.planet VALUES (17, 'planetseventeen', 26, true, 17, 17);
INSERT INTO public.planet VALUES (18, 'planeteighteen', 27, false, 18, 18);
INSERT INTO public.planet VALUES (19, 'planetnineteen', 28, false, 19, 19);
INSERT INTO public.planet VALUES (20, 'planettwenty', 29, false, 20, 20);


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relations VALUES ('planet', 1, 'planetTostar');
INSERT INTO public.relations VALUES ('star', 2, 'starTogalaxy');
INSERT INTO public.relations VALUES ('moon', 3, 'moonToplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starone', 100, 1, 1);
INSERT INTO public.star VALUES (2, 'startwo', 101, 2, 2);
INSERT INTO public.star VALUES (3, 'starthree', 102, 3, 3);
INSERT INTO public.star VALUES (4, 'starfour', 103, 4, 4);
INSERT INTO public.star VALUES (5, 'starfive', 104, 5, 5);
INSERT INTO public.star VALUES (6, 'starsix', 105, 6, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_of_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_of_galaxy_id_key UNIQUE (star_of_galaxy_id);


--
-- Name: moon moon_moon_of_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_of_planet_id_key UNIQUE (moon_of_planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_of_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_of_planet_id_key UNIQUE (moon_of_planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_of_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_of_planet_id_key UNIQUE (star_of_planet_id);


--
-- Name: relations relations_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_id_key UNIQUE (relations_id);


--
-- Name: relations relations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (relations_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_of_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_of_planet_id_key UNIQUE (star_of_planet_id);


--
-- Name: moon moon_moon_of_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_of_planet_id_fkey FOREIGN KEY (moon_of_planet_id) REFERENCES public.planet(moon_of_planet_id);


--
-- Name: star star_star_of_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_of_galaxy_id_fkey FOREIGN KEY (star_of_galaxy_id) REFERENCES public.galaxy(star_of_galaxy_id);


--
-- Name: star star_star_of_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_of_planet_id_fkey FOREIGN KEY (star_of_planet_id) REFERENCES public.planet(star_of_planet_id);


--
-- PostgreSQL database dump complete
--

