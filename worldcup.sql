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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 4, 2, 29, 30, 2018, 'Final');
INSERT INTO public.games VALUES (162, 2, 0, 31, 32, 2018, 'Third Place');
INSERT INTO public.games VALUES (163, 2, 1, 30, 32, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (164, 1, 0, 29, 31, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (165, 3, 2, 30, 33, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (166, 2, 0, 32, 34, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (167, 2, 1, 31, 35, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (168, 2, 0, 29, 36, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (169, 2, 1, 32, 37, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (170, 1, 0, 34, 38, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (171, 3, 2, 31, 39, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (172, 2, 0, 35, 40, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (173, 2, 1, 30, 41, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (174, 2, 1, 33, 42, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (175, 2, 1, 36, 43, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (176, 4, 3, 29, 44, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (177, 1, 0, 45, 44, 2014, 'Final');
INSERT INTO public.games VALUES (178, 3, 0, 46, 35, 2014, 'Third Place');
INSERT INTO public.games VALUES (179, 1, 0, 44, 46, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (180, 7, 1, 45, 35, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (181, 1, 0, 46, 47, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (182, 1, 0, 44, 31, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (183, 2, 1, 35, 37, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (184, 1, 0, 45, 29, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (185, 2, 1, 35, 48, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (186, 2, 0, 37, 36, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (187, 2, 0, 29, 49, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (188, 2, 1, 45, 50, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (189, 2, 1, 46, 40, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (190, 2, 1, 47, 51, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (191, 1, 0, 44, 38, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (192, 2, 1, 31, 52, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (29, 'France');
INSERT INTO public.teams VALUES (30, 'Croatia');
INSERT INTO public.teams VALUES (31, 'Belgium');
INSERT INTO public.teams VALUES (32, 'England');
INSERT INTO public.teams VALUES (33, 'Russia');
INSERT INTO public.teams VALUES (34, 'Sweden');
INSERT INTO public.teams VALUES (35, 'Brazil');
INSERT INTO public.teams VALUES (36, 'Uruguay');
INSERT INTO public.teams VALUES (37, 'Colombia');
INSERT INTO public.teams VALUES (38, 'Switzerland');
INSERT INTO public.teams VALUES (39, 'Japan');
INSERT INTO public.teams VALUES (40, 'Mexico');
INSERT INTO public.teams VALUES (41, 'Denmark');
INSERT INTO public.teams VALUES (42, 'Spain');
INSERT INTO public.teams VALUES (43, 'Portugal');
INSERT INTO public.teams VALUES (44, 'Argentina');
INSERT INTO public.teams VALUES (45, 'Germany');
INSERT INTO public.teams VALUES (46, 'Netherlands');
INSERT INTO public.teams VALUES (47, 'Costa Rica');
INSERT INTO public.teams VALUES (48, 'Chile');
INSERT INTO public.teams VALUES (49, 'Nigeria');
INSERT INTO public.teams VALUES (50, 'Algeria');
INSERT INTO public.teams VALUES (51, 'Greece');
INSERT INTO public.teams VALUES (52, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 52, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_id2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_id2 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

