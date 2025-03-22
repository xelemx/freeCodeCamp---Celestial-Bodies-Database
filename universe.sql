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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    distance_from_earth_in_light_years integer,
    age_scale_value text,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    age numeric,
    age_scale_value text
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
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    bigger_than_earth boolean,
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
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    bigger_than_earth boolean,
    distance_from_the_sun_in_miles numeric,
    distance_scale_value text,
    number_of_moons integer,
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
    name character varying(30) NOT NULL,
    fun_fact text NOT NULL,
    bigger_than_earth boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 'Sagittarius A* is about 4 million times more massive than our Sun and is located at the center of the Milky Way.', 26, 'Thousand', 1);
INSERT INTO public.black_hole VALUES (2, 'M31*', 'M31* is one of the largest known black holes, with a mass estimated to be around 140 million times that of the Sun.', 3, 'Million', 2);
INSERT INTO public.black_hole VALUES (3, 'M33 X-7', 'M33 X-7 is one of the most massive stellar-mass black holes discovered, weighing in at about 15 times the mass of the Sun.', 3, 'Million', 3);
INSERT INTO public.black_hole VALUES (4, 'GRO J1655-40', 'GRO J1655-40 is a stellar-mass black hole that was discovered in 1994 and is known for its rapid spin and dramatic outbursts of X-rays.', 11, 'Thousand', 1);
INSERT INTO public.black_hole VALUES (5, 'NGC 5055', 'NGC 5055, also known as the Pinwheel Galaxy, houses a supermassive black hole that helps regulate star formation in its center.', 21, 'Million', 5);
INSERT INTO public.black_hole VALUES (6, 'NGC 2248', 'NGC 2248 is a supermassive black hole in the Andromeda Galaxy, located at the center of an elliptical galaxy within the M31 system.', 3, 'Million', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 'The Milky Way is home to our solar system and contains over 100 billion stars, and it''s slowly on a collision course with the Andromeda Galaxy, set to merge in about 4 billion years.', 13.6, 'Billion');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'The Andromeda Galaxy is the closest spiral galaxy to the Milky Way and contains about one trillion stars, making it the largest galaxy in the Local Group.', 10, 'Billion');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'The Triangulum Galaxy is the third-largest galaxy in the Local Group and is considered a potential satellite galaxy of the Andromeda Galaxy.', 10, 'Billion');
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf Galaxy', 'The Canis Major Overdensity is a stellar stream within the Milky Way, believed to be the remnants of a dwarf galaxy that was absorbed by the Milky Way billions of years ago.', 12, 'Billion');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'The Pinwheel Galaxy (M101) is a beautiful, face-on spiral galaxy that is roughly 21 million light-years away and has over 1,000 H II regions, which are areas of active star formation.', 10, 'Billion');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 'The Cartwheel Galaxy has a striking ring shape created by a collision with a smaller galaxy, and its unusual structure offers a glimpse into the effects of galactic collisions on galaxy formation.', 1, 'Billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 'Io is the most volcanically active body in the solar system, with over 400 active volcanoes, some of which erupt with plumes of sulfur and molten lava.', false, 5);
INSERT INTO public.moon VALUES (2, 'Europa', 'Europa''s icy surface is believed to cover a vast ocean beneath, and it is one of the most promising places to search for extraterrestrial life due to the potential for subsurface liquid water.', false, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'Ganymede is the largest moon in the solar system, even bigger than the planet Mercury, and has its own magnetic field, which is unique among moons in our solar system.', false, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Callisto is the third-largest moon of Jupiter and has the oldest and most heavily cratered surface in the solar system, suggesting it has been geologically inactive for billions of years.', false, 5);
INSERT INTO public.moon VALUES (5, 'Amalthea', 'Amalthea is one of Jupiter''s smaller moons, and its irregular shape and reddish color are thought to come from the fact that it is made mostly of water ice and silicate rock.', false, 5);
INSERT INTO public.moon VALUES (6, 'Titan', 'Titan is the second-largest moon in the solar system and the only moon known to have a thick atmosphere, which is mostly made up of nitrogen and methane, creating a hazy orange appearance.', false, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', 'Rhea is Saturn''s second-largest moon and is composed mostly of water ice. It is believed to have a thin atmosphere and some researchers think it could have a subsurface ocean.', false, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Enceladus has one of the most reflective surfaces in the solar system, covered with ice. It also ejects water vapor from its surface, indicating a subsurface ocean that could harbor life.', false, 6);
INSERT INTO public.moon VALUES (9, 'Mimas', 'Mimas is often called the "Death Star moon" because of its massive crater, Herschel, which is about one-third of the moon''s diameter, making it resemble the fictional space station.', false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Iapetus has a unique two-tone coloring, with one hemisphere being much darker than the other. This moon also has a giant ridge running along its equator, making it look like a walnut.', false, 6);
INSERT INTO public.moon VALUES (11, 'Titania', 'Titania is the largest moon of Uranus and has a surface filled with large canyons, cliffs, and valleys, suggesting past tectonic activity and possible geological history.', false, 7);
INSERT INTO public.moon VALUES (12, 'Oberon', 'Oberon is Uranus''s second-largest moon and is heavily cratered, with deep valleys. It is believed that a massive collision in the past contributed to its surface features.', false, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Umbriel is one of the darkest moons in the solar system, with a surface that is largely made up of ice and rock, and it has fewer craters than other moons of Uranus.', false, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Ariel is one of Uranus''s brightest moons and has a surface filled with valleys, ridges, and crater chains, suggesting that it may have been geologically active in the past.', false, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Miranda has one of the most unusual and diverse surfaces of any moon, with giant cliffs, ridges, and valleys that are thought to be the result of massive geological upheaval.', false, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 'Triton is the largest moon of Neptune and is unique because it has a retrograde orbit, meaning it orbits Neptune in the opposite direction to the planet’s rotation. This suggests that Triton may have been captured by Neptune’s gravity.', false, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 'Proteus is one of the largest irregular moons of Neptune and is heavily cratered. Its irregular shape and lack of an atmosphere make it stand out among Neptune''s moons.', false, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 'Nereid has one of the most eccentric orbits of any moon in the solar system, with a highly elliptical orbit that takes it from close to Neptune to far out into space.', false, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 'Larissa was discovered in 1981 and is one of Neptune''s inner moons, with a highly irregular shape and orbit. It has been thought to be a captured object from the Kuiper Belt.', false, 8);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 'Hippocamp is one of Neptune''s smallest known moons, and it was discovered in 2013. It is believed to be a fragment of a larger moon that was shattered by a collision with another object.', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury has extreme temperature fluctuations, with daytime temperatures soaring to 800°F (427°C) and nighttime temperatures dropping to -330°F (-201°C).', false, 36, 'Million', 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is often called Earth''s "sister planet" due to its similar size and composition, but its surface is incredibly hot, with temperatures hot enough to melt lead!', false, 67, 'Million', 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the only known planet to support life, with over 8 million species living across diverse ecosystems.', false, 93, 'Million', 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is known as the "Red Planet" due to its iron oxide (rust) surface, and it has the tallest volcano in the solar system, Olympus Mons, which is three times the height of Mount Everest!', false, 141, 'Million', 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the largest planet in our solar system and has a Great Red Spot, a massive storm that has been raging for at least 400 years.', true, 484, 'Million', 95, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is famous for its stunning ring system, which is made up of billions of ice and rock particles.', true, 887, 'Million', 145, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is unique because it rotates on its side, with its axis tilted by about 98 degrees relative to the plane of its orbit.', true, 1.8, 'Billiion', 27, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is known for having the strongest winds in the solar system, with speeds reaching up to 1,500 mph (2,400 km/h).', true, 2.8, 'Billion', 14, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto was once considered the ninth planet in our solar system but was reclassified as a "dwarf planet" by the International Astronomical Union in 2006 due to its small size and unusual orbit.', false, 3.7, 'Billion', 5, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Ceres is the largest object in the asteroid belt between Mars and Jupiter and is classified as a dwarf planet. It was the first dwarf planet to be visited by a spacecraft (NASA''s Dawn mission).', false, 250, 'Million', 0, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea is a dwarf planet located in the Kuiper Belt, and it has an elongated shape due to its fast rotation, completing a full spin in just about 4 hours.', false, 4, 'Billion', 1, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Makemake is a dwarf planet in the Kuiper Belt, and it was discovered in 2005. It''s one of the largest known objects in the Kuiper Belt and has a surface that is covered in methane ice.', false, 4.2, 'Billion', 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius A', 'Sirius A is the brightest star in the night sky and is twice as massive as our Sun.', true, 1);
INSERT INTO public.star VALUES (2, 'Almach', 'Almach is a binary star system with a giant orange star and a smaller companion star that create a stunning visual contrast.', true, 2);
INSERT INTO public.star VALUES (3, 'M33-VLA1', 'M33-VLA1 is a massive star in the Triangulum Galaxy that is one of the most massive and hottest stars known in the Local Group.', true, 3);
INSERT INTO public.star VALUES (4, 'Canis Majoris', 'Canis Majoris is one of the largest stars discovered and is so large that if placed in our solar system, it would extend past the orbit of Jupiter.', true, 4);
INSERT INTO public.star VALUES (5, 'The Sun', 'The Sun accounts for about 99.86% of the total mass of our entire Solar System, making it the most massive object in the system and a crucial source of energy for all life on Earth!', true, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation Orion and is one of the largest and most luminous stars visible to the naked eye; it is nearing the end of its life and could eventually explode as a supernova.', true, 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

