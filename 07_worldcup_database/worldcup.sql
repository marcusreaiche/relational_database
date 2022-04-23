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
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL
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
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (65, 'Final', 98, 99, 4, 2, 2018);
INSERT INTO public.games VALUES (66, 'Third Place', 100, 101, 2, 0, 2018);
INSERT INTO public.games VALUES (67, 'Semi-Final', 99, 101, 2, 1, 2018);
INSERT INTO public.games VALUES (68, 'Semi-Final', 98, 100, 1, 0, 2018);
INSERT INTO public.games VALUES (69, 'Quarter-Final', 99, 102, 3, 2, 2018);
INSERT INTO public.games VALUES (70, 'Quarter-Final', 101, 103, 2, 0, 2018);
INSERT INTO public.games VALUES (71, 'Quarter-Final', 100, 104, 2, 1, 2018);
INSERT INTO public.games VALUES (72, 'Quarter-Final', 98, 105, 2, 0, 2018);
INSERT INTO public.games VALUES (73, 'Eighth-Final', 101, 106, 2, 1, 2018);
INSERT INTO public.games VALUES (74, 'Eighth-Final', 103, 107, 1, 0, 2018);
INSERT INTO public.games VALUES (75, 'Eighth-Final', 100, 108, 3, 2, 2018);
INSERT INTO public.games VALUES (76, 'Eighth-Final', 104, 109, 2, 0, 2018);
INSERT INTO public.games VALUES (77, 'Eighth-Final', 99, 110, 2, 1, 2018);
INSERT INTO public.games VALUES (78, 'Eighth-Final', 102, 111, 2, 1, 2018);
INSERT INTO public.games VALUES (79, 'Eighth-Final', 105, 112, 2, 1, 2018);
INSERT INTO public.games VALUES (80, 'Eighth-Final', 98, 113, 4, 3, 2018);
INSERT INTO public.games VALUES (81, 'Final', 114, 113, 1, 0, 2014);
INSERT INTO public.games VALUES (82, 'Third Place', 115, 104, 3, 0, 2014);
INSERT INTO public.games VALUES (83, 'Semi-Final', 113, 115, 1, 0, 2014);
INSERT INTO public.games VALUES (84, 'Semi-Final', 114, 104, 7, 1, 2014);
INSERT INTO public.games VALUES (85, 'Quarter-Final', 115, 116, 1, 0, 2014);
INSERT INTO public.games VALUES (86, 'Quarter-Final', 113, 100, 1, 0, 2014);
INSERT INTO public.games VALUES (87, 'Quarter-Final', 104, 106, 2, 1, 2014);
INSERT INTO public.games VALUES (88, 'Quarter-Final', 114, 98, 1, 0, 2014);
INSERT INTO public.games VALUES (89, 'Eighth-Final', 104, 117, 2, 1, 2014);
INSERT INTO public.games VALUES (90, 'Eighth-Final', 106, 105, 2, 0, 2014);
INSERT INTO public.games VALUES (91, 'Eighth-Final', 98, 118, 2, 0, 2014);
INSERT INTO public.games VALUES (92, 'Eighth-Final', 114, 119, 2, 1, 2014);
INSERT INTO public.games VALUES (93, 'Eighth-Final', 115, 109, 2, 1, 2014);
INSERT INTO public.games VALUES (94, 'Eighth-Final', 116, 120, 2, 1, 2014);
INSERT INTO public.games VALUES (95, 'Eighth-Final', 113, 107, 1, 0, 2014);
INSERT INTO public.games VALUES (96, 'Eighth-Final', 100, 121, 2, 1, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (98, 'France');
INSERT INTO public.teams VALUES (99, 'Croatia');
INSERT INTO public.teams VALUES (100, 'Belgium');
INSERT INTO public.teams VALUES (101, 'England');
INSERT INTO public.teams VALUES (102, 'Russia');
INSERT INTO public.teams VALUES (103, 'Sweden');
INSERT INTO public.teams VALUES (104, 'Brazil');
INSERT INTO public.teams VALUES (105, 'Uruguay');
INSERT INTO public.teams VALUES (106, 'Colombia');
INSERT INTO public.teams VALUES (107, 'Switzerland');
INSERT INTO public.teams VALUES (108, 'Japan');
INSERT INTO public.teams VALUES (109, 'Mexico');
INSERT INTO public.teams VALUES (110, 'Denmark');
INSERT INTO public.teams VALUES (111, 'Spain');
INSERT INTO public.teams VALUES (112, 'Portugal');
INSERT INTO public.teams VALUES (113, 'Argentina');
INSERT INTO public.teams VALUES (114, 'Germany');
INSERT INTO public.teams VALUES (115, 'Netherlands');
INSERT INTO public.teams VALUES (116, 'Costa Rica');
INSERT INTO public.teams VALUES (117, 'Chile');
INSERT INTO public.teams VALUES (118, 'Nigeria');
INSERT INTO public.teams VALUES (119, 'Algeria');
INSERT INTO public.teams VALUES (120, 'Greece');
INSERT INTO public.teams VALUES (121, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 121, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams teams_team_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_team_key UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

