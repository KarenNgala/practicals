--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.17 (Ubuntu 10.17-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: application_blog; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.application_blog (
    id integer NOT NULL,
    blog text NOT NULL,
    date timestamp with time zone NOT NULL,
    userid_id integer NOT NULL
);


ALTER TABLE public.application_blog OWNER TO lalu;

--
-- Name: application_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.application_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_blog_id_seq OWNER TO lalu;

--
-- Name: application_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.application_blog_id_seq OWNED BY public.application_blog.id;


--
-- Name: application_customuser; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.application_customuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(20) NOT NULL,
    firstname character varying(20) NOT NULL,
    lastname character varying(20) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    img character varying(100)
);


ALTER TABLE public.application_customuser OWNER TO lalu;

--
-- Name: application_customuser_groups; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.application_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.application_customuser_groups OWNER TO lalu;

--
-- Name: application_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.application_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_customuser_groups_id_seq OWNER TO lalu;

--
-- Name: application_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.application_customuser_groups_id_seq OWNED BY public.application_customuser_groups.id;


--
-- Name: application_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.application_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_customuser_id_seq OWNER TO lalu;

--
-- Name: application_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.application_customuser_id_seq OWNED BY public.application_customuser.id;


--
-- Name: application_customuser_user_permissions; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.application_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.application_customuser_user_permissions OWNER TO lalu;

--
-- Name: application_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.application_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_customuser_user_permissions_id_seq OWNER TO lalu;

--
-- Name: application_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.application_customuser_user_permissions_id_seq OWNED BY public.application_customuser_user_permissions.id;


