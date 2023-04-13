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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_myears numeric(10,5),
    description text,
    alt_name character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    radius_in_km integer,
    has_life boolean,
    star_id integer NOT NULL,
    distance_from_star_in_million_km integer,
    description text,
    orbital_period_in_days numeric(10,5),
    day_length_in_h numeric(10,5),
    gravity numeric(5,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    constellation_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', NULL);
INSERT INTO public.constellation VALUES (2, 'Orion', NULL);
INSERT INTO public.constellation VALUES (3, 'Ursa Major', NULL);
INSERT INTO public.constellation VALUES (4, 'Cassiopeia', NULL);
INSERT INTO public.constellation VALUES (5, 'Canis Major', NULL);
INSERT INTO public.constellation VALUES (6, 'Centaurus', NULL);
INSERT INTO public.constellation VALUES (7, 'Crux', NULL);
INSERT INTO public.constellation VALUES (8, 'Carina', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Maffei I', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Maffei II', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Virgo A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Magellanic Clouds', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Amalthea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Titan', 7, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Enceladus', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Mimas', 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Dione', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Tethys', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Hyperion', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', 8, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 8, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 8, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Umbriel', 8, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Ariel', 8, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Puck', 8, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Cressida', 8, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Triton', 9, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Thalassa', 9, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Hippocamp', 9, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Nereid', 9, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Galatea', 9, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Despina', 9, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Jupiter LXI', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', 2440, false, 1, 58, NULL, 88.00000, 1416.00000, 3.70);
INSERT INTO public.planet VALUES (4, 'Venus', 6052, false, 1, 108, NULL, 225.00000, 5832.00000, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', 3390, false, 1, 228, NULL, 687.00000, 24.60000, 3.72);
INSERT INTO public.planet VALUES (6, 'Jupiter', 69911, false, 1, 779, NULL, 4380.00000, NULL, 24.79);
INSERT INTO public.planet VALUES (7, 'Saturn', 58232, false, 1, 1434, NULL, 10585.00000, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, false, 1, 2871, NULL, 30660.00000, 17.25000, 8.87);
INSERT INTO public.planet VALUES (9, 'Neptune', 24622, false, 1, 4495, NULL, 60225.00000, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'HIP 13044 b', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Upsilon Andromedae d', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, '14 Andromedae b', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Upsilon Andromedae c', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Upsilon Andromedae e', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2, NULL, 1);
INSERT INTO public.star VALUES (3, 'Beta Andromedae', 2, NULL, 1);
INSERT INTO public.star VALUES (4, 'Upsilon Andromedae', 2, NULL, 1);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 2, NULL, 1);
INSERT INTO public.star VALUES (6, 'Mu Andromedae', 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Pi Andromedae', 2, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Xi Andromedae', 2, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 8, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

