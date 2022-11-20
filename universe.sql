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
    name character varying,
    has_life boolean,
    galaxy_type text,
    is_visited boolean,
    year integer NOT NULL
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
-- Name: galaxy_year_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_year_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_year_seq OWNER TO freecodecamp;

--
-- Name: galaxy_year_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_year_seq OWNED BY public.galaxy.year;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    distance_from_earth integer,
    planet_id integer,
    moon_type text,
    number integer NOT NULL
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
-- Name: moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_number_seq OWNED BY public.moon.number;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    distance_from_earth integer,
    age_in_million_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    number integer NOT NULL
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
-- Name: planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_number_seq OWNED BY public.planet.number;


--
-- Name: space_company; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_company (
    space_company_id integer NOT NULL,
    name character varying,
    number_of_rockets integer,
    funded integer,
    ceo text,
    number integer NOT NULL
);


ALTER TABLE public.space_company OWNER TO freecodecamp;

--
-- Name: space_company_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_company_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_company_number_seq OWNER TO freecodecamp;

--
-- Name: space_company_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_company_number_seq OWNED BY public.space_company.number;


--
-- Name: space_company_space_company_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_company_space_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_company_space_company_id_seq OWNER TO freecodecamp;

--
-- Name: space_company_space_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_company_space_company_id_seq OWNED BY public.space_company.space_company_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    galaxy_id integer,
    star_type text,
    is_visited boolean,
    number integer NOT NULL
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
-- Name: star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_number_seq OWNER TO freecodecamp;

--
-- Name: star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_number_seq OWNED BY public.star.number;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy year; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN year SET DEFAULT nextval('public.galaxy_year_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN number SET DEFAULT nextval('public.moon_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN number SET DEFAULT nextval('public.planet_number_seq'::regclass);


--
-- Name: space_company space_company_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_company ALTER COLUMN space_company_id SET DEFAULT nextval('public.space_company_space_company_id_seq'::regclass);


--
-- Name: space_company number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_company ALTER COLUMN number SET DEFAULT nextval('public.space_company_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN number SET DEFAULT nextval('public.star_number_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'Adromeda', NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Sunflower', NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'Cigar', NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 2, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 2, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 6, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 6, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Namaka', NULL, 12, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Weywot', NULL, 11, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Ilmare', NULL, 10, NULL, 7);
INSERT INTO public.moon VALUES (9, 'Dysnomia', NULL, 9, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, 5, NULL, 10);
INSERT INTO public.moon VALUES (12, 'Miranda', NULL, 8, NULL, 11);
INSERT INTO public.moon VALUES (13, 'Titania', NULL, 8, NULL, 12);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, 8, NULL, 13);
INSERT INTO public.moon VALUES (15, 'Triton', NULL, 7, NULL, 14);
INSERT INTO public.moon VALUES (16, 'Galatea', NULL, 7, NULL, 15);
INSERT INTO public.moon VALUES (17, 'Naiad', NULL, 7, NULL, 16);
INSERT INTO public.moon VALUES (18, 'Moon', NULL, 3, NULL, 17);
INSERT INTO public.moon VALUES (19, 'Titan', NULL, 3, NULL, 18);
INSERT INTO public.moon VALUES (20, 'Ymir', NULL, 3, NULL, 19);
INSERT INTO public.moon VALUES (1, 'Moon1', 384400, 1, NULL, 20);
INSERT INTO public.moon VALUES (10, 'Titan1', NULL, 5, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 49.9, 'The best planet', true, false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, NULL, NULL, 3, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, NULL, NULL, NULL, NULL, 2, 5);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 2, 6);
INSERT INTO public.planet VALUES (7, 'Neptun', NULL, NULL, NULL, NULL, NULL, 1, 7);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, NULL, NULL, NULL, NULL, 3, 8);
INSERT INTO public.planet VALUES (9, 'Eris', NULL, NULL, NULL, NULL, NULL, 4, 9);
INSERT INTO public.planet VALUES (10, 'Varda', NULL, NULL, NULL, NULL, NULL, 5, 10);
INSERT INTO public.planet VALUES (11, 'Quaoar', NULL, NULL, NULL, NULL, NULL, 6, 11);
INSERT INTO public.planet VALUES (12, 'Haumes', NULL, NULL, NULL, NULL, NULL, 5, 12);


--
-- Data for Name: space_company; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_company VALUES (1, 'NASA', 3000, NULL, NULL, 1);
INSERT INTO public.space_company VALUES (2, 'SpaceX', 1000, NULL, NULL, 2);
INSERT INTO public.space_company VALUES (3, 'Blue Origin', 200, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Vega', 1, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'UY Scuti', 1, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'S Persei', 1, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Arcturus', 1, NULL, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_year_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_year_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_number_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_number_seq', 12, true);


--
-- Name: space_company_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_company_number_seq', 3, true);


--
-- Name: space_company_space_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_company_space_company_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_number_seq', 6, true);


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
-- Name: space_company space_company_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_company
    ADD CONSTRAINT space_company_name_key UNIQUE (name);


--
-- Name: space_company space_company_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_company
    ADD CONSTRAINT space_company_pkey PRIMARY KEY (space_company_id);


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

