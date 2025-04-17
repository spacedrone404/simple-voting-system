--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17
-- Dumped by pg_dump version 15.2

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: sp808
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO sp808;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: votebase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votebase (
    id integer NOT NULL,
    id_answer integer,
    id_number integer,
    created_at timestamp with time zone
);


ALTER TABLE public.votebase OWNER TO postgres;

--
-- Name: votebase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.votebase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.votebase_id_seq OWNER TO postgres;

--
-- Name: votebase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.votebase_id_seq OWNED BY public.votebase.id;


--
-- Name: votebase id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votebase ALTER COLUMN id SET DEFAULT nextval('public.votebase_id_seq'::regclass);


--
-- Data for Name: votebase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votebase (id, id_answer, id_number, created_at) FROM stdin;
58	\N	32323	2025-04-11 13:28:11+00
59	\N	34356	2025-04-11 13:32:18+00
60	\N	676767	2025-04-11 13:33:12+00
61	3	34565	2025-04-11 13:34:08+00
62	10	565677	2025-04-11 13:34:23+00
63	5	88888888	2025-04-11 13:37:51+00
64	2	777777	2025-04-11 13:50:34+00
65	5	555555	2025-04-11 13:51:33+00
66	3	77777	2025-04-11 13:52:00+00
67	9	9999999	2025-04-11 13:52:36+00
68	3	333333	2025-04-11 13:53:00+00
69	8	4545454	2025-04-11 13:53:51+00
70	2	111111	2025-04-11 13:54:47+00
71	8	34334343	2025-04-11 13:55:19+00
72	9	67890	2025-04-11 14:09:02+00
73	8	444888	2025-04-11 14:19:31+00
74	4	4545545	2025-04-11 14:26:21+00
75	2	45454566	2025-04-11 14:26:42+00
76	4	567890	2025-04-11 14:27:25+00
77	7	456789	2025-04-11 14:28:28+00
78	2	5566778	2025-04-11 14:29:02+00
79	2	423232	2025-04-11 14:31:59+00
80	8	888888888	2025-04-11 14:32:20+00
81	8	888888888	2025-04-11 14:36:25+00
82	8	888888888	2025-04-11 14:38:56+00
\.


--
-- Name: votebase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.votebase_id_seq', 82, true);


--
-- Name: votebase votebase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votebase
    ADD CONSTRAINT votebase_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: sp808
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

