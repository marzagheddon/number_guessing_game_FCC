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
    user_id integer,
    n_guesses integer NOT NULL,
    secret integer
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
    name character varying(25)
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

INSERT INTO public.games VALUES (12, 7, 385, 386);
INSERT INTO public.games VALUES (13, 8, 830, 831);
INSERT INTO public.games VALUES (14, 7, 598, 597);
INSERT INTO public.games VALUES (15, 7, 767, 768);
INSERT INTO public.games VALUES (16, 7, 602, 603);
INSERT INTO public.games VALUES (17, 9, 9, 439);
INSERT INTO public.games VALUES (18, 10, 322, 323);
INSERT INTO public.games VALUES (19, 11, 286, 287);
INSERT INTO public.games VALUES (20, 10, 466, 465);
INSERT INTO public.games VALUES (21, 10, 456, 457);
INSERT INTO public.games VALUES (22, 10, 785, 786);
INSERT INTO public.games VALUES (23, 13, 730, 731);
INSERT INTO public.games VALUES (24, 13, 138, 139);
INSERT INTO public.games VALUES (25, 14, 942, 942);
INSERT INTO public.games VALUES (26, 14, 409, 410);
INSERT INTO public.games VALUES (27, 13, 887, 886);
INSERT INTO public.games VALUES (28, 13, 9, 8);
INSERT INTO public.games VALUES (29, 13, 91, 90);
INSERT INTO public.games VALUES (30, 15, 637, 638);
INSERT INTO public.games VALUES (31, 15, 578, 579);
INSERT INTO public.games VALUES (32, 16, 826, 827);
INSERT INTO public.games VALUES (33, 16, 753, 754);
INSERT INTO public.games VALUES (34, 15, 61, 59);
INSERT INTO public.games VALUES (35, 15, 353, 354);
INSERT INTO public.games VALUES (36, 15, 920, 920);
INSERT INTO public.games VALUES (37, 17, 161, 162);
INSERT INTO public.games VALUES (38, 17, 439, 440);
INSERT INTO public.games VALUES (39, 18, 121, 122);
INSERT INTO public.games VALUES (40, 18, 533, 534);
INSERT INTO public.games VALUES (41, 17, 511, 510);
INSERT INTO public.games VALUES (42, 17, 822, 823);
INSERT INTO public.games VALUES (43, 17, 740, 741);
INSERT INTO public.games VALUES (44, 9, 2, 760);
INSERT INTO public.games VALUES (45, 19, 763, 764);
INSERT INTO public.games VALUES (46, 19, 794, 795);
INSERT INTO public.games VALUES (47, 20, 506, 507);
INSERT INTO public.games VALUES (48, 20, 228, 229);
INSERT INTO public.games VALUES (49, 19, 808, 807);
INSERT INTO public.games VALUES (50, 19, 605, 606);
INSERT INTO public.games VALUES (51, 19, 793, 794);
INSERT INTO public.games VALUES (52, 21, 479, 480);
INSERT INTO public.games VALUES (53, 22, 535, 536);
INSERT INTO public.games VALUES (54, 21, 740, 739);
INSERT INTO public.games VALUES (55, 21, 858, 859);
INSERT INTO public.games VALUES (56, 21, 757, 758);
INSERT INTO public.games VALUES (57, 9, 2, 103);
INSERT INTO public.games VALUES (58, 23, 42, 41);
INSERT INTO public.games VALUES (59, 24, 381, 380);
INSERT INTO public.games VALUES (60, 23, 697, 694);
INSERT INTO public.games VALUES (61, 23, 286, 285);
INSERT INTO public.games VALUES (62, 23, 586, 585);
INSERT INTO public.games VALUES (63, 25, 626, 625);
INSERT INTO public.games VALUES (64, 26, 44, 43);
INSERT INTO public.games VALUES (65, 25, 695, 692);
INSERT INTO public.games VALUES (66, 25, 570, 569);
INSERT INTO public.games VALUES (67, 25, 410, 409);
INSERT INTO public.games VALUES (68, 27, 729, 728);
INSERT INTO public.games VALUES (69, 28, 844, 843);
INSERT INTO public.games VALUES (70, 27, 27, 24);
INSERT INTO public.games VALUES (71, 27, 275, 274);
INSERT INTO public.games VALUES (72, 27, 447, 446);
INSERT INTO public.games VALUES (73, 29, 993, 992);
INSERT INTO public.games VALUES (74, 30, 241, 240);
INSERT INTO public.games VALUES (75, 29, 896, 893);
INSERT INTO public.games VALUES (76, 29, 51, 50);
INSERT INTO public.games VALUES (77, 29, 263, 262);
INSERT INTO public.games VALUES (78, 31, 841, 840);
INSERT INTO public.games VALUES (79, 32, 416, 415);
INSERT INTO public.games VALUES (80, 31, 812, 809);
INSERT INTO public.games VALUES (81, 31, 636, 635);
INSERT INTO public.games VALUES (82, 31, 846, 845);
INSERT INTO public.games VALUES (83, 33, 46, 45);
INSERT INTO public.games VALUES (84, 34, 788, 787);
INSERT INTO public.games VALUES (85, 33, 810, 807);
INSERT INTO public.games VALUES (86, 33, 38, 37);
INSERT INTO public.games VALUES (87, 33, 699, 698);
INSERT INTO public.games VALUES (88, 9, 2, 976);
INSERT INTO public.games VALUES (89, 36, 786, 785);
INSERT INTO public.games VALUES (90, 36, 148, 147);
INSERT INTO public.games VALUES (91, 37, 914, 913);
INSERT INTO public.games VALUES (92, 37, 461, 460);
INSERT INTO public.games VALUES (93, 36, 102, 99);
INSERT INTO public.games VALUES (94, 36, 996, 995);
INSERT INTO public.games VALUES (95, 36, 307, 306);
INSERT INTO public.games VALUES (96, 38, 602, 601);
INSERT INTO public.games VALUES (97, 38, 986, 985);
INSERT INTO public.games VALUES (98, 39, 275, 274);
INSERT INTO public.games VALUES (99, 39, 27, 26);
INSERT INTO public.games VALUES (100, 38, 545, 542);
INSERT INTO public.games VALUES (101, 38, 21, 20);
INSERT INTO public.games VALUES (102, 38, 349, 348);
INSERT INTO public.games VALUES (103, 40, 156, 155);
INSERT INTO public.games VALUES (104, 40, 576, 575);
INSERT INTO public.games VALUES (105, 41, 256, 255);
INSERT INTO public.games VALUES (106, 41, 462, 461);
INSERT INTO public.games VALUES (107, 40, 959, 956);
INSERT INTO public.games VALUES (108, 40, 895, 894);
INSERT INTO public.games VALUES (109, 40, 466, 465);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (7, 'user_1734885683397');
INSERT INTO public.users VALUES (8, 'user_1734885683396');
INSERT INTO public.users VALUES (9, 'TONY');
INSERT INTO public.users VALUES (10, 'user_1734885865328');
INSERT INTO public.users VALUES (11, 'user_1734885865327');
INSERT INTO public.users VALUES (12, 'GIO');
INSERT INTO public.users VALUES (13, 'user_1734885973346');
INSERT INTO public.users VALUES (14, 'user_1734885973345');
INSERT INTO public.users VALUES (15, 'user_1734886225904');
INSERT INTO public.users VALUES (16, 'user_1734886225903');
INSERT INTO public.users VALUES (17, 'user_1734886263010');
INSERT INTO public.users VALUES (18, 'user_1734886263009');
INSERT INTO public.users VALUES (19, 'user_1734886406197');
INSERT INTO public.users VALUES (20, 'user_1734886406196');
INSERT INTO public.users VALUES (21, 'user_1734886491892');
INSERT INTO public.users VALUES (22, 'user_1734886491891');
INSERT INTO public.users VALUES (23, 'user_1734886772694');
INSERT INTO public.users VALUES (24, 'user_1734886772693');
INSERT INTO public.users VALUES (25, 'user_1734886787261');
INSERT INTO public.users VALUES (26, 'user_1734886787260');
INSERT INTO public.users VALUES (27, 'user_1734886843818');
INSERT INTO public.users VALUES (28, 'user_1734886843817');
INSERT INTO public.users VALUES (29, 'user_1734886888296');
INSERT INTO public.users VALUES (30, 'user_1734886888295');
INSERT INTO public.users VALUES (31, 'user_1734886898845');
INSERT INTO public.users VALUES (32, 'user_1734886898844');
INSERT INTO public.users VALUES (33, 'user_1734887003997');
INSERT INTO public.users VALUES (34, 'user_1734887003996');
INSERT INTO public.users VALUES (35, '113');
INSERT INTO public.users VALUES (36, 'user_1734887243187');
INSERT INTO public.users VALUES (37, 'user_1734887243186');
INSERT INTO public.users VALUES (38, 'user_1734887256630');
INSERT INTO public.users VALUES (39, 'user_1734887256629');
INSERT INTO public.users VALUES (40, 'user_1734887318916');
INSERT INTO public.users VALUES (41, 'user_1734887318915');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 109, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


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

