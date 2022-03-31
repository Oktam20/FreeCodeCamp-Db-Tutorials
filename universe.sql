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
-- Name: connection; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.connection (
    connection_id integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.connection OWNER TO freecodecamp;

--
-- Name: connection_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.connection_connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.connection_connection_id_seq OWNER TO freecodecamp;

--
-- Name: connection_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.connection_connection_id_seq OWNED BY public.connection.connection_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    about text,
    age integer,
    new_explored boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planets_around integer,
    explored boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    about text,
    livable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    about text,
    size numeric(6,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: connection connection_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connection ALTER COLUMN connection_id SET DEFAULT nextval('public.connection_connection_id_seq'::regclass);


--
-- Data for Name: connection; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.connection VALUES (1, 2, 3, NULL);
INSERT INTO public.connection VALUES (2, 3, 4, NULL);
INSERT INTO public.connection VALUES (3, 4, 5, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'Small', 100, NULL);
INSERT INTO public.galaxy VALUES (2, 'B', 'Small', 100, NULL);
INSERT INTO public.galaxy VALUES (3, 'B', 'Small', 100, NULL);
INSERT INTO public.galaxy VALUES (4, 'C', 'Small', 100, NULL);
INSERT INTO public.galaxy VALUES (5, 'D', 'Small', 100, NULL);
INSERT INTO public.galaxy VALUES (6, 'E', 'Small', 100, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 5, false, 2);
INSERT INTO public.moon VALUES (2, 'A', 5, false, 2);
INSERT INTO public.moon VALUES (3, 'AA', 5, false, 2);
INSERT INTO public.moon VALUES (4, 'AA', 5, false, 2);
INSERT INTO public.moon VALUES (5, 'AAA', 5, false, 2);
INSERT INTO public.moon VALUES (6, 'AAAA', 5, false, 2);
INSERT INTO public.moon VALUES (7, 'AAAB', 5, false, 2);
INSERT INTO public.moon VALUES (8, 'C', 5, false, 2);
INSERT INTO public.moon VALUES (9, 'CA', 5, false, 2);
INSERT INTO public.moon VALUES (10, 'CAA', 5, false, 2);
INSERT INTO public.moon VALUES (11, 'CAAA', 5, false, 2);
INSERT INTO public.moon VALUES (12, 'CAAAA', 5, false, 2);
INSERT INTO public.moon VALUES (13, 'D', 5, false, 2);
INSERT INTO public.moon VALUES (14, 'DA', 5, false, 2);
INSERT INTO public.moon VALUES (15, 'aDA', 5, false, 2);
INSERT INTO public.moon VALUES (16, 'E', 5, false, 2);
INSERT INTO public.moon VALUES (17, 'EA', 5, false, 2);
INSERT INTO public.moon VALUES (18, 'EAA', 5, false, 2);
INSERT INTO public.moon VALUES (19, 'EAEA', 5, false, 2);
INSERT INTO public.moon VALUES (20, 'EAEF', 5, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 'Small', true, 1);
INSERT INTO public.planet VALUES (2, 'B', 'Small', true, 1);
INSERT INTO public.planet VALUES (3, 'C', 'Small', true, 1);
INSERT INTO public.planet VALUES (4, 'E', 'Small', true, 1);
INSERT INTO public.planet VALUES (5, 'D', 'Small', true, 1);
INSERT INTO public.planet VALUES (6, 'F', 'Small', true, 1);
INSERT INTO public.planet VALUES (7, 'G', 'Small', true, 1);
INSERT INTO public.planet VALUES (8, 'H', 'Small', true, 1);
INSERT INTO public.planet VALUES (9, 'I', 'Small', true, 1);
INSERT INTO public.planet VALUES (10, 'J', 'Small', true, 2);
INSERT INTO public.planet VALUES (11, 'K', 'Small', true, 2);
INSERT INTO public.planet VALUES (12, 'L', 'Small', true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'D', 'Small', 100.00, 1);
INSERT INTO public.star VALUES (2, 'A', 'Small', 100.00, 1);
INSERT INTO public.star VALUES (3, 'B', 'Small', 100.00, 1);
INSERT INTO public.star VALUES (4, 'C', 'Small', 100.00, 1);
INSERT INTO public.star VALUES (6, 'E', 'Small', 100.00, 5);
INSERT INTO public.star VALUES (5, 'F', 'Small', 100.00, 5);


--
-- Name: connection_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.connection_connection_id_seq', 1, false);


--
-- Name: connection connection_connection_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_connection_id_key UNIQUE (connection_id);


--
-- Name: connection connection_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_pkey PRIMARY KEY (connection_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: connection connection_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: connection connection_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

