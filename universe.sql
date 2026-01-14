--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    distance integer,
    size integer,
    reachable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    brightness numeric(3,1),
    alive boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100, 190, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 120, 130, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 10, 130, true);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 1990, 110, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 199, 11, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (111, 'ABCDEFGH', 6, 'anything', false);
INSERT INTO public.moon VALUES (12, 'ABCDEFGHI', 6, 'anything', false);
INSERT INTO public.moon VALUES (13, 'ABCDEFGHIJ', 6, 'anything', false);
INSERT INTO public.moon VALUES (14, 'ABCDEFGHIJH', 6, 'anything', false);
INSERT INTO public.moon VALUES (15, 'ABCDEFGHIJHL', 6, 'anything', false);
INSERT INTO public.moon VALUES (16, 'ABCDEFGHIJHLL', 6, 'anything', false);
INSERT INTO public.moon VALUES (17, 'ABCDEFGHIJHLLA', 6, 'anything', false);
INSERT INTO public.moon VALUES (18, 'ABCDEFGHIJHLLAa', 6, 'anything', false);
INSERT INTO public.moon VALUES (19, 'ABCDEFGHIJHLLAaW', 6, 'anything', false);
INSERT INTO public.moon VALUES (20, 'ABCDEFGHIJHLLAaWx', 6, 'anything', false);
INSERT INTO public.moon VALUES (1, 'Titan', 3, 'anything', true);
INSERT INTO public.moon VALUES (2, 'Europa', 2, 'anything', true);
INSERT INTO public.moon VALUES (3, 'Ganymede', 6, 'anything', false);
INSERT INTO public.moon VALUES (4, 'Io', 6, 'anything', false);
INSERT INTO public.moon VALUES (5, 'Callisto', 6, 'anything', false);
INSERT INTO public.moon VALUES (6, 'Enceladus', 6, 'anything', false);
INSERT INTO public.moon VALUES (7, 'Triton', 6, 'anything', false);
INSERT INTO public.moon VALUES (8, 'Phobos', 6, 'anything', false);
INSERT INTO public.moon VALUES (9, 'Deimos', 6, 'anything', false);
INSERT INTO public.moon VALUES (10, 'Charon', 6, 'anything', false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, '1', '1');
INSERT INTO public.more_info VALUES (2, '2', '1');
INSERT INTO public.more_info VALUES (3, '3', '1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 1, 'anything', false);
INSERT INTO public.planet VALUES (2, 'Kepler-186f', 2, 'anything', false);
INSERT INTO public.planet VALUES (3, 'Gliese 581g', 3, 'anything', false);
INSERT INTO public.planet VALUES (4, 'TRAPPIST-1e', 4, 'anything', false);
INSERT INTO public.planet VALUES (5, 'HD 209458 b', 5, 'anything', false);
INSERT INTO public.planet VALUES (6, 'Osiris', 6, 'anything', true);
INSERT INTO public.planet VALUES (7, '55 Cancri e', 6, 'anything', true);
INSERT INTO public.planet VALUES (8, 'Methuselah', 1, 'anything', true);
INSERT INTO public.planet VALUES (9, 'Tatooine', 3, 'anything', true);
INSERT INTO public.planet VALUES (10, 'Bellerophon', 4, 'anything', true);
INSERT INTO public.planet VALUES (11, 'Arrakis', 4, 'anything', true);
INSERT INTO public.planet VALUES (12, 'Coruscant', 3, 'anything', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 1, 1.1, true);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 3.1, true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3, 3.1, true);
INSERT INTO public.star VALUES (4, 'Rigel', 4, 3.1, true);
INSERT INTO public.star VALUES (5, 'Vega', 5, 31.1, true);
INSERT INTO public.star VALUES (6, 'Antares', 6, 3.1, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

