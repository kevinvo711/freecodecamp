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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (87, 2018, 'Final', 223, 224, 4, 2);
INSERT INTO public.games VALUES (88, 2018, 'Third Place', 225, 226, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Semi-Final', 224, 226, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Semi-Final', 223, 225, 1, 0);
INSERT INTO public.games VALUES (91, 2018, 'Quarter-Final', 224, 227, 3, 2);
INSERT INTO public.games VALUES (92, 2018, 'Quarter-Final', 226, 228, 2, 0);
INSERT INTO public.games VALUES (93, 2018, 'Quarter-Final', 225, 229, 2, 1);
INSERT INTO public.games VALUES (94, 2018, 'Quarter-Final', 223, 230, 2, 0);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 226, 231, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 228, 232, 1, 0);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 225, 233, 3, 2);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 229, 234, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Eighth-Final', 224, 235, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Eighth-Final', 227, 236, 2, 1);
INSERT INTO public.games VALUES (101, 2018, 'Eighth-Final', 230, 237, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Eighth-Final', 223, 238, 4, 3);
INSERT INTO public.games VALUES (103, 2014, 'Final', 239, 238, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Third Place', 240, 229, 3, 0);
INSERT INTO public.games VALUES (105, 2014, 'Semi-Final', 238, 240, 1, 0);
INSERT INTO public.games VALUES (106, 2014, 'Semi-Final', 239, 229, 7, 1);
INSERT INTO public.games VALUES (107, 2014, 'Quarter-Final', 240, 241, 1, 0);
INSERT INTO public.games VALUES (108, 2014, 'Quarter-Final', 238, 225, 1, 0);
INSERT INTO public.games VALUES (109, 2014, 'Quarter-Final', 229, 231, 2, 1);
INSERT INTO public.games VALUES (110, 2014, 'Quarter-Final', 239, 223, 1, 0);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 229, 242, 2, 1);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 231, 230, 2, 0);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 223, 243, 2, 0);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 239, 244, 2, 1);
INSERT INTO public.games VALUES (115, 2014, 'Eighth-Final', 240, 234, 2, 1);
INSERT INTO public.games VALUES (116, 2014, 'Eighth-Final', 241, 245, 2, 1);
INSERT INTO public.games VALUES (117, 2014, 'Eighth-Final', 238, 232, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Eighth-Final', 225, 246, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (223, 'France');
INSERT INTO public.teams VALUES (224, 'Croatia');
INSERT INTO public.teams VALUES (225, 'Belgium');
INSERT INTO public.teams VALUES (226, 'England');
INSERT INTO public.teams VALUES (227, 'Russia');
INSERT INTO public.teams VALUES (228, 'Sweden');
INSERT INTO public.teams VALUES (229, 'Brazil');
INSERT INTO public.teams VALUES (230, 'Uruguay');
INSERT INTO public.teams VALUES (231, 'Colombia');
INSERT INTO public.teams VALUES (232, 'Switzerland');
INSERT INTO public.teams VALUES (233, 'Japan');
INSERT INTO public.teams VALUES (234, 'Mexico');
INSERT INTO public.teams VALUES (235, 'Denmark');
INSERT INTO public.teams VALUES (236, 'Spain');
INSERT INTO public.teams VALUES (237, 'Portugal');
INSERT INTO public.teams VALUES (238, 'Argentina');
INSERT INTO public.teams VALUES (239, 'Germany');
INSERT INTO public.teams VALUES (240, 'Netherlands');
INSERT INTO public.teams VALUES (241, 'Costa Rica');
INSERT INTO public.teams VALUES (242, 'Chile');
INSERT INTO public.teams VALUES (243, 'Nigeria');
INSERT INTO public.teams VALUES (244, 'Algeria');
INSERT INTO public.teams VALUES (245, 'Greece');
INSERT INTO public.teams VALUES (246, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 118, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 246, true);


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

