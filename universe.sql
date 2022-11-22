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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(255) NOT NULL,
    country text,
    retired boolean,
    alive boolean,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    dimension integer,
    speed numeric,
    description text
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
    name character varying(255) NOT NULL,
    age integer,
    magnitud numeric,
    distance integer,
    description text,
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
    name character varying(255) NOT NULL,
    age integer,
    magnitud numeric,
    distance integer,
    description text,
    star_id integer
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
    name character varying(255) NOT NULL,
    age integer,
    magnitud numeric,
    distance integer,
    description text,
    galaxy_id integer
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Hugo Pellicer', 'Spain', false, true, 6, 2);
INSERT INTO public.astronaut VALUES (2, 'Woody Allen', 'USA', true, true, 4, 1);
INSERT INTO public.astronaut VALUES (3, 'Miguel de Cervantes', 'Spain', true, false, 9, 15);
INSERT INTO public.astronaut VALUES (4, 'David Sedaris', 'USA', true, true, 8, 11);
INSERT INTO public.astronaut VALUES (5, 'Slatan Milos', 'Norway', false, true, 4, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 216, 100000, 5.5, 'Astronomers classify galaxies into three major categories: elliptical, spiral and irregular');
INSERT INTO public.galaxy VALUES (2, 'medusa', 17, 20000, 6.7, 'These galaxies span a wide range of sizes, from dwarf galaxies containing as few as 100 million stars to giant galaxies with more than a trillion stars');
INSERT INTO public.galaxy VALUES (3, 'condor', 22, 300000, 10.3, 'Ellipticals, which account for about one-third of all galaxies, vary from nearly circular to very elongated');
INSERT INTO public.galaxy VALUES (4, 'andromeda', 17, 500000, 21.7, 'They possess comparatively little gas and dust, contain older stars and are not actively forming stars anymore');
INSERT INTO public.galaxy VALUES (5, 'antennae', 65, 70000, 2.3, 'The largest and rarest of these, called giant ellipticals, are about 300,000 light-years across');
INSERT INTO public.galaxy VALUES (6, 'butterfly', 37, 62000, 5.1, 'Astronomers theorize that these are formed by the mergers of smaller galaxies');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'tanos', 123, 0.03, 74, 'the most energetic event known in the universe since the big bang', 4);
INSERT INTO public.moon VALUES (2, 'luna', 12, 1.35, 1, 'Because the major components of the cluster pair — stars, gas and the apparent dark matter — behave differently during collision, scientists were able to study them separately', 1);
INSERT INTO public.moon VALUES (3, 'extric', 15, 7.52, 42, 'The galaxies’ stars, which the Hubble and Magellan telescopes observed in visible light, were mostly unaffected by the collision, and passed right through', 7);
INSERT INTO public.moon VALUES (4, 'lentu', 2, 0.20, 43, 'The hot gas from the two colliding clusters, seen in X-ray wavelengths by the Chandra X-ray Observatory', 4);
INSERT INTO public.moon VALUES (5, 'booter', 73, 0.25, 7, 'Contains most of the cluster pair’s normal matter. Because the gases interact electromagnetically', 6);
INSERT INTO public.moon VALUES (6, 'regex', 79, 1.96, 11, 'the gases of both clusters slowed down much more than the stars', 12);
INSERT INTO public.moon VALUES (7, 'exotid', 95, 2.07, 309, 'The third element in this collision, the dark matter, was detected indirectly by the gravitational lensing of background objects', 10);
INSERT INTO public.moon VALUES (8, 'intert', 27, 0.02, 312, 'The dark matter by definition does not interact electromagnetically', 4);
INSERT INTO public.moon VALUES (9, 'amud', 3, 0.38, 12, 'So during the collision, the dark matter clumps from the two clusters slide quietly past one another', 3);
INSERT INTO public.moon VALUES (10, 'erie', 6, 0.37, 3, 'The gravitational lensing stayed with the dark matter and not the gas', 5);
INSERT INTO public.moon VALUES (11, 'naton', 9, 0.52, 1, 'If hot gas was the most massive component in the clusters', 8);
INSERT INTO public.moon VALUES (12, 'setroc', 11, 3.60, 273, 'Instead, the observations appear to be the first direct proof of dark matter', 9);
INSERT INTO public.moon VALUES (13, 'iktor', 6, 2.70, 327, 'The Bullet Cluster was formed after the collision of two large clusters of galaxies', 7);
INSERT INTO public.moon VALUES (14, 'rembre', 15, 0.60, 75, 'Hot gas detected by Chandra in X-rays is seen as two pink clumps in the image', 4);
INSERT INTO public.moon VALUES (15, 'holoo', 7, 0.65, 93, 'The bullet-shaped clump on the right is the hot gas from one cluster', 9);
INSERT INTO public.moon VALUES (16, 'wilkum', 12, 5.57, 72, 'When galaxies collide, they pass through each other; their stars don’t crash into each other because of the immense distances between them', 11);
INSERT INTO public.moon VALUES (17, 'amber', 63, 0.22, 60, 'However, gravitational interactions between colliding galaxies could create new waves of star formation, supernovas and even black holes', 12);
INSERT INTO public.moon VALUES (18, 'yerta', 28, 0.93, 11, 'Collisions do distort a galaxy’s shape and computer models show that collisions between spiral galaxies can eventually make ellipticals', 2);
INSERT INTO public.moon VALUES (19, 'artal', 215, 0.72, 79, 'Four billion years from now, our own Milky Way galaxy is destined for a collision with the neighboring spiral Andromeda galaxy', 5);
INSERT INTO public.moon VALUES (20, 'omix', 27, 0.60, 23, 'The Sun will likely be flung into a new region of our galaxy, but our Earth and solar system are in no danger of being destroyed', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'osiris', 2, 0.3, 6, 'Astronomers often see irregular galaxies as they peer deeply into the universe, which is equivalent to looking back in time', 5);
INSERT INTO public.planet VALUES (2, 'dracoris', 3, 1.7, 9, 'These galaxies are abundant in the early universe, before spirals and ellipticals developed', 6);
INSERT INTO public.planet VALUES (3, 'gliese', 15, 0.5, 11, 'Aside from these three classic categories, astronomers have also identified many unusually shaped galaxies that seem to be in a transitory phase of galactic development', 3);
INSERT INTO public.planet VALUES (4, 'kepler', 12, 1.08, 6, 'These include those in the process of colliding or interacting, and those with active nuclei ejecting jets of gas', 5);
INSERT INTO public.planet VALUES (5, 'earth', 7, 0.71, 0, 'In the late 1970s, astronomer Vera Rubin made the surprising discovery of dark matter', 1);
INSERT INTO public.planet VALUES (6, 'tau', 8, 0.33, 72, 'She was studying how galaxies spin when she realized the vast spiral Andromeda Galaxy seemed to be rotating strangely', 4);
INSERT INTO public.planet VALUES (7, 'cameri', 22, 0.11, 28, 'In an apparent violation of Newton and Kepler’s Laws, the material at the galaxy’s edges was moving just as fast as the material near the center', 2);
INSERT INTO public.planet VALUES (8, 'denis', 9, 1.99, 15, 'Nearly half a century later, scientists still don’t know what dark matter is', 6);
INSERT INTO public.planet VALUES (9, 'linus', 7, 0.27, 7, 'They do know, however, that dark matter comprises some 84 percent of the universe’s material', 5);
INSERT INTO public.planet VALUES (10, 'epnot', 3, 1.01, 12, 'Its invisible and ubiquitous presence affects how stars move within galaxies, how galaxies tug on each other and how matter clumped together in the early universe', 6);
INSERT INTO public.planet VALUES (11, 'ristey', 1, 2.32, 63, 'Some of the best evidence for the existence of dark matter comes from galaxy cluster 1E 0657-556, also known as the Bullet Cluster', 3);
INSERT INTO public.planet VALUES (12, 'martic', 5, 0.90, 28, 'This cluster was formed after the collision of two large clusters of galaxies', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 173, 1.47, 8, 'Much more common are dwarf ellipticals, which are only a few thousand light-years wide', 1);
INSERT INTO public.star VALUES (2, 'canopus', 27, 0.03, 309, 'Spiral galaxies appear as flat, blue-white disks of stars, gas and dust with yellowish bulges in their centers', 5);
INSERT INTO public.star VALUES (3, 'alfa centauri', 12, 0.12, 36, 'These galaxies are divided into two groups: normal spirals and barred spirals', 2);
INSERT INTO public.star VALUES (4, 'vega', 97, 0.5, 4, 'In barred spirals, the bar of stars runs through the central bulge', 6);
INSERT INTO public.star VALUES (5, 'betelgeuse', 44, 0.75, 25, 'The arms of barred spirals usually start at the end of the bar instead of from the bulge', 4);
INSERT INTO public.star VALUES (6, 'becrux', 31, 1.09, 144, 'Spirals are actively forming stars and comprise a large fraction of all the galaxies in the local universe', 3);
INSERT INTO public.star VALUES (7, 'altair', 27, 0.34, 77, 'Irregular galaxies, which have very little dust, are neither disk-like nor elliptical', 4);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

