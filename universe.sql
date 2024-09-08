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
-- Name: aesteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aesteroid (
    aesteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    orbit_type text
);


ALTER TABLE public.aesteroid OWNER TO freecodecamp;

--
-- Name: aesteroid_aesteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aesteroid_aesteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aesteroid_aesteroid_id_seq OWNER TO freecodecamp;

--
-- Name: aesteroid_aesteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aesteroid_aesteroid_id_seq OWNED BY public.aesteroid.aesteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_type text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric(5,3),
    is_spherical boolean,
    planet_id integer
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
    distance_from_earth integer,
    star_id integer,
    mass_of_planet numeric(12,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plannet_plannet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plannet_plannet_id_seq OWNER TO freecodecamp;

--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plannet_plannet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer,
    distance_from_earth integer
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
-- Name: aesteroid aesteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aesteroid ALTER COLUMN aesteroid_id SET DEFAULT nextval('public.aesteroid_aesteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plannet_plannet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: aesteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aesteroid VALUES (1, 'Ceres', 'Asteroid Belt');
INSERT INTO public.aesteroid VALUES (2, 'Vesta', 'Asteroid Belt');
INSERT INTO public.aesteroid VALUES (3, 'Pallas', 'Asteroid Belt');
INSERT INTO public.aesteroid VALUES (4, 'Juno', 'Asteroid Belt');
INSERT INTO public.aesteroid VALUES (5, 'Eros', 'Near-Earth');
INSERT INTO public.aesteroid VALUES (6, 'Hygiea', 'Asteroid Belt');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Barred Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 12000, 'Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 500, 'Spiral Galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 13000, 'Lenticular Galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13250, 'Elliptical Galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.000, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.000, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.000, true, 2);
INSERT INTO public.moon VALUES (4, 'Io', 0.000, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 0.000, true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0.000, true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 0.000, true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 0.000, true, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.000, true, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0.000, true, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 0.000, true, 4);
INSERT INTO public.moon VALUES (12, 'Miranda', 0.000, true, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 0.000, true, 5);
INSERT INTO public.moon VALUES (14, 'Umbriel', 0.000, true, 5);
INSERT INTO public.moon VALUES (15, 'Titania', 0.000, true, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 0.000, true, 5);
INSERT INTO public.moon VALUES (17, 'Triton', 0.000, true, 6);
INSERT INTO public.moon VALUES (18, 'Nereid', 0.000, true, 6);
INSERT INTO public.moon VALUES (19, 'Charon', 0.000, true, 7);
INSERT INTO public.moon VALUES (20, 'Hydra', 0.000, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 1, 5972.00);
INSERT INTO public.planet VALUES (2, 'Mars', 0, 1, 641.00);
INSERT INTO public.planet VALUES (3, 'Jupiter', 0, 1, 1898000.00);
INSERT INTO public.planet VALUES (4, 'Saturn', 0, 1, 568300.00);
INSERT INTO public.planet VALUES (5, 'Uranus', 0, 1, 86800.00);
INSERT INTO public.planet VALUES (6, 'Neptune', 0, 1, 102400.00);
INSERT INTO public.planet VALUES (7, 'Proxima b', 4, 2, 1.00);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Bb', 4, 2, 5.00);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 490, 3, 0.60);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 620, 3, 1.60);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 153, 4, 0.73);
INSERT INTO public.planet VALUES (12, 'TrES-2b', 330, 4, 1.22);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 1, 15);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, 1, 4240);
INSERT INTO public.star VALUES (3, 'Sirius', false, 1, 8600);
INSERT INTO public.star VALUES (4, 'Rigel', false, 2, 860000);
INSERT INTO public.star VALUES (5, 'Vega', false, 3, 25000);
INSERT INTO public.star VALUES (6, 'M87 Black Hole Star', false, 6, 53000000);


--
-- Name: aesteroid_aesteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aesteroid_aesteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plannet_plannet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: aesteroid aesteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aesteroid
    ADD CONSTRAINT aesteroid_name_key UNIQUE (name);


--
-- Name: aesteroid aesteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aesteroid
    ADD CONSTRAINT aesteroid_pkey PRIMARY KEY (aesteroid_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet plannet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_name_key UNIQUE (name);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_plannet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plannet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet plannet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

