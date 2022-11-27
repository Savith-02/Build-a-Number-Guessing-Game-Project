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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    no_of_tries integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 12);
INSERT INTO public.games VALUES (2, 5, 908);
INSERT INTO public.games VALUES (3, 5, 320);
INSERT INTO public.games VALUES (4, 6, 379);
INSERT INTO public.games VALUES (5, 6, 451);
INSERT INTO public.games VALUES (6, 5, 947);
INSERT INTO public.games VALUES (7, 5, 233);
INSERT INTO public.games VALUES (8, 5, 111);
INSERT INTO public.games VALUES (9, 7, 79);
INSERT INTO public.games VALUES (10, 7, 143);
INSERT INTO public.games VALUES (11, 8, 274);
INSERT INTO public.games VALUES (12, 8, 585);
INSERT INTO public.games VALUES (13, 7, 288);
INSERT INTO public.games VALUES (14, 7, 781);
INSERT INTO public.games VALUES (15, 7, 675);
INSERT INTO public.games VALUES (16, 9, 781);
INSERT INTO public.games VALUES (17, 9, 415);
INSERT INTO public.games VALUES (18, 10, 479);
INSERT INTO public.games VALUES (19, 10, 133);
INSERT INTO public.games VALUES (20, 9, 14);
INSERT INTO public.games VALUES (21, 9, 104);
INSERT INTO public.games VALUES (22, 9, 788);
INSERT INTO public.games VALUES (23, 11, 473);
INSERT INTO public.games VALUES (24, 11, 416);
INSERT INTO public.games VALUES (25, 12, 703);
INSERT INTO public.games VALUES (26, 12, 666);
INSERT INTO public.games VALUES (27, 11, 466);
INSERT INTO public.games VALUES (28, 11, 526);
INSERT INTO public.games VALUES (29, 11, 963);
INSERT INTO public.games VALUES (30, 13, 7);
INSERT INTO public.games VALUES (31, 14, 409);
INSERT INTO public.games VALUES (32, 14, 773);
INSERT INTO public.games VALUES (33, 15, 470);
INSERT INTO public.games VALUES (34, 15, 325);
INSERT INTO public.games VALUES (35, 14, 931);
INSERT INTO public.games VALUES (36, 14, 947);
INSERT INTO public.games VALUES (37, 14, 717);
INSERT INTO public.games VALUES (38, 4, 2);
INSERT INTO public.games VALUES (39, 16, 5);
INSERT INTO public.games VALUES (40, 17, 581);
INSERT INTO public.games VALUES (41, 17, 46);
INSERT INTO public.games VALUES (42, 18, 362);
INSERT INTO public.games VALUES (43, 18, 808);
INSERT INTO public.games VALUES (44, 17, 516);
INSERT INTO public.games VALUES (45, 17, 61);
INSERT INTO public.games VALUES (46, 17, 342);
INSERT INTO public.games VALUES (47, 4, 1);
INSERT INTO public.games VALUES (48, 19, 546);
INSERT INTO public.games VALUES (49, 19, 818);
INSERT INTO public.games VALUES (50, 20, 977);
INSERT INTO public.games VALUES (51, 20, 604);
INSERT INTO public.games VALUES (52, 19, 883);
INSERT INTO public.games VALUES (53, 19, 849);
INSERT INTO public.games VALUES (54, 19, 433);
INSERT INTO public.games VALUES (55, 21, 478);
INSERT INTO public.games VALUES (56, 21, 711);
INSERT INTO public.games VALUES (57, 22, 434);
INSERT INTO public.games VALUES (58, 22, 846);
INSERT INTO public.games VALUES (59, 21, 201);
INSERT INTO public.games VALUES (60, 21, 35);
INSERT INTO public.games VALUES (61, 21, 967);
INSERT INTO public.games VALUES (62, 23, 76);
INSERT INTO public.games VALUES (63, 23, 414);
INSERT INTO public.games VALUES (64, 24, 650);
INSERT INTO public.games VALUES (65, 24, 251);
INSERT INTO public.games VALUES (66, 23, 713);
INSERT INTO public.games VALUES (67, 23, 686);
INSERT INTO public.games VALUES (68, 23, 211);
INSERT INTO public.games VALUES (69, 25, 858);
INSERT INTO public.games VALUES (70, 25, 238);
INSERT INTO public.games VALUES (71, 26, 688);
INSERT INTO public.games VALUES (72, 26, 882);
INSERT INTO public.games VALUES (73, 25, 593);
INSERT INTO public.games VALUES (74, 25, 438);
INSERT INTO public.games VALUES (75, 25, 948);
INSERT INTO public.games VALUES (76, 27, 233);
INSERT INTO public.games VALUES (77, 27, 927);
INSERT INTO public.games VALUES (78, 28, 461);
INSERT INTO public.games VALUES (79, 28, 59);
INSERT INTO public.games VALUES (80, 27, 602);
INSERT INTO public.games VALUES (81, 27, 544);
INSERT INTO public.games VALUES (82, 27, 513);
INSERT INTO public.games VALUES (83, 29, 610);
INSERT INTO public.games VALUES (84, 29, 782);
INSERT INTO public.games VALUES (85, 30, 17);
INSERT INTO public.games VALUES (86, 30, 952);
INSERT INTO public.games VALUES (87, 29, 458);
INSERT INTO public.games VALUES (88, 29, 609);
INSERT INTO public.games VALUES (89, 29, 348);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'Savith');
INSERT INTO public.users VALUES (5, 'user_1669573059948');
INSERT INTO public.users VALUES (6, 'user_1669573059947');
INSERT INTO public.users VALUES (7, 'user_1669573116554');
INSERT INTO public.users VALUES (8, 'user_1669573116553');
INSERT INTO public.users VALUES (9, 'user_1669573461663');
INSERT INTO public.users VALUES (10, 'user_1669573461662');
INSERT INTO public.users VALUES (11, 'user_1669573810853');
INSERT INTO public.users VALUES (12, 'user_1669573810852');
INSERT INTO public.users VALUES (13, 're');
INSERT INTO public.users VALUES (14, 'user_1669573914710');
INSERT INTO public.users VALUES (15, 'user_1669573914709');
INSERT INTO public.users VALUES (16, 'SA');
INSERT INTO public.users VALUES (17, 'user_1669574827534');
INSERT INTO public.users VALUES (18, 'user_1669574827533');
INSERT INTO public.users VALUES (19, 'user_1669575555708');
INSERT INTO public.users VALUES (20, 'user_1669575555707');
INSERT INTO public.users VALUES (21, 'user_1669575680342');
INSERT INTO public.users VALUES (22, 'user_1669575680341');
INSERT INTO public.users VALUES (23, 'user_1669575726476');
INSERT INTO public.users VALUES (24, 'user_1669575726475');
INSERT INTO public.users VALUES (25, 'user_1669575909967');
INSERT INTO public.users VALUES (26, 'user_1669575909966');
INSERT INTO public.users VALUES (27, 'user_1669575926075');
INSERT INTO public.users VALUES (28, 'user_1669575926074');
INSERT INTO public.users VALUES (29, 'user_1669575953170');
INSERT INTO public.users VALUES (30, 'user_1669575953169');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

