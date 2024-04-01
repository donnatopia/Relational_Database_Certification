--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planetoids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetoids (
    planetoids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric(5,1),
    galaxy_id integer
);


ALTER TABLE public.planetoids OWNER TO freecodecamp;

--
-- Name: planetoids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetoids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetoids_id_seq OWNER TO freecodecamp;

--
-- Name: planetoids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetoids_id_seq OWNED BY public.planetoids.planetoids_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planetoids planetoids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoids ALTER COLUMN planetoids_id SET DEFAULT nextval('public.planetoids_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, 200.1, 'The Original Galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'Juicy Way', 300, 300.1, 'The Juiciest Galaxy', false, false);
INSERT INTO public.galaxy VALUES (3, 'Watery Way', 350, 350.7, 'The Wettest Galaxy', true, true);
INSERT INTO public.galaxy VALUES (4, 'Carbonation Way', 670, 3110.2, 'The Bubbliest Galaxy', false, true);
INSERT INTO public.galaxy VALUES (5, 'Salty Way', 60, 30.5, 'The Saltiest Galaxy', true, true);
INSERT INTO public.galaxy VALUES (6, 'Sweet Way', 609, 103.6, 'The Sweetest Galaxy', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Kaz', 17, 123.4, 'Master Thief', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Inej', 16, 16.2, 'Wraith', true, true, 2);
INSERT INTO public.moon VALUES (3, 'Jesper', 16, 111.2, 'Sharpshooter', true, true, 3);
INSERT INTO public.moon VALUES (4, 'Nina', 18, 22.3, 'Grisha Heartrender', true, true, 4);
INSERT INTO public.moon VALUES (5, 'Mathias', 18, 93.1, 'Frieda Solider', false, true, 5);
INSERT INTO public.moon VALUES (6, 'Wylan', 12, 43.8, 'Explosive Expert', true, true, 6);
INSERT INTO public.moon VALUES (7, 'Joost', 23, 55.1, 'Random Solider', true, false, 7);
INSERT INTO public.moon VALUES (8, 'Alina', 17, 1.5, 'Grisha Lightrender', false, false, 8);
INSERT INTO public.moon VALUES (9, 'Circe', 500, 277.1, 'Daughter of Helios', true, false, 9);
INSERT INTO public.moon VALUES (10, 'Jack', 34, 49.2, 'Physics Experimentalist', true, false, 10);
INSERT INTO public.moon VALUES (11, 'Elsie', 27, 923.1, 'Physics Theorist', true, false, 11);
INSERT INTO public.moon VALUES (12, 'Archer', 24, 112.7, 'Silenced', true, false, 12);
INSERT INTO public.moon VALUES (13, 'Violet', 21, 146.1, 'Lightning Welder', true, false, 1);
INSERT INTO public.moon VALUES (14, 'Xaden', 23, 47.9, 'Shadow Welder', true, false, 2);
INSERT INTO public.moon VALUES (15, 'Dain', 22, 33.6, 'Memory Thief', true, false, 3);
INSERT INTO public.moon VALUES (16, 'Katniss', 19, 999.1, 'Hunter', true, false, 4);
INSERT INTO public.moon VALUES (17, 'Prim', 15, 27.2, 'Healer', false, false, 5);
INSERT INTO public.moon VALUES (18, 'Peeta', 19, 552.1, 'Baker', true, false, 6);
INSERT INTO public.moon VALUES (19, 'Corio', 73, 113.7, 'President of Panem', false, false, 7);
INSERT INTO public.moon VALUES (20, 'Lucy Gray', 22, 22.7, 'Songbird', false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Percy', 17, 6.0, 'Son of Poseidon', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Annabeth', 17, 6.5, 'Daughter of Athena', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Jason', 16, 33.1, 'Son of Jupiter', false, true, 2);
INSERT INTO public.planet VALUES (4, 'Piper', 16, 52.7, 'Daughter of Aphrodite', true, false, 2);
INSERT INTO public.planet VALUES (5, 'Hazel', 14, 89.1, 'Daughter of Pluto', true, true, 3);
INSERT INTO public.planet VALUES (6, 'Frank', 17, 111.2, 'Son of Mars', true, true, 3);
INSERT INTO public.planet VALUES (7, 'Leo', 15, 173.2, 'Son of Hephaestus', true, false, 4);
INSERT INTO public.planet VALUES (8, 'Nico', 15, 334.6, 'Son of Hades', true, false, 4);
INSERT INTO public.planet VALUES (9, 'Will', 15, 59.3, 'Son of Apollo', true, false, 5);
INSERT INTO public.planet VALUES (10, 'Bianca', 13, 23.0, 'Daughter of Hades', false, false, 5);
INSERT INTO public.planet VALUES (11, 'Reyna', 19, 99.2, 'Daughter of Bellona', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Meg', 12, 48.2, 'Daughter of Demter', true, false, 6);


--
-- Data for Name: planetoids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetoids VALUES (1, 'Taylor', 'Singer', true, true, 34, 17.0, 1);
INSERT INTO public.planetoids VALUES (2, 'Ariana', 'Actress', true, true, 30, 122.1, 2);
INSERT INTO public.planetoids VALUES (3, 'Beyonce', 'Country', true, false, 44, 42.7, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 38, 122.1, 'The Hottest Star', false, true, 1);
INSERT INTO public.star VALUES (2, 'Orange', 47, 112.3, 'The Citrus Star', false, false, 2);
INSERT INTO public.star VALUES (3, 'Apple', 33, 332.2, 'The Tart Star', true, false, 2);
INSERT INTO public.star VALUES (4, 'Pretzel', 89, 189.3, 'The Twisty Star', false, false, 5);
INSERT INTO public.star VALUES (5, 'Candy', 210, 769.1, 'The Sweetest Star', true, true, 6);
INSERT INTO public.star VALUES (6, 'Cola', 679, 29.3, 'The Crispiest Star', true, false, 4);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: planetoids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetoids_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: planetoids planetoids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoids
    ADD CONSTRAINT planetoids_name_key UNIQUE (name);


--
-- Name: planetoids planetoids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoids
    ADD CONSTRAINT planetoids_pkey PRIMARY KEY (planetoids_id);


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
-- Name: planetoids planetoids_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoids
    ADD CONSTRAINT planetoids_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