--
-- Name: application_profile; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.application_profile (
    id integer NOT NULL,
    profilename character varying(20) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.application_profile OWNER TO lalu;

--
-- Name: application_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.application_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_profile_id_seq OWNER TO lalu;

--
-- Name: application_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.application_profile_id_seq OWNED BY public.application_profile.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO lalu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO lalu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO lalu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO lalu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO lalu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO lalu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO lalu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO lalu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO lalu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO lalu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO lalu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: lalu
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO lalu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lalu
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: lalu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO lalu;

--
-- Name: application_blog id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_blog ALTER COLUMN id SET DEFAULT nextval('public.application_blog_id_seq'::regclass);


--
-- Name: application_customuser id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser ALTER COLUMN id SET DEFAULT nextval('public.application_customuser_id_seq'::regclass);


--
-- Name: application_customuser_groups id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.application_customuser_groups_id_seq'::regclass);


--
-- Name: application_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.application_customuser_user_permissions_id_seq'::regclass);


--
-- Name: application_profile id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_profile ALTER COLUMN id SET DEFAULT nextval('public.application_profile_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: application_blog; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.application_blog (id, blog, date, userid_id) FROM stdin;
1	zsxdfvgh jnklbf vczsxd hnjkmrvs czwsexrctfvghb jnkmvwd\r\n\r\ndqscfah bnjx\r\ncs gxbhnfs	2021-09-27 14:49:11.332069+03	4
\.


--
-- Data for Name: application_customuser; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.application_customuser (id, password, last_login, is_superuser, username, firstname, lastname, is_staff, is_active, date_joined, img) FROM stdin;
3	pbkdf2_sha256$216000$LwkDmDz1uqNK$CmNReQcQ0+DPss3R9jKnb19RIZ8CXqVQTlPK9Zjndco=	2021-09-27 14:35:26.133434+03	t	test			t	t	2021-09-27 14:34:55.346611+03	
5	pbkdf2_sha256$216000$8dmSppTVLyZx$N5qWPnW7FoCH9MSQl4ApHjh3/RDQGzEbb6SLk2iJ9I8=	\N	f	Linda			f	t	2021-09-27 14:43:35.249951+03	
4	pbkdf2_sha256$216000$g32s25Dg6Akr$Ks/kznua0+gpZQFEoDP/TTCYN07NaVtUOofrCs1/xFU=	\N	f	Austin	Austin	Maina	f	t	2021-09-27 14:42:55+03	avatars/The_Seven_Deadly_Sins_Nanatsu_no_TaizaiIcons_DIANE.jpeg
6	pbkdf2_sha256$216000$LLnmF9uwFuPz$RjmKsJz7j9jrfQoZ2knNdbKoFLmBTSElGK6up8BNhvo=	\N	f	George			f	f	2021-09-27 15:07:03.554014+03	
7	pbkdf2_sha256$216000$tbiBUuS6lmW8$YSPLg/VmZDxvV5KMfpTbMtdWPBRA1oiW3ucSaYXYxww=	\N	f	ninja			f	f	2021-09-27 15:09:36.314373+03	
8	pbkdf2_sha256$216000$WDPbeWkJHL0I$5wWd7ht7ZG5Cez/cD4nf6l5rDdnBMVVVqnn4pOK5QFE=	\N	f	tester			f	f	2021-09-27 15:12:49.363716+03	
9	pbkdf2_sha256$216000$pvj3Tccy6Iv3$5m2m8P07yshkBufUxJHvcM9FGqzkE5FhC8JRoWwBe5I=	\N	f	tttt			f	f	2021-09-27 15:13:47.743753+03	
10	pbkdf2_sha256$216000$AI8o7oR1BLnx$SIuwUfM9g6n0jj9PzQMCt/Bw7W9gF+5gej4KICxcRUA=	\N	f	usera			f	f	2021-09-27 15:18:30.530394+03	
11	pbkdf2_sha256$216000$J1vUhCPQ8wRx$ik5QR5gKrnHP++F1NOMwLrXoeFf4VvODcVP49aqBq80=	\N	f	trial			f	f	2021-09-27 15:19:07.164784+03	
12	pbkdf2_sha256$216000$tknxdrBLx9vL$DyQBo9SzqByAqLDOhxgdfW47NhuNNgVTGQ+M3OjTh4U=	\N	f	piper			f	f	2021-09-27 15:19:37.711451+03	
13	pbkdf2_sha256$216000$lQzYO9mvPVkz$C+B3/MoyH+X+5dBmRR7AaLwH1Io8HVAcQ0ldjoJudVM=	\N	f	pppiper			f	f	2021-09-27 15:20:48.151985+03	
14	pbkdf2_sha256$216000$FurRFaaX7rw1$VHrBf9d93srXTmfF1FtBxAmqb2h2anQ8dtvdDbb9Y7M=	\N	f	pipeeer			f	f	2021-09-27 15:21:26.457518+03	
\.


--
-- Data for Name: application_customuser_groups; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.application_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: application_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.application_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: application_profile; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.application_profile (id, profilename, user_id) FROM stdin;
1		3
3		5
2		4
4		6
5		7
6		8
7		9
8		10
9		11
10		12
11		13
12		14
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add custom user	1	add_customuser
2	Can change custom user	1	change_customuser
3	Can delete custom user	1	delete_customuser
4	Can view custom user	1	view_customuser
5	Can add profile	2	add_profile
6	Can change profile	2	change_profile
7	Can delete profile	2	delete_profile
8	Can view profile	2	view_profile
9	Can add blog	3	add_blog
10	Can change blog	3	change_blog
11	Can delete blog	3	delete_blog
12	Can view blog	3	view_blog
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-09-27 14:41:13.656584+03	1	lalu	3		1	3
2	2021-09-27 14:41:13.695429+03	2	ngala	3		1	3
3	2021-09-27 14:42:55.92357+03	4	Austin	1	[{"added": {}}]	1	3
4	2021-09-27 14:43:03.789798+03	4	Austin	2	[]	1	3
5	2021-09-27 14:43:35.69889+03	5	Linda	1	[{"added": {}}]	1	3
6	2021-09-27 14:43:38.735108+03	5	Linda	2	[]	1	3
7	2021-09-27 14:43:54.951593+03	4	Austin	2	[]	1	3
8	2021-09-27 14:46:10.170492+03	4	Austin	2	[]	1	3
9	2021-09-27 14:48:25.632394+03	4	Austin	2	[{"changed": {"fields": ["Firstname", "Lastname", "Img"]}}]	1	3
10	2021-09-27 14:49:11.336522+03	1	Blog object (1)	1	[{"added": {}}]	3	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	application	customuser
2	application	profile
3	application	blog
4	admin	logentry
5	auth	permission
6	auth	group
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-09-27 14:21:41.732917+03
2	contenttypes	0002_remove_content_type_name	2021-09-27 14:21:41.817094+03
3	auth	0001_initial	2021-09-27 14:21:42.172417+03
4	auth	0002_alter_permission_name_max_length	2021-09-27 14:21:42.707234+03
5	auth	0003_alter_user_email_max_length	2021-09-27 14:21:42.751074+03
6	auth	0004_alter_user_username_opts	2021-09-27 14:21:42.802331+03
7	auth	0005_alter_user_last_login_null	2021-09-27 14:21:42.848375+03
8	auth	0006_require_contenttypes_0002	2021-09-27 14:21:42.870276+03
9	auth	0007_alter_validators_add_error_messages	2021-09-27 14:21:42.918104+03
10	auth	0008_alter_user_username_max_length	2021-09-27 14:21:42.957189+03
11	auth	0009_alter_user_last_name_max_length	2021-09-27 14:21:42.994341+03
12	auth	0010_alter_group_name_max_length	2021-09-27 14:21:43.037588+03
13	auth	0011_update_proxy_permissions	2021-09-27 14:21:43.099608+03
14	auth	0012_alter_user_first_name_max_length	2021-09-27 14:21:43.16323+03
15	application	0001_initial	2021-09-27 14:21:43.770546+03
16	admin	0001_initial	2021-09-27 14:21:44.526148+03
17	admin	0002_logentry_remove_auto_add	2021-09-27 14:21:44.74476+03
18	admin	0003_logentry_add_action_flag_choices	2021-09-27 14:21:44.812014+03
19	sessions	0001_initial	2021-09-27 14:21:44.973483+03
20	application	0002_auto_20210927_1434	2021-09-27 14:34:23.099221+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: lalu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
990m1061acxi3tqzy53snir18g1lnek5	e30:1mUojU:JAFCAuoHMtRaR5lMVB94MyBX2Ts4Kr4L9PTlH3jy2OI	2021-10-11 14:23:40.81401+03
2vum994jhmwhczdtcc7v9dmzz25l0udf	e30:1mUon5:l-0R7CDCBddg6VVL9gtR7wz4QquDj2Eort506TbNmIM	2021-10-11 14:27:23.660463+03
090rt0zavmypenl4feicr84ubmtasp0m	e30:1mUooS:mRJjwoURpbWtChGO4bOr9-2OOyYco7W_i2McvvoZMcY	2021-10-11 14:28:48.141733+03
\.


--
-- Name: application_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.application_blog_id_seq', 1, true);


--
-- Name: application_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.application_customuser_groups_id_seq', 1, false);


--
-- Name: application_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.application_customuser_id_seq', 14, true);


--
-- Name: application_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.application_customuser_user_permissions_id_seq', 1, false);


--
-- Name: application_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.application_profile_id_seq', 12, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lalu
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: application_blog application_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_blog
    ADD CONSTRAINT application_blog_pkey PRIMARY KEY (id);


--
-- Name: application_customuser_groups application_customuser_g_customuser_id_group_id_7a4111ef_uniq; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_groups
    ADD CONSTRAINT application_customuser_g_customuser_id_group_id_7a4111ef_uniq UNIQUE (customuser_id, group_id);


--
-- Name: application_customuser_groups application_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_groups
    ADD CONSTRAINT application_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: application_customuser application_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser
    ADD CONSTRAINT application_customuser_pkey PRIMARY KEY (id);


--
-- Name: application_customuser_user_permissions application_customuser_u_customuser_id_permission_b0efc3c6_uniq; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_user_permissions
    ADD CONSTRAINT application_customuser_u_customuser_id_permission_b0efc3c6_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: application_customuser_user_permissions application_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_user_permissions
    ADD CONSTRAINT application_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: application_customuser application_customuser_username_key; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser
    ADD CONSTRAINT application_customuser_username_key UNIQUE (username);


--
-- Name: application_profile application_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_profile
    ADD CONSTRAINT application_profile_pkey PRIMARY KEY (id);


--
-- Name: application_profile application_profile_userid_id_key; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_profile
    ADD CONSTRAINT application_profile_userid_id_key UNIQUE (user_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: application_blog_userid_id_c67efdb7; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_blog_userid_id_c67efdb7 ON public.application_blog USING btree (userid_id);


--
-- Name: application_customuser_groups_customuser_id_9b8407c6; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_customuser_groups_customuser_id_9b8407c6 ON public.application_customuser_groups USING btree (customuser_id);


--
-- Name: application_customuser_groups_group_id_74f12472; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_customuser_groups_group_id_74f12472 ON public.application_customuser_groups USING btree (group_id);


--
-- Name: application_customuser_user_permissions_customuser_id_d2d491a0; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_customuser_user_permissions_customuser_id_d2d491a0 ON public.application_customuser_user_permissions USING btree (customuser_id);


--
-- Name: application_customuser_user_permissions_permission_id_2b28b67a; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_customuser_user_permissions_permission_id_2b28b67a ON public.application_customuser_user_permissions USING btree (permission_id);


--
-- Name: application_customuser_username_57dbd990_like; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX application_customuser_username_57dbd990_like ON public.application_customuser USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: lalu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: application_blog application_blog_userid_id_c67efdb7_fk_applicati; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_blog
    ADD CONSTRAINT application_blog_userid_id_c67efdb7_fk_applicati FOREIGN KEY (userid_id) REFERENCES public.application_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: application_customuser_groups application_customus_customuser_id_9b8407c6_fk_applicati; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_groups
    ADD CONSTRAINT application_customus_customuser_id_9b8407c6_fk_applicati FOREIGN KEY (customuser_id) REFERENCES public.application_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: application_customuser_user_permissions application_customus_customuser_id_d2d491a0_fk_applicati; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_user_permissions
    ADD CONSTRAINT application_customus_customuser_id_d2d491a0_fk_applicati FOREIGN KEY (customuser_id) REFERENCES public.application_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: application_customuser_groups application_customus_group_id_74f12472_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_groups
    ADD CONSTRAINT application_customus_group_id_74f12472_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: application_customuser_user_permissions application_customus_permission_id_2b28b67a_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_customuser_user_permissions
    ADD CONSTRAINT application_customus_permission_id_2b28b67a_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: application_profile application_profile_user_id_34c04f69_fk_applicati; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.application_profile
    ADD CONSTRAINT application_profile_user_id_34c04f69_fk_applicati FOREIGN KEY (user_id) REFERENCES public.application_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_application_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: lalu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_application_customuser_id FOREIGN KEY (user_id) REFERENCES public.application_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

