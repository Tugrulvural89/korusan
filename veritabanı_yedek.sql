--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO tugrulvural;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO tugrulvural;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO tugrulvural;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO tugrulvural;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO tugrulvural;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO tugrulvural;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO tugrulvural;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO tugrulvural;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO tugrulvural;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO tugrulvural;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO tugrulvural;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO tugrulvural;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: tugrulvural
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


ALTER TABLE public.django_admin_log OWNER TO tugrulvural;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO tugrulvural;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO tugrulvural;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO tugrulvural;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO tugrulvural;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO tugrulvural;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO tugrulvural;

--
-- Name: korsanapp_altproduct; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_altproduct (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "imageField" character varying(100) NOT NULL,
    "imageField1" character varying(100) NOT NULL,
    "imageField2" character varying(100) NOT NULL,
    "imageField3" character varying(100) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    date date NOT NULL,
    "mainProduct_id" integer NOT NULL
);


ALTER TABLE public.korsanapp_altproduct OWNER TO tugrulvural;

--
-- Name: korsanapp_altproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_altproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_altproduct_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_altproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_altproduct_id_seq OWNED BY public.korsanapp_altproduct.id;


--
-- Name: korsanapp_blogs; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_blogs (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    date timestamp with time zone NOT NULL,
    "imageField" character varying(100) NOT NULL,
    "imageField1" character varying(100) NOT NULL,
    "imageField2" character varying(100) NOT NULL,
    "imageField3" character varying(100) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.korsanapp_blogs OWNER TO tugrulvural;

--
-- Name: korsanapp_blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_blogs_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_blogs_id_seq OWNED BY public.korsanapp_blogs.id;


--
-- Name: korsanapp_contact; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_contact (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    email character varying(100) NOT NULL,
    tel character varying(100) NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.korsanapp_contact OWNER TO tugrulvural;

--
-- Name: korsanapp_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_contact_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_contact_id_seq OWNED BY public.korsanapp_contact.id;


--
-- Name: korsanapp_imagefielduplad; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_imagefielduplad (
    id integer NOT NULL,
    "imageField" character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.korsanapp_imagefielduplad OWNER TO tugrulvural;

--
-- Name: korsanapp_imagefielduplad_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_imagefielduplad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_imagefielduplad_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_imagefielduplad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_imagefielduplad_id_seq OWNED BY public.korsanapp_imagefielduplad.id;


--
-- Name: korsanapp_mailingmodel; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_mailingmodel (
    id integer NOT NULL,
    mail character varying(100) NOT NULL
);


ALTER TABLE public.korsanapp_mailingmodel OWNER TO tugrulvural;

--
-- Name: korsanapp_mailingmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_mailingmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_mailingmodel_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_mailingmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_mailingmodel_id_seq OWNED BY public.korsanapp_mailingmodel.id;


--
-- Name: korsanapp_mainteance; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_mainteance (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.korsanapp_mainteance OWNER TO tugrulvural;

--
-- Name: korsanapp_mainteance_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_mainteance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_mainteance_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_mainteance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_mainteance_id_seq OWNED BY public.korsanapp_mainteance.id;


--
-- Name: korsanapp_product; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "imageField" character varying(100),
    "imageField1" character varying(100),
    "imageField2" character varying(100),
    "imageField3" character varying(100),
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    "altGroup" boolean NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.korsanapp_product OWNER TO tugrulvural;

--
-- Name: korsanapp_product_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_product_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_product_id_seq OWNED BY public.korsanapp_product.id;


--
-- Name: korsanapp_project; Type: TABLE; Schema: public; Owner: tugrulvural
--

CREATE TABLE public.korsanapp_project (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    date timestamp with time zone NOT NULL,
    "imageField" character varying(100) NOT NULL,
    "imageField1" character varying(100) NOT NULL,
    "imageField2" character varying(100) NOT NULL,
    "imageField3" character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.korsanapp_project OWNER TO tugrulvural;

--
-- Name: korsanapp_project_id_seq; Type: SEQUENCE; Schema: public; Owner: tugrulvural
--

CREATE SEQUENCE public.korsanapp_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.korsanapp_project_id_seq OWNER TO tugrulvural;

--
-- Name: korsanapp_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tugrulvural
--

ALTER SEQUENCE public.korsanapp_project_id_seq OWNED BY public.korsanapp_project.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: korsanapp_altproduct id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_altproduct ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_altproduct_id_seq'::regclass);


--
-- Name: korsanapp_blogs id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_blogs ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_blogs_id_seq'::regclass);


--
-- Name: korsanapp_contact id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_contact ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_contact_id_seq'::regclass);


--
-- Name: korsanapp_imagefielduplad id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_imagefielduplad ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_imagefielduplad_id_seq'::regclass);


--
-- Name: korsanapp_mailingmodel id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_mailingmodel ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_mailingmodel_id_seq'::regclass);


--
-- Name: korsanapp_mainteance id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_mainteance ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_mainteance_id_seq'::regclass);


--
-- Name: korsanapp_product id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_product ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_product_id_seq'::regclass);


--
-- Name: korsanapp_project id; Type: DEFAULT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_project ALTER COLUMN id SET DEFAULT nextval('public.korsanapp_project_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add mailing model	7	add_mailingmodel
26	Can change mailing model	7	change_mailingmodel
27	Can delete mailing model	7	delete_mailingmodel
28	Can view mailing model	7	view_mailingmodel
29	Can add image field uplad	8	add_imagefielduplad
30	Can change image field uplad	8	change_imagefielduplad
31	Can delete image field uplad	8	delete_imagefielduplad
32	Can view image field uplad	8	view_imagefielduplad
33	Can add project	9	add_project
34	Can change project	9	change_project
35	Can delete project	9	delete_project
36	Can view project	9	view_project
37	Can add blogs	10	add_blogs
38	Can change blogs	10	change_blogs
39	Can delete blogs	10	delete_blogs
40	Can view blogs	10	view_blogs
41	Can add product	11	add_product
42	Can change product	11	change_product
43	Can delete product	11	delete_product
44	Can view product	11	view_product
45	Can add alt product	12	add_altproduct
46	Can change alt product	12	change_altproduct
47	Can delete alt product	12	delete_altproduct
48	Can view alt product	12	view_altproduct
49	Can add contact	13	add_contact
50	Can change contact	13	change_contact
51	Can delete contact	13	delete_contact
52	Can view contact	13	view_contact
53	Can add mainteance	14	add_mainteance
54	Can change mainteance	14	change_mainteance
55	Can delete mainteance	14	delete_mainteance
56	Can view mainteance	14	view_mainteance
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$Fx3bnjM3VLAj$H9rPbIqKo7YmmJ5zRnNtrKMMAb58Eon5WbwEyuWkQ30=	2023-10-18 16:41:07.5721+03	t	tugrulv89			tugrulv89@gmail.com	t	t	2021-03-25 16:54:54.057949+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-25 16:59:46.950362+03	1	Ahşap İşlemede Emniyet Kuralları	1	[{"added": {}}]	10	1
2	2021-03-25 17:00:22.805729+03	2	Ağaç Çeşitleri ve Kullanımı	1	[{"added": {}}]	10	1
3	2021-03-25 17:00:47.503926+03	3	Emprenye Nerelerde Kullanılır	1	[{"added": {}}]	10	1
4	2021-03-25 17:01:26.964995+03	1	mainteance	1	[{"added": {}}]	14	1
5	2021-03-25 17:02:53.117762+03	1	Korasit BSM 2	1	[{"added": {}}]	11	1
6	2021-03-25 17:03:20.380735+03	2	Korasit TP40	1	[{"added": {}}]	11	1
7	2021-03-25 17:03:51.132287+03	3	Korasit TS	1	[{"added": {}}]	11	1
8	2021-03-25 17:04:20.947135+03	4	Emprenye Kimyasalları - CX8	1	[{"added": {}}]	11	1
9	2021-03-25 17:04:48.061166+03	5	Emprenye Kimyasalları - CCB Grubu	1	[{"added": {}}]	11	1
10	2021-03-25 17:05:11.580148+03	6	F/J Laminasyon	1	[{"added": {}}]	11	1
11	2021-03-25 17:05:54.300539+03	7	Çıta ve Karkas	1	[{"added": {}}]	11	1
12	2021-03-25 17:06:32.82022+03	8	Yuvarlak Ağaç	1	[{"added": {}}]	11	1
13	2021-03-25 17:07:21.593256+03	9	Ahşap Profiller	1	[{"added": {}}]	11	1
14	2021-03-25 17:08:12.531929+03	10	Kütük Evler	1	[{"added": {}}]	11	1
15	2021-03-25 17:09:31.381427+03	11	Kütük Ev Panel	1	[{"added": {}}]	11	1
16	2021-03-25 17:11:52.424009+03	12	Yarım Kütük	1	[{"added": {}}]	11	1
17	2021-03-25 17:12:38.712493+03	13	Yalı Baskı	1	[{"added": {}}]	11	1
18	2021-03-25 17:13:18.893936+03	14	Deck	1	[{"added": {}}]	11	1
19	2021-03-25 17:13:53.865494+03	15	Tel Direği	1	[{"added": {}}]	11	1
20	2021-03-25 17:14:53.312827+03	1	Çocuk Oyun Grubu	1	[{"added": {}}]	9	1
21	2021-03-25 17:15:20.079449+03	2	Dinlenme Terası	1	[{"added": {}}]	9	1
22	2021-03-25 17:16:04.306765+03	3	Proje 12	1	[{"added": {}}]	9	1
23	2021-03-25 17:16:33.030588+03	4	Kamelya	1	[{"added": {}}]	9	1
24	2021-03-25 17:16:49.692929+03	5	Kuş Gözlem Kulesi	1	[{"added": {}}]	9	1
25	2021-03-25 17:17:22.59362+03	6	Kır Evleri	1	[{"added": {}}]	9	1
26	2021-03-25 17:17:38.953+03	7	Tam Kütük Profil Ahşap Ev	1	[{"added": {}}]	9	1
27	2021-03-25 17:17:57.499169+03	8	Lamine Profil Ahşap Ev	1	[{"added": {}}]	9	1
28	2021-03-25 17:18:14.021019+03	9	Çocuk Oyun Kulübesi	1	[{"added": {}}]	9	1
29	2021-03-25 17:18:31.594684+03	10	Ev	1	[{"added": {}}]	9	1
30	2021-03-25 17:18:50.460381+03	11	Sosyal Tesis	1	[{"added": {}}]	9	1
31	2021-03-25 17:19:06.644344+03	12	Ahşap Kalas Ev	1	[{"added": {}}]	9	1
32	2021-03-25 17:19:23.358146+03	13	Cafe	1	[{"added": {}}]	9	1
33	2021-03-25 17:19:40.413141+03	14	Satış Büfeleri	1	[{"added": {}}]	9	1
34	2021-12-23 23:05:43.039092+03	5	Emprenye Kimyasalları - CCB Grubu	2	[{"changed": {"fields": ["Description"]}}]	11	1
35	2021-12-27 04:01:50.804562+03	5	Korem CKB-P Emprenye - CCB Grubu	2	[{"changed": {"fields": ["Name"]}}]	11	1
36	2023-10-18 16:43:42.184327+03	15	Tel Direği	2	[]	11	1
37	2023-10-18 16:44:16.292098+03	16	PELET	1	[{"added": {}}]	11	1
38	2023-10-18 16:44:49.685482+03	16	PELET	2	[{"changed": {"fields": ["ImageField1"]}}]	11	1
39	2023-10-18 16:45:11.990543+03	16	PELET	2	[]	11	1
40	2023-10-18 17:08:43.254198+03	16	PELET	2	[{"changed": {"fields": ["Description"]}}]	11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	korsanapp	mailingmodel
8	korsanapp	imagefielduplad
9	korsanapp	project
10	korsanapp	blogs
11	korsanapp	product
12	korsanapp	altproduct
13	korsanapp	contact
14	korsanapp	mainteance
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-26 15:56:55.825004+03
2	auth	0001_initial	2021-01-26 15:56:56.175917+03
3	admin	0001_initial	2021-01-26 15:56:56.869758+03
4	admin	0002_logentry_remove_auto_add	2021-01-26 15:56:56.971155+03
5	admin	0003_logentry_add_action_flag_choices	2021-01-26 15:56:56.987747+03
6	contenttypes	0002_remove_content_type_name	2021-01-26 15:56:57.027578+03
7	auth	0002_alter_permission_name_max_length	2021-01-26 15:56:57.060625+03
8	auth	0003_alter_user_email_max_length	2021-01-26 15:56:57.086547+03
9	auth	0004_alter_user_username_opts	2021-01-26 15:56:57.10507+03
10	auth	0005_alter_user_last_login_null	2021-01-26 15:56:57.120846+03
11	auth	0006_require_contenttypes_0002	2021-01-26 15:56:57.129651+03
12	auth	0007_alter_validators_add_error_messages	2021-01-26 15:56:57.148075+03
13	auth	0008_alter_user_username_max_length	2021-01-26 15:56:57.201718+03
14	auth	0009_alter_user_last_name_max_length	2021-01-26 15:56:57.22765+03
15	auth	0010_alter_group_name_max_length	2021-01-26 15:56:57.244938+03
16	auth	0011_update_proxy_permissions	2021-01-26 15:56:57.26935+03
17	sessions	0001_initial	2021-01-26 15:56:57.368503+03
18	korsanapp	0001_initial	2021-01-26 16:03:44.403548+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ogh0r9eo4kvuqiwq7jg2l70lo24u04r6	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2021-04-08 16:55:13.854963+03
xn1l5mlp45uomg8hpry3hcnzao7ck3e9	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2021-05-31 02:20:56.383309+03
ueg7cyzzm67nfx49bwvwqb4pv1w4131h	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2022-01-06 23:05:27.915202+03
n63ybft1ry9668ovq0ilhpyiy3bsoefu	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2022-05-22 21:57:24.799657+03
vws930c0n51qtqtiupv3t1dpcudt04bi	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2023-10-16 18:06:15.628842+03
cnufpe3b8ymiri1qbvv9lpynmzx83lxr	MWJiMjIyYjllZWQ5MDkyNmE4ZDVjNTc4ZDE0NmJmYTc4NmVlODIyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTI2NzdjYzlkYzdkMjVkYzY3YWI4Y2ZkNjZiZWUyNzJhZGMxOWQ4In0=	2023-11-01 16:41:07.607984+03
\.


--
-- Data for Name: korsanapp_altproduct; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_altproduct (id, name, "imageField", "imageField1", "imageField2", "imageField3", description, slug, date, "mainProduct_id") FROM stdin;
\.


--
-- Data for Name: korsanapp_blogs; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_blogs (id, name, date, "imageField", "imageField1", "imageField2", "imageField3", description, slug) FROM stdin;
1	Ahşap İşlemede Emniyet Kuralları	2021-03-25 16:59:46.90395+03	upload/emniyet.png				1 – Emniyet Ekipmanlarınızı Daima Giyin\r\nEmniyet kurallarına riayet ettiğiniz sürece, ağaç işlemek emniyetli ve eğlenceli bir hobi veya meslek haline gelebilir. Kuralların tümü ortak aklın ortaya çıkardığı fikirlerdir, bununla birlikte bu kurallara uyulmaması halinde çalışırken yaralanma olasılığınız büyük ölçüde artacaktır.\r\n\r\n\r\nAhşap işleri acele edilecek ya da “bana bir şey olmaz” tavrına sahip olunacak bir uğraş değildir. Aşağıda sizin için sıraladığımız 10 kuralı alışkanlık haline getirdiğiniz takdirde ağaç işleme deneyiminiz daha emniyetli ve daha eğlenceli olacaktır.\r\n\r\nAğaç işlemenin ilk ve en önemli kuralı uygun güvenlik ekipmanına sahip olmak ve çalışırken daima giymektir. Frezeler ve elektrikli planyalar gibi çok gürültülü aletler için kulaklarınızı korumanız gerekirken, yüzey uygulamalarında lateks eldivenlere ihtiyaç duyabilirsiniz. Diğer taraftan, çalışırken emniyet gözlükleriniz daima gözlerinizde bulunmalıdır. Ahşap işlemeye başlamadan önce onları takın ve işiniz bitene kadar da çıkarmayın.\r\n\r\n2 – Uygun Kıyafetler Giyin\r\n\r\nAhşap ile çalışırken, kıyafetlerinizin herhangi bir yerinin testere bıçağına veya kesici kafaya dolanmasını istemezsiniz. Bu nedenle, çalışırken bol kıyafetler giymekten kaçının. Çalıştığınız ortama uygun ve rahat ama aynı zamanda vücudunuzu kesimden kaynaklanabilecek her türlü talaşa karşı koruyabilecek kıyafetler giyin. Çalışmaya başlamadan önce, zincir veya bileklik gibi sarkan takılarınızı çıkarmayı unutmayın.\r\n\r\n3 – Bıçak Değiştirirken Fişi Çekin\r\n\r\nElektrikli bir el aletinin bıçağını veya matkap ucunu değiştirmek istediğinizde, bıçak/matkap ucu değişimine başlamadan önce daima elektrikli aletinin fişini çekin ya da elektrik bağlantısını kesin. Bugüne kadar pek çok usta bu basit ama çok önemli kuralı unutarak parmaklarını (veya daha kötüsünü) kaybetti.\r\n\r\n4– Tek Bir Uzatma Kablosu Kullanmayı Deneyin\r\n\r\nTek bir ağır hizmet uzatma kablosu kullanın. Her bir alet için bir tane değil, toplamda bir tane kullanılmalıdır. Bu sayede, ihtiyaç duyacağınız aleti kullanmadan evvel kabloyu bir aletten diğerine geçirmek zorunda hisseder ve bir aletten diğerine geçerken fişi takmayı ve çıkarmayı hiç unutmazsınız. Böylece matkap ucu veya bıçak değiştirirken gücü kesmenin gerekliliği konusunda daha bilinçli hale gelirsiniz.\r\n\r\n5 – Keskin Bıçaklar ve Matkap Uçları Kullanın\r\n\r\nBunu söylemeye ihtiyaç yokmuş gibi görünüyor, ama keskin olmayan bir kesici alet çok tehlikeli bir araçtır. Bir testere bıçağı ideal keskinliğe sahip değil ise hem alet hem de usta istenen işi tamamlamak için çok daha fazla çalışmak zorunda kalacaktır. Bu gibi durumlarda, kullanılan aletin geri tepmesi veya tutukluk yapması olasılığı daha yüksektir. Ayrıca, daha keskin bir kesme aleti daha temiz bir kesim sağlayacaktır. Bu da emniyetin yanında ilave avantajlar anlamına gelir. Bıçağın keskin olmasını sağlayın ve aşınmalardan uzak tutun. Böylece daha emniyetli bir şekilde çalışacak ve daha iyi sonuçlar alacaksınız.\r\n\r\n6– Ahşap Üzerindeki Çivileri, Vidaları ve Diğer Metalleri Her Zaman Kontrol Edin\r\n\r\nKesime başlamadan önce her zaman kesilen ahşap üzerinde herhangi bir metal (çiviler, vidalar, zımbalar vb.) bulunup bulunmadığını kontrol edin. Çiviler ve hızlı dönen testere bıçakları bir araya geldiğinde istenmeyen sonuçlar doğurabilirler. Bu sadece kesme kafasına ve ahşaba zarar vermekle kalmaz, aynı zamanda ahşabın geri tepmesine neden olur ve bu da yaralanmalara sebebiyet verebilir. Kesmeden önce mutlaka ahşabı kontrol edin (veya daha iyisi, metal detektörü kullanın).\r\n\r\n7 – Daima Kesici Alete Karşı Çalışın\r\n\r\nAğaç işleme aletleri, ahşabın aletin içinde hareket ettiği yön (veya aletin ahşabın üzerinde hareket ettiği yön) kesme kafasının hareketinin tersi yönünde olacak şekilde tasarlanmıştır. Başka bir deyişle, bir freze ucu veya testere bıçağı harekete karşı kesim yapmalıdır, hareket doğrultusunda değil. Kesici, ahşaba karşı kesim yapmalıdır, ahşapla birlikte değil.\r\n\r\n8– Elektrik Düğmesine Asla Bir Bıçağın Üzerinden Erişmeyin\r\n\r\nTablalı testere veya gönye burun testere gibi bir aletle çalışırken, bilhassa atıkları temizlemeye veya elektriği kesmeye çalışırken, ellerinizi asla hareketli bıçağın yakınında bir yere koymayın. Bıçağın hareketi duruncaya kadar bekleyin ve sonra elektrik düğmesine erişin. Testere bıçağı durduktan sonra bile, elinizi kullanmak yerine atıkları bıçaktan uzaklaştırmak için bir parça hurda veya bir itme çubuğu kullanın.\r\n\r\nŞaltere yanlışlıkla çarpabileceğinizi veya şalterin arızalanabileceğini unutmayın. Bu nedenle bıçak durduğunda bile müteyakkız bulunun ve ellerinizi bıçağa çok yakın tutmayın.	ahsapislemedeemniyetkurallari
2	Ağaç Çeşitleri ve Kullanımı	2021-03-25 17:00:22.802586+03	upload/ceviz.png				Venge Ağacı\r\n\r\nÖzellikleri ve Kullanımı\r\nFabaceae, Millettia Laurenti familyasından olan Venge Ağacının ticari isimleri, Wenge, Bongo veya Pango’dur. Menşei Orta Afrika’dır.\r\n10-20 metre yükseklik ve 15 metre gövde uzunluğu, karşılaşılan ağaç ebatlarıdır. Kabuğu gri, gri pembe renklerdedir; koyu kahverengi damarlara sahiptir. Çikolatalı keki andıran harika bir kokusu vardır.\r\n\r\n\r\nKuru ağırlığı 870 kg/m’, yaş ağırlığı ise 1100/1200 kg/m’ olarak ölçülür. Kuruması yavaş, deformasyon riski çok azdır. Yapıştırma işlemi dikkat ister. Kesmesi ve çalışması güçtür. Çok dayanıklı bir ağaçtır. Zararlı haşerelere geçit vermez.\r\n\r\nVenge Ağacı, parke olarak, masif halde marangozluk işlerinde kaplama ve vb. iç dekorasyon malzemesi olarak kullanılır.\r\nSon yıllarda, çok aranan, temininde zorluk olan pahalı bir ürün haline gelmiştir Venge kerestesi. Zaire’deki savaştan sonra fiyatını iki katına çıkaran siyah, koyu kahverengi bu ağaç, tomruk olarak ilk kesildiğinde sarımsı bir rengi vardır; fakat birkaç gün içinde koyulaşır.\r\nLati ve Thinwin Venge’ye benzer bazı ağaçlardır.\r\n\r\nCEVİZ AĞACI\r\n\r\nCeviz Ağacı Kerestesinin Özellikleri ve Kullanımı\r\nCeviz kereste orman türlerinden değildir. Ceviz ağacı ancak belli bir bakım ile bahçede yetiştirilir. Bu ağaç, sert kereste gruplarındandır. İyi cila tutma ve kolay işlenme özelliğine sahiptir. Ayrıca damarlarının estetik görünümü ve zarif şekilleri sebebiyle oldukça değerlidir.\r\n\r\nCeviz, en fazla mobilya ve ince doğramacılık işlerinde tercih edilmektedir. Az kıymıklı olması ve esnek yapısından dolayı kolayca eğilip bükülebilmektedir. Cevizin kerestesi üzerindeki damarlar ve çatlaklara göre ayrıştırılır. Fabrikadan ilk çıktığında pürüzlü bir yapıya sahiptir. Planya tezgahlarında rende yapılarak istenilen şekle sokulur. Dünya üzerinde en kaliteli ceviz kereste Avrupa cevizinin kerestesidir. Bu ağaçların ürünleri son derece göz alıcıdır. Siyah ceviz kerestenin özgül ağırlığı, açık renk ceviz keresteye göre daha ağırdır.\r\n\r\nAçık renge sahip olan Claro Ceviz Ağacı meyve vermeyen bir türdür. Claro Cevizi ile en kaliteli ceviz olan Avrupa Ceviz kullanılarak -aşılanma yöntemi ile- yeni bir ceviz ağacı türetilmiştir. Fransız Cevizi olarak adlandırılan bu ağaç, yaklaşık 30 yıllık zaman dilimini kapsayan uzun bir süreçten sonra elde edilmiştir.\r\n\r\nCeviz, göbek odunlu ağaçlar grubuna girer. Dağınık gözenekleri olan bir yapıya sahiptir. İlkbahar mevsiminde oluşan gözenek yapısı sonbaharda oluşan gözeneklerden daha iridir. Gözenekler, başkesitte küçük öz, damar kesitte ise iğne yırtığı şeklindedir. Çok zengin damar desenleri bulunur. Bu ağaç, özellikle klasik mobilyalarda tercih edilir. Dış kabuğu sarı ve gri, göbek kısmı ise açık sütlü kahveden koyu kahveye kadar değişim gösterir.\r\n\r\nCeviz kerestesi elyaflı bir yapıya sahip olup oldukça ağırdır. Çok sağlam bir şekilde çivi ve vida tutar. Kolay yarılır ve kolay işlenir. İç mimari ve klasik mobilyada tercih edilen bu ağaç ancak usta ve tecrübeli bir elde işlenmelidir.\r\n\r\nKAYIN AĞACI\r\n\r\nYetiştiği yerler, ahşabın özellikleri ve kullanılışı\r\nKayın Ağacı, Kastamonu – Yenice, Rusya ve Ukrayna’da yetişir.\r\n\r\nYoğunluğu 680 – 720  kg/m3 civarında olan Kayın Ağacı’nda diri odun ile öz odun arasında renk farkı yoktur. Odunu kırmızımsı beyaz renkte olup, olgun odun özelliklerine sahiptir. Seksen yaşın üzerinde bazı ağaçlarda orta kısımda daha kırmızımsı kahve renginde, koyu şeritli bir öz odun oluşmaktadır.\r\n\r\nYetişme şartları ve rutubet miktarı ile ilgili olarak işlenme özellikleri değişir. El aletleri ve makinelerde işlemede orta derecede direnç gösterir. Çok iyi tornalanma özelliğine sahiptir. Buharlama ile bükülme özellikleri daha iyi hale getirilebilir. Çivileme için ön delme işlemine gerek vardır. Kolay yapıştırılır, renk verilebilir ve çok iyi cila kabul eder.\r\n\r\nDiğer yapraklı ağaçlardan daha geniş kullanım alanına sahiptir. Özellikle masif mobilya, lambri, spor aletleri, oyuncak, bobin, enstrüman, alet saplarının yapımında; tornacılıkta, kontrplak, parke, kaplama levha, fıçı sanayinde, lif ve kağıt odunu olarak, karoser yapımında, odun kömürü, odun katranı, asetik asit eldesinde ve emprenye edildiği takdirde travers yapımında kullanılır. Türkiye piyasasında bol miktarda bulunur.	agaccesitlerivekullanimi
3	Emprenye Nerelerde Kullanılır	2021-03-25 17:00:47.501907+03	upload/tanıtım_17_6L6B0If.jpg				Emprenye işlemi en basit anlatımıyla bir ahşabın içerisine kimyasalların emdirilmesidir. Bu sayede ahşap çok daha dayanıklı ve güçlü hale gelecektir. Ahşap zaman içerisinde mantar, böceklenme, kurtçuk gibi zararlı hayvanlar tarafından zarar görecek ve bu şekilde de ahşabın kullanım süresi kısalacaktır. Ahşap üreticileri bunun önüne geçebilmek için ahşaba kimyasallarla müdahale ederek ömrünü uzatırlar. Emprenye işlemi yapılırken ahşabın kullanılacağı yer ve ahşabın cinsi önemlidir. Bunun için her ahşapta bu işlemin yapılması söz konusu değildir.\r\n\r\nEmprenye Ne işe yarar?\r\nEmprenye yukarıda da belirttiğimiz üzere ağacın kimyasallarla koruma altına alınmasını sağlama işlemi bu sayede ahşabın çürümesinin de önüne geçilmiş olur. Ahşap bu şekilde her türlü hava koşullarına karşın daha dayanıklı hale gelecektir. Kesinlikle çatlama, eğilme gibi bir durumda meydana gelmez. Örneğin Ahşap çardak ve kamelyalar emperyeli kereste ile üretilirler. Bunun içinde açık mekanlarda çok uzun yıllar boyunca bozulmadan kalabilir.\r\n\r\nEmprenye Nerelerde Uygulanır?\r\nkerestenin her türlü inşaat işlerinde kullanıldığı biliniyor ve bunun yanı sıra kullanım alanı iç ve dış mekanlarda da mevcut. Bir ahşaptan çok güzel işçilik çıkarılabileceği gibi evimizde mobilyadan tutun da inşaatte keresteye kadar pek çok seçenek sizi bekliyor olacaktır. Emprenye işlemi ise her türlü inşaat işlerinde ve bu bahsettiğimiz işçiliklerde kullanılır. Bu sayede yapılan ürünün de uzun yıllar boyunca kullanılması söz konusu olacaktır. Emprenye suyla ve toprakla temas haline getirilecek olan her türlü üründe kullanılır.\r\n\r\nEmprenye Nasıl yapılır?\r\nBu işlem yapılırken üç farklı yöntem uygulanmaktadır. Bunlar fırçayla sürülerek yapılan, daldırma işlemiyle yapılan ve vakum basınç yöntemiyle yapılan. Bunları kendi aralarında da ayrıntılı bir şekilde değerlendirecek olursak şöyle diyebiliriz.\r\n\r\n Fırçayla sürerek; Emprenye yapılcak ağaç  fırçayla, ruloyla veya bezle iyice boyanarak ağacın her tarafına emprenye ilacının işlemesi sağlanır.\r\n\r\nDaldırma Yöntemi; Büyük bir kazan içine emprenye yapılacak ahşaplar dizilir. kazan ahşapların üstüne çıkacak şekilde emprenye ilacı ile doldurulur.\r\n\r\nVakum Basınç Yöntemi; Emprenye uygulanacak ahşaplar basınçlı vakum kazanına doldurulur . Vakum yapılarak ahşabın içindeki hava alınır.	emprenye
\.


--
-- Data for Name: korsanapp_contact; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_contact (id, name, email, tel, content) FROM stdin;
1	Tugrul Vural	tugrulv89@gmail.com	05468879596	mesaj
2	Mike	no-reply@digitalsy.org.uk	03.66.03.47.72	Greetings\r\n\r\nI am Mike Minix from digitalsy.org.uk\r\n\r\nYour website looks really great.\r\nBut as you may know, even if your website has the looks, doesnt worth much without being put out there for the world to see it\r\n\r\nRegarding korusan.com.tr, Our team will hand-craft a SEO strategy for your business from scratch by optimizing content, building links, and taking care of all the SEO activtieis including ranking you for the Google maps.\r\n\r\nContact us anytime\r\n\r\nMike Minix\r\nsupport@digitalsy.org.uk\r\nhttps://digitalsy.org.uk/\r\n\r\n\r\n\r\n\r\n
3	Linda	noreply@noreply.com	555-555-1212	How To Master Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000's of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn't it be?), I've got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe've become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
4	Mehmet sarısoy		05355211339	
5	Bedri Günal	bedrigunal@gmail.com	538 8258938	5,70 uzunluğunda yatay ikiye yarılmış 7 adet tel direği ihtiyacımız var\r\nKadıköy İstanbul' a sevk edilecek\r\nfiyat alabilir miyim lütfen?
6	Hakan Tekeoğlu 	hakan@fulgarturkey.com	5335904257	Merhaba 8-9 bin tane 5cm x5 Cm  1,5 metre emprenyeli kazık ihtiyacımiz var ; ceviz fidanı destek direği olarak kullanılacak ; gelecek yıl da 10 bin tane ihtiyacımız olacak 
7	Finlay	finlay@lifemailnow.com	032 896 79 31	Hello,\r\n\r\nSend unlimited emails to unlimited lists with one click and no monthly fees!\r\n\r\n$99 once off!\r\n\r\nLifeMailNow.com
8	Mur		05050850092	4cmyuvarlak30cmveya150cmyapabilirmisinizheraybumalzemeden3metrekupkullanicazararsanizsevonirim
9	Leonida	leonida@bestlocaldata.com	05961 93 04 03	Do you need clients?\r\n\r\nWe compiled some of the world's top databases for you at ridiculous low prices. $49 for any of our databases or $99 for all 16 databases!\r\n\r\nVisit BestLocalData.com\r\n\r\nRegards,\r\nLeonida
10	Refik yeğiner 	refik@helpmarine.net	5323075064	8-12 metre arası ihraç edilmek üzere 40.000 adet elk.direği ihtiyacımız vardır
11	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
12	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
129	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
282	İlhan bahadir	agacatolyemm@hotmail.com	5333341548	Merhaba ahsap karyola üreticisiyiz. Bu ahdap koruyucu dan almak istiyoruz bize yardimci olursanız mutlu oluruz.
291	Poocrinee	Poocrinee@hmaill.xyz	87534385216	5 buffer, and with the fluorescence excitation power set to 90 Ој W <a href=http://propecia.mom>propecia prescription online</a>
307	Serkan açık	serkanacikk@hotmail.com	05327072996	Arsamda Kütük ağaç ev çok güzel olacağını düşünüyorum bana yardımcı olabilirseniz sevinirim 
310	Gamze gumen	gamze.gumen.gumus@agesa.com.tr	5052520991	Kütük ev m2 fiyatlarını öğrenebilir miyim?
13	Linda	lindamillerleads@gmail.com	555-555-1212	Hi korusan.com.tr Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000's of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn't it be?), I've got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe've become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
14	alim melih kura	melihkura@gmail.com	05307633021	selam emprenyeli çam direklere ihtiyacım var\r\n10 adet 15-20 kutur 6m\r\n2 adet 15-20 kutur 8m\r\n10 adet 8-10 kutur 6m\r\nürünlerin mevcudiyeti ve fiyatlarını öğrenmek isterim lütfen mail olarak bilgi rica edeceğim.\r\nsaygılar\r\n\r\n
15	Delores	delores.northern@gmail.com	480 7302	Promote your website without cost here!: http://www3.listofsitesthatacceptfreeads.club
16	Linda	lindamillerleads@gmail.com	555-555-1212	Hi korusan.com.tr Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000's of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn't it be?), I've got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe've become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
17	uvuyeqxaif	enicaguye@obowi.jonjamail.com	88311461937	http://slkjfdf.net/ - Uqbonu <a href="http://slkjfdf.net/">Opsigawif</a> ide.hmam.korusan.com.tr.cmp.dv http://slkjfdf.net/
18	vorunoway	umeduw@obowi.jonjamail.com	88464675229	http://slkjfdf.net/ - Ubeufe <a href="http://slkjfdf.net/">Upemijos</a> yim.slrf.korusan.com.tr.ays.ru http://slkjfdf.net/
19	ateqefvodewi	yjosivex@obowi.jonjamail.com	89613388115	http://slkjfdf.net/ - Equcebe <a href="http://slkjfdf.net/">Ipuhexemi</a> qey.cojp.korusan.com.tr.rje.sg http://slkjfdf.net/
20	Yunus Emre Alkan	yunus160488@hotmail.com	05414467735	4 mayıs salı günü açıkmıyız.
21	Yunus Emre Demir 	emredemir4004@gmail.com	05442842761	Ahşap ev için ağaç kütük almak istiyorum yardımcı olursanız sevinirim
22	Margarette	margarette@sendbulkmails.com	01.89.02.45.79	Hello from SendBulkMails.com,\r\n\r\nWe have a special limited offer for you to send unlimited emails.\r\n\r\nWe allow non-permission based emails and you won't ever get blocked.\r\n\r\nWe also buy your domain for you and give you a clean IP and setup your DNS records.\r\n\r\nCheck us out on SendBulkMails.com
23	Morgan	morgan@bestlocaldata.com	0351 8078903	Hello from BestLocalData.com\r\n\r\nDue to the pandemic BestLocalData.com is shutting down on the 14th of May.\r\n\r\nWe have more than a 100 million records of Key Executives all over the world.\r\n\r\nWe hope that this Data will serve other companies to succeed in their marketing efforts.\r\n\r\nWe have reduced all the prices to next to nothing on our website BestLocalData.com\r\n\r\nWe wish you the best in your future endeavours.
24	Alisia	alisia@order-fulfillment.net	(19) 2218-8436	Hello from order-fulfillment.net,\r\n\r\nDoing your own product shipping or order fulfillment in house?\r\n\r\nTired of it? Visit us on www.order-fulfillment.net  \r\n\r\nWe can store, inventory, and manage your drop shipping / order fulfillment for you.  \r\n\r\nBased in the US for almost 2 decades - we ship around the world and will save you time and money.\r\n\r\nWho would be the best contact at your company to discuss?\r\n\r\nHere are some of the items we ship for clients:\r\n-Books, training manuals, guides\r\n-New member welcomes boxes and gifts\r\n-Product samples\r\n-Marketing materials\r\n-Medical program test kits\r\n-Follow up gifts to clients, leads, and prospects\r\n\r\nThank you!\r\nFulfillment Warehouse\r\nhttps://order-fulfillment.net
25	Breanna	breanna@fbcourses.net	04.41.46.90.08	Are you looking for the best way to market your business?\r\n\r\nFbCourses.net has the answer..\r\n\r\nNot sure where to start, or what to do?\r\n\r\nWhy not learn from the best.  All of the best.\r\n\r\nWe are offering at never before seen prices all of the top courses for one insanely low price.\r\n\r\nIf you have been thinking of how to generate more leads, website traffic or sales today is the day.\r\n\r\nAll courses are available in full with immediate download on FbCourses.net\r\n\r\nNot sure which one you like, for the next 24 hours we are offering the entire suite of courses for the lowest amount you could possible imagine.\r\n\r\nCheck us out : FbCourses.net\r\n\r\nYou could be driving new income or starting the new side hustle today!
130	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
283	İlhan bahadir	agacatolyemm@hotmail.com	5333341548	Merhaba ahsap karyola üreticisiyiz. Bu ahdap koruyucu dan almak istiyoruz bize yardimci olursanız mutlu oluruz.
292	A Guvener	guveneraykut@gmail.com	05326794770	İyi günler,\r\nBen Aykut Güvener, Çatalçam Bayramiç’te bulunan arsamıza 75m2 oturumlu iki katlı 3+1 ahşap ev yapmak istiyoruz bu konuda sizinle görüşmek istiyoruz, müsait olduğunuzda aramanızı rica eder iyi çalışmalar dileriz.
308	Serkan açık	serkanacikk@hotmail.com	05327072996	Arsamda Kütük ağaç ev çok güzel olacağını düşünüyorum bana yardımcı olabilirseniz sevinirim 
26	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
27	Goncagul 	goncagul508@gmail.com	05454025886	Iki adet balkona pergola yapımı için kurtboğazı teknikle çivisiz yada ahşap çiviyle bir proje düşünüyorum. Izmirde bayii ve montaj var mı teşekkür ekonomik cam silinmiş kereste tercihim 
28	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
29	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
30	Şerif Özçoban	s.ozcoban@kratosmuhendislik.com	05332562382	Yurt dışı projemiz için tahta direk ihtiyacımız var. Teklif alabilmek adına sizden dönüş bekliyoruz.
31	Mario	edgardo.fiedler@hotmail.com	06-18489782	Hello\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n
32	Louann	8iraqtoota@contactare.com	936-493-9421	Before you spend another penny on advertising, do this first: http://bit.ly/list-your-site-free-here
33	Anne	anne@bestlocaldata.com	031 738 16 32	We at BestLocalData.com has been hit badly by Covid-19 and as a result BestLocalData.com is shutting down.\r\n\r\nWe provided the best data to companies to find their right customer base, we don't want other companies to go down the same path we went and go out of business.\r\n\r\nAs a result we are providing our data till the end of the week at the lowest possible prices. \r\n\r\nBestLocalData.com
34	Cyril	cyril@order-fulfillment.net	0365 6951029	Hello from order-fulfillment.net,\r\n\r\nDoing your own product shipping or order fulfillment in house?\r\n\r\nTired of it? Visit us on www.order-fulfillment.net  \r\n\r\nWe can store, inventory, and manage your drop shipping / order fulfillment for you.  \r\n\r\nBased in the US for almost 2 decades - we ship around the world and will save you time and money.\r\n\r\nWho would be the best contact at your company to discuss?\r\n\r\nHere are some of the items we ship for clients:\r\n-Books, training manuals, guides\r\n-New member welcomes boxes and gifts\r\n-Product samples\r\n-Marketing materials\r\n-Medical program test kits\r\n-Follow up gifts to clients, leads, and prospects\r\n\r\nThank you!\r\nFulfillment Warehouse\r\nhttps://order-fulfillment.net
131	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
284	Gökhan Gök	gk.gokhan21@gmail.com	5323649944	Merhaba\r\nYapmayı planladığım taş ev için yaklaşık 20 adet 8-12 mt min 20 cm çap direk ihtiyacım var Köyceğiz teslimi fiyat verirmisiniz
293	Mark	ulmer.mark@gmail.com		Hey, want business data for your company?\r\n\r\nUnlimited Searches of over 14 billion B2B records\r\n\r\nLeadsBox.biz
311	Gamze gumen	gamze.gumen.gumus@agesa.com.tr	5052520991	Kütük ev m2 fiyatlarını öğrenebilir miyim?
35	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
36	May	may@fbcourses.net	217-903-4696	Hello from FbCourses.net\r\n\r\nWant to pay $0.01 a click? We got you covered.\r\n\r\nA great team of Global Digital Marketing experts have compiled this list of 13 Best + Free Facebook Advertising Training, Classes and Courses to help you learn and excel at Facebook Ads & Marketing. \r\n\r\nThousands of professionals have already benefited from this list on Facebook Training.\r\n\r\nRegards,\r\nMay
37	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
38	Ayhan doğan		05324205922	
39	Nelly	nelly@bestlocaldata.com	BestLocalData.com	It is with sad regret to inform you that because of the Covid pandemic BestLocalData.com is shutting down at the end of the month.\r\n\r\nWe have lost family members and colleagues and have decided to shut down BestLocalData.com\r\n\r\nIt was a pleasure serving you all these years. We have made all our databases available for $99 (All of it for $99) for those interested.\r\n\r\nKind Regards,\r\nBestLocalData.com\r\nNelly
40	Garfield	garfield@order-fulfillment.net	order-fulfillment.net	Hi , \r\n\r\nI am following up on my message below.\r\n\r\nWho would I speak with about handling your US order fulfillment and shipping?\r\n\r\nRegards,\r\nGarfield\r\norder-fulfillment.net\r\n\r\n------------------------------------------------------------------------\r\n\r\nHi,\r\n\r\nWho would I speak with at your company that manages your product shipping and order fulfillment?\r\n\r\nWe are US company, offering warehousing, order fulfillment and drop shipping to our customers since 2005.\r\n\r\nHere are some of the items we ship for clients:\r\n\r\n        -Books, training manuals, guides\r\n        -E-com product drop shipping\r\n        -New member welcomes boxes and gifts\r\n        -Product samples\r\n        -Health and Medical supplements\r\n        -Marketing materials\r\n        -Medical program test kits\r\n        -Follow up gifts to clients, leads, and prospects\r\n\r\nDo you have some time to discuss - phone / email ?\r\n\r\nThanks,\r\n\r\nFulfillment Specialist\r\nwww.Order-Fulfillment.net
41	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
42	ÖZER YÜCEDAĞ	emiryabgu@autlook.com	05325466021	bahçem için kamalye düşünüyorum. Nazilli Devlet Hastanesi İçin kamelye yapmışsınız çok beğendim. \r\ndiğer örnekleriniz için konuşmak isterim.
43	Serkan Kaya	kayaserkan2008@gmail.com	00966506457114  	Sn Ilgili,\r\nLibya Tripoliye gonderilmek uzere 7 metre ve 9 metre boylarinda elektirik ahsap dikerlerinden istenmektedir , 7 ve 9 metre den 5 biner adet toplamda 10 bin adet olacaktir ,.. \r\nBu konu ile ilgili acil bir sekilde fiyat vermeniz rica olunur ( Ingilizce olarak) Mr. Faraj Zayed adina duzenlenecektir,.\r\n\r\nSizden gelecek cevabinizi bekliyuruz,..\r\n\r\nSaygilar  
44	Mehmet Okan Emiroğlu	kgbokan@gmail.com	+905319803060	İyi günler 6 mt boyunda 16 veya 18 cm çapında empirye görmüş direk fiyatı alabilirmiyim ?  Teşekürler 
132	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
45	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
46	iDRİS SARIKAYA	idris.sarikaya@fares-mena.com	05531726002	Libya'da kullanılmak üzere 9 -10 metre boyunda orta hizmet tipi emprenyeli elektrik direkleri alacağız. Fiyat teklifinizi beklerim.  
47	Mehmet Kalender	mhtm.kalender27@gmaii.com	05320516745	Yuvarlak direk lazım acil dönüş yaparsanız sevinirim 
48	Akif YILMAZ	akifyilmaz16@gmail.com	5054154307	Bahçe düzüenlemesi için ağac direk 18 cm 100 ad Fiatı nedir acaba bir de boyları kaç mt dir
49	Maxie	maxie@sundatagroup.one	06-96214271	Hello.\r\n\r\nNeed leads for your business? We have a limited offer where we sell almost 400 million executives around the world in 165 countries for $299.\r\n\r\nOr you can buy your country individually for $99.\r\n\r\nwww.SunDataGroup.one
50	Emre gökoğlu 	gokogluemre@gmail.com	05549490847	Tali baskı  dış cephe için en geniş ölçüde olan ahşap malzemenin m2 fiyatını mail olarak alabilirmiyim
51	Bennett	bennett@sundatagroup.one	428 9432	We have an amazing database of leads for you.\r\n\r\nAll countries are $99 and you can buy the entire world 165 countries for $179.\r\n\r\nThis offer is valid till Friday.\r\n\r\nwww.SunDataGroup.one
52	William	5ferradj@codk.site	306-655-6016	I think that nobody should have to pay for advertising online any more these days which is why I put together this list of places where you can advertise completely free! Check it out:   https://ai6.net/zXWblo
53	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
54	Mehmet Muhtar Gücüm	m@joanieanme.co.uk	905333797934	Merhaba,\r\nKırklareli’nde bulunan arazimde kullanmak için 10cm çap 2m boyunda emprenyeli bağ direği arıyorum.\r\nElinizde mevcut mu?\r\nFiyat paylaşabilir misiniz?\r\n\r\nTeşekkür ederim
55	Gökhan kıdık 	gokhan.kidik@gmail.com	5356098936	Merhabalar 3*3 9m2 2.80 yükseklikte 5 adet büfe birbirine bitişik şekilde düşüncem var nasıl bir çalışma izleyebiliriz.
56	Erwin	erwin@sundatagroup.com	(61) 5021-3665	Hello from SunDataGroup.com\r\n\r\nWe are selling leads from around the world. I thought your company could benefit from it.\r\n\r\nYou can visit our website www.SunDataGroup.com to see some of our data.\r\n\r\nWe have a special offer running. All our databases for $99.
57	Mustafa	mustafabaric744@gmail.com	05071612363	Kırk adet 6metre boyunda 16cm çapında 30adet ağaç direk fiyatı ne kadar.
58	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
133	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
285	KARDEŞ TANSEL	tans67@hotmail.com	05322426199	Zonguldak Merkez'de imalatı devam eden taş duvar arası korkuluk olarak kullanmak için 12-14 cm çapında emprenye yuvarlak tomruk ihtiyacım var. fiyat teklifi için irtibata geçerseniz sevinirim.
59	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=korusan.com.tr\r\n
60	İSMAİL BAHADIR ÜVER	bahadiruver@hotmail.com	05424777378	1000 lt. Korasit TS almak istiyorum
61	ixejjiwunotbi	odunuuf@egiuz.fodiscomail.com	82242153722	<a href=http://slkjfdf.net/>Sohixiwu</a> <a href="http://slkjfdf.net/">Oyxowo</a> ugo.daec.korusan.com.tr.xig.de http://slkjfdf.net/
62	opusogoelez	owufirat@pazew.fodiscomail.com	81586681242	<a href=http://slkjfdf.net/>Ejozotun</a> <a href="http://slkjfdf.net/">Ieosamzo</a> lxj.wfky.korusan.com.tr.lgj.nd http://slkjfdf.net/
63	eibiyoriawaxi	itavnuy@pazew.fodiscomail.com	84536754561	<a href=http://slkjfdf.net/>Isuzosux</a> <a href="http://slkjfdf.net/">Uvimodibi</a> qbd.wxaq.korusan.com.tr.oos.nb http://slkjfdf.net/
64	Ahmet ÖZTÜRK 	efsanemaros151@gmail.com	5415219205	Ceviz tomrugu vermek istiyorum 
65	Metin YANAL	vakit-09-28@hotmail.com	05462239323	Yalı baskı m2 fiyatı ne kadar. 150 m2 lazım
66	Brodie	5mouafa@polostar.me	(08) 8711 1609	Automatic ad submission to thousands of ad sites every month. Submit your ad now: https://ai6.net/VbFGug
67	Hamza Yıldırım 	hamza800@gmail.com	05435845252	10 cm çapında emprenyeli kütük ile ilgili bilgi verirmisiniz fiyat ile ilgili
68	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
69	Mohamed Elhacen HAIMEDA 	ouldbeddy@yahoo.fr	+22233499998	Merhabalar kolay gelsin \r\nMoritanya pazarı için ağaç elektrik direkleri istiyoruz .. ekteki resimde özellikler belirtilmiştir  tercüme etmeye çalıştım \r\n\r\n\r\n9m / S140\r\nStandart: NFC 67100\r\nAğaç türü: Sarıçam perforasyonu\r\nÇap / uç cm sonu:\r\nYaklaşık 14 - çap / 1m Kütle cm cinsinden cm: çevre\r\n\r\nAlım hedefimiz aylik 3 konteyner\r\n\r\n\r\nTurmor Marketing Foreign Trade SARL \r\nMohamed Elhacen HAIMEDA \r\nNouakchott / Mauritania \r\nTel/ whatsapp  : +22233499998 \r\n
70	Emre üzer	emreuzer12@gmail.com	05322814739	6bucuk yada 7 metrede olabilir 16 çap ve üstü olabilr 30 adet yuvarlak direk lazım ikici elde olabilir sifirda fiyat almak istiyorum
71	Emre üzer	emreuzer12@gmail.com	05322814739	6bucuk yada 7 metrede olabilir 16 çap ve üstü olabilr 30 adet yuvarlak direk lazım ikici elde olabilir sifirda fiyat almak istiyorum
72	Onurbastem		5539227575	Merhaba elinizde ağaç kabuğu mevcut mu ?
73	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
134	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
286	hakan  AŞIK	hakan@stopgayrimenkul.com	05422428758	Merhaba iyi günler 18 santimlik 2+1 bir kütük ev fiyatı isteyecektim sizden \r\nMuğla Fethiye'de yaşıyoruz burada bir arazimiz var Oraya yaptırmak istiyoruz
312	Savaş obur	savasobut202@gmail.com	05325910249	
74	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=korusan.com.tr\r\n
75	Cengiz Akdemir		05327175328	Fiyatı alacağım teoloji direği fiyatı
76	Tansusaglam1	tansusaglam1@gmail.com	05456600400	Isparta Eğirdir iscesinden Tansu sağlam ben elma bahçesinde kullanmak için  4m uzunlukta 6 veya 8 cm kalınlıkta ağaç direk lazım bana ilgilenirseniz sevinirim 
77	Tansusaglam1	tansusaglam1@gmail.com	05456600400	Isparta Eğirdir iscesinden Tansu sağlam ben elma bahçesinde kullanmak için  4m uzunlukta 6 veya 8 cm kalınlıkta ağaç direk lazım bana ilgilenirseniz sevinirim 
78	Erol akdogan	sinanakdogan54@gmail.com	542 256 10 96	Merhaba, sakaryadan yaziyorum. Elimizde asili ve asisiz cesitli ebatlarda ham ceviz agaci bulunmaktadir. Satmak istiyoruz. Ilgileniyormusunuz.\r\nTesekkurler\r\n
79	amir jugo	timcompany.brcko@gmail.com	+38766694426	Dear,\r\nI am interested in electric wooden poles, diameter 14-16cm, height 8m-120pieces, 9m-450pieces, 10m-150pieces 11m-60pieces\r\nprotection of ecological oil class c according to standard din 68811\r\nAMIR JUGO BRCKO ,BOSNA I HERCEGOVINA.
80	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
81	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
82	Mahmut AKBAŞ	mahmutakbas40@gmail.com	5425932982	
83	Mahmut AKBAŞ	mahmutakbas40@gmail.com	5425932982	
84	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
313	Savaş obur	savasobut202@gmail.com	05325910249	
85	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
86	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
87	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
88	İBRAHİM ERDOĞAN	erdogan.1997@hotmail.com	05301484099	Merhabalar değerli KORUSAN KERESTE SANAYİ lojistik grubu,biz Tekirdağ’da lojistik ve ticari araç satış hizmeti vermekteyiz.Ticari araç konusunda 2.el araçlarınızı satmayı düşündüğünüz vakit  sizlerle çalışmak istiyoruz.Eğer ticari araç(kamyon-tır)satarken bize mail yoluyla veya telefonumuzu arayarak bilgi verirseniz çok memnun oluruz.2el konusunda sizlerle çalışmaktan mutluluk duyarız .Teşekkür eder,iyi çalışmalar dileriz. \r\n \r\nSevgilerimizle \r\n \r\nİbrahim ERDOĞAN \r\nErdoğan Motorlu Araçlar  \r\n0530 148 4099 \r\n\r\n
89	İBRAHİM ERDOĞAN	erdogan.1997@hotmail.com	05301484099	Merhabalar değerli KORUSAN KERESTE SANAYİ lojistik grubu,biz Tekirdağ’da lojistik ve ticari araç satış hizmeti vermekteyiz.Ticari araç konusunda 2.el araçlarınızı satmayı düşündüğünüz vakit  sizlerle çalışmak istiyoruz.Eğer ticari araç(kamyon-tır)satarken bize mail yoluyla veya telefonumuzu arayarak bilgi verirseniz çok memnun oluruz.2el konusunda sizlerle çalışmaktan mutluluk duyarız .Teşekkür eder,iyi çalışmalar dileriz. \r\n \r\nSevgilerimizle \r\n \r\nİbrahim ERDOĞAN \r\nErdoğan Motorlu Araçlar  \r\n0530 148 4099 \r\n\r\n
135	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
294	İlhan bahadir	agacatolyemm@hotmail.com	5333341548	Merhabalar, korasit tp 40 ürünümüzden almak istiyorum. 20 adet 25 lt sizden tedarik etmem mümkünmüdür  . İyi çalışmalar dilerim
314	Savaş obur	savasobut202@gmail.com	05325910249	Fiyat almak istiyorum 
316	Çağlar husan	husancaglar@gmail.com	5327301820	Merhaba,\r\nVeranda yapımı için\r\n10 adet 10*10\r\n10 adet 5*10\r\nVe 25 metrekare için\r\nVeranda lambiri almak istiyorum.\r\nTümümün emperyeli ve silinmiş\r\nOlması gerekiyor.\r\nYerim akçakocada.\r\nFiyat vermeniz mümkün mü?\r\nTeşekkürler
90	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
91	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
92	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
93	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
136	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
295	Libby	libbyevans461@gmail.com	079 0903 1749	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 300-1000+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nLibby
315	Savaş obur	savasobut202@gmail.com	05325910249	Fiyat almak istiyorum 
317	Mesut ÇINAR 	mesutcinar18@hotmail.com	5358106426	Selamünaleyküm hayırlı işler kolay gelsin 80 metrekarelik bir aksap ev yaptırmak veya dsde malzemesini almak istersem ne tavsiye edersiniz kaç paraya mal olur bahçe evi teşekkür ediyorum 
94	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
95	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
96	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
97	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
137	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
296	Fatih Cem Yörük	fatihcem33@gmail.com	05323215818	Fiyatlarınız nedir? Tekirdağ/Şarköy için en yakın teslim noktanız neresidir? 
318	PINAR ZEYBEK 	pinarzeybek34@gmail.com	05333035775	Kütük ev hakkinda Fiat almak istiyorum 
98	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
99	Ahmet korkmaz		5375728289	Fiyat 
100	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
101	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
102	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
138	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
297	Hasan ILBIRA 	dokuz0910@gmail.com	05325453086	8 cm kuturunda ,200 cm lik ,ucu açılmamış yuvarlak herek lazım
319	PINAR ZEYBEK 	pinarzeybek34@gmail.com	05333035775	Kütük ev hakkinda Fiat almak istiyorum 
103	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
104	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
105	Levent Altıntaş 	leventt.altintas@gmail.com	5325986081	20 adet 6-7 metrelik direk almak istiyorum nasıl temin edebilirim? Bu konu ile ilgili beni yonlendirebilirmisiniz? Sakarya /Adapazarı ikamet ediyorum
106	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
107	Alatupe	Alatupe@supmail.xyz	86645952146	anterior chamber Jawcpu https://oscialipop.com - cheapest cialis online Ctrzbb Ujnwjw Prix Levitra En Pharmacie <a href=https://oscialipop.com>Cialis</a> https://oscialipop.com - best cialis online Amoxicillin Antibiotics Weil Lzoclr
108	Isoguegob	Isoguegob@abdiell.xyz	84132594767	Lasix Poland Sntrka https://oscialipop.com - Cialis Propecia Finasterid <a href=https://oscialipop.com>buying generic cialis online safe</a> https://oscialipop.com - cialis pills for sale Xynyhu cialis online lloyds
109	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
110	Sedat Darcan 	sdtdrcn76@hotmail.com	05422039564	6/7/8 /9 ve 10 boy emprenyeli direk fiyatlarınız nedir 
320	Hasan AKYÜZ 	hsnakyz1975@hotmail.com	05072568362	Bu ürünlerle seyyar ev yapımı hakkında bilgi almak istiyorum 
111	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
112	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
113	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
114	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
159	Akif ANTEP	akifantep64@gmail.com	0505 629 93 69	                                                                                    Metin bey merhaba,\r\n                                                                     KAMELYA\tİÇİN KERESTE ÖLÇÜLERİ\r\n\t\t\t\t\t\r\n20 X 20\t\t                              ADET\tUZUNLUK/METRE\t\tTOPLAM (METRE)\t\r\nVEYA\tÖN\t                                  2\t                      2\t\t                               4\t\r\n15 X 15\tORTA\t                          2\t                      2,5\t\t                               5\t\r\n\t       ARKA\t                          2\t                      3\t\t                               6\t\r\n\t\t\t\t\t\t\r\n12 X 12\t\t                              ADET\tUZUNLUK/METRE\t\tTOPLAM (METRE)\t\r\nÜST (ÖN+ORTA+ARKA)\t\t3\t                       4\t\t                              12\t\r\n\tYANLAR                           \t4 \t                       3 \t\t                              12\t\r\n\t\t\t\t\t\t\r\n5 X 10\t\t                            ADET\t          UZUNLUK/METRE\t\tTOPLAM (METRE)\t\r\nÜST (12'liklerin arasına)\t\t4\t                       4\t\t                               16\t\r\n\r\nAyrıca elinizde hazır olarak ahşap travers bulunur mu?\r\nBU ÖLÇÜLERDE FİYAT VERMENİZİ RİCA EDİYORUM.\r\nİyi günler dileklerimle...
321	Sait 	saitmutlu63@gmail.com	5321386744	Ahşap ev yapmak istiyorum fiyat ve model isterim 
115	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
116	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
117	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
118	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
195	Kaylene	kaylene@getlisted.directory	800-946-0995	Hello, did you know that there are 241,120 internet directories in the world. \r\n\r\nThese websites are what drive traffic to YOUR business.\r\n\r\nWant more traffic?  Want more Sales?  We can help - today.\r\n\r\nYour website korusan.com.tr is listed in only 66 of these directories. \r\n\r\nGet more traffic for your North Cyprus (unrecognised, self-declared state) audience.\r\n\r\nOur automated system adds your website to all of the directories.\r\n\r\nYou can find it here: getlisted.directory/korusan.com.tr\r\n\r\nAct today, and we will expedite your listings and waive the processing charge!\r\n\r\nWe have a special going on. Use "FRIENDS" on checkout for a 50% discount valid today.
298	Leora	stodart.leora61@googlemail.com	843-766-9418	Hello,\r\n\r\nWe are a bulk email service. \r\n\r\nWe have very large email lists and can filter it out to your specific industry that you require.\r\n\r\nHere are our rates for sending:\r\n\r\n100k Emails - $100\r\n250k Emails - $200\r\n500k Emails - $350\r\n1mil Emails - $500\r\n\r\nCome chat to us here:\r\n\r\nhttps://tawk.to/chat/62d1331b7b967b117999a948/1g80iva0c\r\n\r\n*Using our email list will affect the price.
119	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithwebtraffic.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
120	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
121	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
122	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
123	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
124	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
125	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
126	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
127	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
128	oumar kane	donaritamauritania@gmail.com	+22246481726	Je veux acheter des poteaux électrique pour la Mauritanie \r\nJe veux avoir les prix .\r\nPoteaux de 9 mètre \r\nPoteaux de 11 metre
139	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
140	Adem ACAR	adem.acar2009@gmail.com	05334191709	Merhaba ,\r\nBen Banka Emeklisiyim . Zonguldak Devrek ' te hobi bahçeciliği yapmaya çalışıyorum. Diktiğim fidanlar için yuvarlak "FİDAN DESTEK " kazığı arayışı içindeyim.Kazık Ağaçlar Yeşil Boyalı ( Kırmızıveya ağaç rengi de olabilir)) olabilir. Devrek ' e nakliye bilgileri nelerdir. Talep Elli Adet Uzzunluk 1,80 -2 Metre olabilir. \r\nİkinci konu da İkinci el yine yeşil kullanılmış direk arayısım var. Bu drekleri veranda için alt destek elemanı olarak kullanım düşüncesindeyim. İkivi el direk on adet talep edilmektedir. \r\nSon olarak kullanılmış palet -elektrik teli makarası (Dekor amaçlı kullanıım için) arayısım da bulunmaktadır. (Kullanımış palet 12 adet gibi) \r\nÜrün (Görseli ile birlikte)  - Nakliyat - Fiyat Bilgilerini "adem.acar2009@gmail.com"  veya 05334191709 WhatSapp uygulamasına göndermenizi rica ederiz. Yine ödeme konusunda Peşin taksitli konusunda da bilgi talebim vardır. 
141	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
142	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, my name is Eric and I’m betting you’d like your website korusan.com.tr to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at korusan.com.tr.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
143	Shobey Andrey	ecoles-ltd@yandex.com	89152339820	Dear Sir,\r\n\r\nLet me present our sawmill in Russia, Urals. We have own forests in Siberia with excellent coniferous wood and larch. We can produce and offer you high quality timber, wide range: from logs to glulam.\r\n\r\nwe have possibilities also for oak, ash,beech and birch timber\r\n \r\nAdvise please your needs and we will make a very good offer for you\r\n-- \r\nBest regards,\r\nAndrey Shobey\r\nECOLES LTD\r\nFSC n FC-COC-643310
144	floutty	floutty@abdulah.xyz	83462431922	order cialis online dream pharmaceutical https://bestadalafil.com/ - Cialis Gejncj Motilium Drug <a href="https://bestadalafil.com/">where to buy cialis online</a> If there is uncertainty in diagnosis treat for acute bacterial meningitis. https://bestadalafil.com/ - Cialis cialis twice weekly
207	VAHİT AKTAŞ 	grup3_gayrimenkul@hotmail.com	533 227 91 25	Slm ben vahit aktaş GRUP3GAYRIMENKUL yetkilisi degerli yetkililer elimde beykoz isaklida 3.köprüye komşu satilik5600m2 depolamaya uygun yatırımlık müstakil arazi var ılgilenirmisiniz metre satış bedeli 3.500tl pazarlık payı var ıyi çalışmalar bol ve bereketli günler dilerim Vahit aktaş GRUP3GAYRIMENKUL yetkilisi 0533 227 91 25
299	GEXgyR	BreendDef@fmaill.xyz	82872935658	Emptying your bladder often will flush the tracer from your system <a href=https://cialisa.buzz>cialis 5mg</a> The analysis of cell cycle progression indicated that 25 ОјM Gli produces an arrest in the G0 G1 phase of cell cycle after 48 h of treatment
322	HjjJhP	BreendDef@fmaill.xyz	89657646414	Monitor Closely 1 levothyroxine decreases effects of insulin degludec by pharmacodynamic antagonism <a href=https://viagr.sbs>is it safe to take 200 mg of viagra</a>
145	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
146	Fundece	Fundece@mktmail.xyz	83158923236	https://bestadalafil.com/ - cheap cialis online canadian pharmacy Viagra Marocain Plante Medicinale cialis water retention <a href="https://bestadalafil.com/">Cialis</a> Penetration of antimicrobial agents into the prostate. Pjtkyu https://bestadalafil.com/ - buy cialis online us Ylslpk
147	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
148	angeday	angeday@abdiell.xyz	85359563677	Ifsbld https://bestadalafil.com/ - cheap cialis no prescription Cialis Rezeptfrei Nl <a href="https://bestadalafil.com/">buy cialis 5mg daily use</a> Onahod Synthroid For Sale Online https://bestadalafil.com/ - Cialis Ujpfmv Propecia In Zurigo
149	Amoclor	Amoclor@supmail.xyz	89653412963	Acheter Xenical Orlistat En Ligne Fvylvc https://bestadalafil.com/ - Cialis Macromolecular complexes from sheep and rabbit containing seven aminoacyltRNA synthetases. <a href="https://bestadalafil.com/">buy cialis online</a> https://bestadalafil.com/ - cialis online purchase Prdzdm
150	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
151	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
152	HAKAN ÇAKACI	hakan.cakaci@mesant.com.tr	05337466778	Merhaba\r\nAntalya Aqualand Mesant AŞ den ulasmaktayim. Golgelendirme yapilmak uzere3 -  3.5 mt uzinlugunda 25 adet telefon diregine ihtiyacimiz var. Fiyat ve tedarik icin destek olur musunuz
224	Sadık şekerci	sadiksekerci35@gmail.com	05323131503	Çeşme de bahçe giriş kapısı yaptırmak istiyorum,emprenye edilmiş veya önereceğiniz bir keresteden kapı yapabilirmisiniz,yaklaşık boy:180,en:90 veya 100.Ayrıca yaklaşık bir fiyat çıkartabilirmişsiniz.İyi günler,hayırlı işler
153	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, my name is Eric and I’m betting you’d like your website korusan.com.tr to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at korusan.com.tr.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithwebtraffic.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
154	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, my name is Eric and I’m betting you’d like your website korusan.com.tr to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at korusan.com.tr.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
155	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
156	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
157	İlkay Dereboylu		05428600709	Ağaç elektrik direklerine ve ahşap park yapımı için malzeme ihtiyacımız vardır.Esim yüksek elektrik mühendisi ve ben de proje bazinda  özel insaat yaptırıyorum.Ltf bize ahşap elektrik direği ve park malzemesi için fiyat verin
158	piompique	piompique@oourmail.xyz	83181226537	https://newfasttadalafil.com/ - tadalafil cialis Klonyu Sildenafil GРіСnstig Online Kaufen <a href=https://newfasttadalafil.com/>Cialis</a> Beqdlp Elsewhere Cecil Paine a former student of Flemings had some success in curing eye infections with penicillin at Sheffield Royal Infirmary in  but never reported his results. Tdctli Andersson  Hatzimouratidis and Hatzichristou  Eardley et al. https://newfasttadalafil.com/ - Cialis Nquprm
160	Hurol Demirtas 		5424468370	
161	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
162	emaitty	emaitty@topmailnew.xyz	83132368144	https://newfasttadalafil.com/ - Cialis Sbikpj Buy Wellbutrin Overnight Shipping se puede tomar viagra con presion alta <a href=https://newfasttadalafil.com/>cialis generic best price</a> Hmeazc Cialis 20 Mg Precio En Farmacias Ymyfus https://newfasttadalafil.com/ - Cialis Nzweul
163	seagfrema	seagfrema@onemailtop.xyz	88934529878	https://newfasttadalafil.com/ - generic cialis cost Azeztg cialis femenino <a href=https://newfasttadalafil.com/>can i buy cialis online</a> Bicsee Cipro V Amoxicillin https://newfasttadalafil.com/ - is there a generic cialis available Hozmdf
164	Priergerb	Priergerb@mailuk.site	81595198945	https://newfasttadalafil.com/ - Cialis Kmnkyg Comprar Cialis Por Internet Foro <a href=https://newfasttadalafil.com/>Cialis</a> Oscavg Windsor Canada Online Pharmacy Ostiom https://newfasttadalafil.com/ - buy viagra and cialis online
165	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
166	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
167	Priergerb	Priergerb@mailuk.site	82729164281	viagra acidez estomacal https://newfasttadalafil.com/ - Cialis Ozjdth Priligy En Quito Sqggef <a href=https://newfasttadalafil.com/>Cialis</a> viagra barcelona en mano Le Viagra Pour Les Jeunes Qknfcs https://newfasttadalafil.com/ - Cialis
263	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hi korusan.com.tr Administrator!\r\n\r\nEric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nWeb Visitors Into Leads is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Web Visitors Into Leads can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr
168	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
169	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
170	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
171	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
273	Megan	meganatkinson149@gmail.com	214-957-6321	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you'd like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nMegan\r\n\r\nTo unsubscribe: https://removeme.click/unsubscribe.php?d=korusan.com.tr
300	Emre pir	piremre89@gmail.com	5454975454	Ahşap evler hakkında bilgi almak istiyorum 
323	mustafa	mustafaaktas59@gmail.com	05536316398	2+1 ve 3+1 fiyat öğrenebilirmiyim ?
172	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=korusan.com.tr\r\n
173	Cumbews	Adveply@bernardmail.xyz	86825529664	https://newfasttadalafil.com/ - comprar cialis online Lfumeg Sizmyh <a href=https://newfasttadalafil.com/>Cialis</a> Purchase Isotretinoin Price In Internet Rsctqe Qjqxwt They are incorporated into substances that are introduced into the body by ingestion injection or inhalation and are monitored in specific places. https://newfasttadalafil.com/ - cheap cialis online canadian pharmacy
174	robberb	assaulp@newonlinemail.xyz	83435236856	https://newfasttadalafil.com/ - Cialis Cialis Original Precio Mpjhhj Puzfsq Dosage Cialis 20 <a href=https://newfasttadalafil.com/>buy cialis uk</a> https://newfasttadalafil.com/ - Cialis Rjnmuo Prix Du Kamagra En Belgique
175	Nizamettin İlhan	ni91092@gmail.com	5424315325	TEDAŞ a satılan ağaçlar dan 50 adet almak istiyorum
176	ownesia	Giniure@beaumail.xyz	86253855616	https://newfasttadalafil.com/ - cialis cost Levitra 40mg Forum Zvphxt Levitra Farmaco Equivalente <a href=https://newfasttadalafil.com/>Cialis</a> https://newfasttadalafil.com/ - buy generic cialis Jkoqzf cialis y tension arterial
177	Blelops	Advacle@onymail.xyz	81495397816	https://newfasttadalafil.com/ - Cialis Rico Rio Pharmacy <a href=https://newfasttadalafil.com/>Cialis</a> Cialis Black 800mg Reviews Bkbsnr https://newfasttadalafil.com/ - Cialis Kfeohi Vancomycin
178	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
179	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
180	Tolga doğrucu		05510968248	
181	suat bolat	suat.bolat@koztek.com	05323540346	Merhaba,\r\n30 m2 ahşap bir ev imalatında kullanılacak ahşap malzemelr için (listesi mevcut) fiyat teklifi almak istiyorum ama telefondan ulaşamadım.
182	Absexia	Absexia@adann.xyz	85211498875	and a higher prevalence of smokingrelated comorbid conditions and were more likely to use cigarettes during the study period Pyqzly https://newfasttadalafil.com/ - buy cialis 5mg <a href=https://newfasttadalafil.com/>cialis tablets for sale</a> Minqno https://newfasttadalafil.com/ - Cialis Anigvg venta de viagra generica
183	Talibe turan	talibeturan@gmail.com	05067210991	Ev interneti cektirecektik karşı komşu telefon direklerini iş makinesiyle yıktırdı internet alamıyoruz eve...
276	Sevgi Akarçeşme 	sevgiakarcesme@outlook.com	+905551628585	Merhaba ben 2+1 olacak şekilde dublex olarak büyüklüğü de en az 90.m2  fiyat bilgisi rica edebiliyor muyum acaba 
301	CAHİT SÜMER	cahit.sumer@mesan.com.tr	05467839853	MERHABA TESİSİMİZDE KULLANILMAK ÜZERE YUVARLAK ELEKTRİK DİREĞİ İHTİYACIMIZ VARDIR \r\nKONUYLA İLGİLİ BİRİM BAZINDA FİYAT TEKLİFİNİZİ BEKLER İYİ ÇALIŞMALAR DİLERİM\r\n
184	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
185	BagcionderLAB	ebock@bagcionderlab.com	84268923814	Nedir? Paleo fikri hoşunuza gidiyor ama tüm planı uygulamak istemiyor musunuz? Bu diyetin bazı yönlerini günlük hayatınızın bir parçası haline getirmenin yolları var. Örneğin, her öğünde veya atıştırmalıkta protein ve biraz yağ almayı deneyebilirsiniz. Ayrıca daha renkli sebze ve meyveler ekleyebilir ve yediğiniz hazır yiyecek ve atıştırmalıkların miktarını sınırlayabilirsiniz. <a href=https://bagcionderlab.com/>bagcionderlab.com</a> İskandinav beslenme tarzının büyük bir parçasıdır. Bu iyi bir şeydir çünkü bunlardan çok yediğinizde kilo alma olasılığınız azalır. Ayrıca antosiyanin adı verilen ve damarlarınızı ve atardamarlarınızı sağlıklı ve esnek tutan iyi bir antioksidan kaynağıdırlar ve kan basıncınızı düşürmeye yardımcı olabilirler.
186	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just found your site korusan.com.tr.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
187	bayram altuntoprak	bayram.altuntoprak@kristalkola.com.tr	05559805272	Şahıslara ağaç direk satıyor musunuz bahçemiz için 2 tane elektrik direğine ihtiyacımız var şahıslara veriliyor ise nasıl alınabilir fiyatları nedir
188	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
189	Mehmet Yiğit Gökçel	myigitgokcel@gmail.com	05326428355	Selamlar ;ahşap telefon direği almak istiyorum  fiyatları hakkında bilgi alabilir miyim katologunuz varsa ayrıca memnun olurum
277	Ramazan çiftçi	ciftciramazany@gmail.com	05464876308	8 adet elektrik direği 9 mt\r\nFiyat alabilirmiyiz\r\n150 adet 2.5 mt ve 10 cm çapımda bahça kaziği fiyatı 
278	Ramazan Çiftçi	ciftciramazany@gmail.com	05464876308	9 mt enperiyelli direk elektrik hatları için 8 adet fiyat be nakliye bilgi istiyorum 
287	Lymncreen	Lymncreen@lmaill.xyz	85897118716	Darell YcNHRLVmqQuaNPEwfV 6 18 2022 <a href=http://cialisa.buzz>cheap cialis from india</a> La kuratidzwa kwe furosemide izvo zvaunogona kuwana pamusika ndezvi
302	Sebahattin	bvb1700@hotmail.com	5336380643	Bayilik veriyormusunuz
304	Libby	libbyevans461@gmail.com	(24) 7116-3973	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 300-1000+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nLibby
190	Eric	eric.jones.z.mail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
191	cengiz koyuncu	teknoker@hotmail.com	+905356904296	TEKNOKER MAKİNE OLARAK AKÜLÜ ÇEMBER BAGLAMA.MANUEL VE ÇELİK ÇEMBER BAGLAMA MAKİNE.TAMİR BAKIM TEKNİK SERVİS HİZMETİ VERİYORUZ\r\nSARF MALZEME TEDARİK HİZMETLERİMİZDE MEVCUT\r\nPOLYESTER ÇEMBER-KOMPOZİT ÇEMBER-KOLİ KAPAMA ZIMBA TELİ 35/15-35/18\r\nSTREC FİLM 13 MM TOKALAR BUKLE TOKA\r\nİHTİYAÇ HALİNDE HER TÜRLÜ SARF MALZEMELERİ ADRESE TESLİM OLARAK TEDARİK EDİYORUZ.30 GÜN  VADE İLE ÇALIŞIYORUZ..\r\n\r\nORGAPACK SİGNODE STRAPEX TRANSPAK ÇEMBER BAGLAMA MAKİNE YEDEK PARCA MALİYETİ COK OLDUGUNDAN ARIZALI MAKİNELERE ÖNCELİKLE YEDEK PARCALARA BAKIM YAGSIZ KALANLARI YAGLAYIP İŞLEVLİLİK SÜRESİNİ UZATIYORUZ..\r\n\r\nEN SON AŞAMADA KURTALIYAMAYACAK YEDEK PARÇA DEGİŞİM OLUYOR AKÜLÜ ÇEMBER BAGLAMA MAKİNELERİN GENELDE TOZDAN DOLAYI YEDEK PARCALARI KURUM BAGLAR İŞLEM YAPAMAZ.TEMİZLİK BAKIM YAPILARAK %80 YEDEK PARÇA DEGİŞTİRMEYİP MALİYET YÜKÜNDEN KURTARIYORUZ \r\n\r\nİŞÇİLİK ÜCRETİMİZ  MAKUL SEVİYEDEDİR 200 TL +KDV 30 GÜN VADE\r\n\r\nORJİNAL YEDEK PARÇA KALİTELİ İŞÇİLİK İLE SERVİS ANLAYIŞIMIZ DEGERLİ MÜŞTERİLERİMİZİ​ MALİYET YÜKÜNDEN KURTARMAKTIR\r\nSTOKTA OLMAYAN YEDEK PARÇA TERMİN SÜRESİ MAKSİMUM 7 İŞ GÜNÜDÜR\r\n\r\nHIZLI SERVİS ANLAYIŞI İLE MAKİNEYİ BEKLETMEDEN TESLİMAT YAPIYORUZ\r\n\r\n​ALT VE ÜST BASKI YAYLAR\r\nRULMANLAR\r\nMOTOR KAYIŞI\r\nBIÇAK PUL\r\nBIÇAK\r\nKAYNATMA SİWİÇ\r\nGERDİRME SİWİÇ OLARAK\r\nEN ÇOK ARIZA YAPAN YEDEK PARÇALAR  DEGİŞMESİ DURUMUNDA \r\nDİGER SERVİSLERE KIYASLA FİYATLARIMIZ %50 İNDİRİM UYGULUYORUZ\r\n\r\nORGAPACK\r\nTRANSPAK\r\nSTRAPEX\r\nZAPAK \r\nSİGNODE\r\nMARKALAR DAHİL HER TÜRLÜ AKÜLÜ CEMBER BAGLAMA MAKİNELERE \r\nTEKNİK SERVİS HİZMETİ VERİYORUZ\r\n\r\nİLETİŞİM BİLGİLERİ\r\n0535 690 42 96 CENGİZ KOYUNCU\r\nteknoker@hotmail.om\r\nwww.Teknokermakine.com\r\n\r\n\r\n\r\n
192	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey, this is Eric and I ran across korusan.com.tr a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
193	Aytaç KOZAN	aytackoza@outlook.com	0532 787 1260	Merhaba.kargo bölümü için,tahta paletlerin altına koyulmak üzere ahşap takoz istenmektedir.işin devamlılığı oldukça fazladır.sizden ricam,, Boyut Cm 12,5 X 6,5 X 30..takozlar fırınlanacak ve her türlü böcek için ilaçlanacak ve mühürlenecek.ilk etapta 2.000 adet yaptırılacaktır.Adana iline kargo dahil fiyat vermenizi rica ediyorum.Ambarla da gönderim yapabilirsiniz.teşekkürler
194	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hi, my name is Eric and I’m betting you’d like your website korusan.com.tr to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at korusan.com.tr.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
279	Nimet kaynak 	ncakir_03@hotmail.com	5436187266	Mrb kolay gelsin ben afyon suhut ilçesinde anaokulu öğretmeniyim.velilerimin ve kendi çabamızla okulumuzun bahçesine açık hava sınıfı kurduk.simdide kutuphane olarak kullanmak için 20 metrekarelik bir ağaç ev yapmak istiyoruz.sizinde okullarla ilgili böyle bir çalışmanız varsa bize malzeme konusunda sponsor olur musunuz 
288	Muhtar	rathummursel@gmail.com	05548236400	Elektrik direk fiyati
303	Irfan çelik 	celikirfan1980@hotmail.com	5387070337	Kastamonu tosya da 600 m2 yerimiz var tek katlı ev yaptırmak istiyoruz 
196	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
197	Eric	eric.jones.z.mail@gmail.com	555-555-1212	Hello, my name’s Eric and I just ran across your website at korusan.com.tr...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
198	Üzeyir Bayık 	uzeyirbayik@hotmail.com	05065872224	Ahşap tel direklerle ilgileniyorum . Beni arar misiniz 
199	YILMAZ BEYATLI	yilmazbeyatli@hotmail.com	05425203038	Yürt dışına ihracat yapmak için ahşap elektrik direği lazım 2500 âdet \r\nPoteaux Boi S/140 - 9m
200	can Yalım	can@korusan.com.tr	05322353361	Sistem denemesi
201	Reyhan onay	reyhanonay7726@hotmail.com	05423819194	5 adet Elektirik diregi almak istiyoruz tekirdag saraya nakliye ile birlikte nekadar olur
202	Eric	ericjonesmyemail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
203	whisota	whisota@barrymail.xyz	82173877495	Canadian Pharmacys <a href=http://iverstromectol.com/>stromectol tablets buy</a> what insurance formularies list daily tadalafil
204	skikite	skikite@newonlinemail.xyz	82796862154	Viagra Sin Disfuncion Erectil <a href=http://iverstromectol.com/>stromectol otc</a>
205	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
206	Mustafa Durmaz 	info@durmazkereste.com	05559724005	12/12 ve 14/14 yuvarlak torna direk lazım 
208	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hi, my name is Eric and I’m betting you’d like your website korusan.com.tr to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at korusan.com.tr.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
209	Hasan Uzan 	askonliberia@gmail.com	+231770071904	Merhaba Sayın yetkili\r\nAskon Liberia General Trading Inc \r\nAfrikada kereste Ticareti yapan bir firmadır. \r\nKendi ormanında ağaç biçen ve küçük bir atölyesi olan 2017 de kurulmuş sektörde yeni sayılan bir firmadır. \r\nOrmanda ağaç bicerken nadir bulunan wenge ağacı bulduk. Yaklaşık iki konteyner \r\nihtiyaç duyarsanız size temin edebiliriz. Numunesi İstanbul'daki ofisimizde mevcut olup talebiniz halinde sizinle ortağımız Servet bey iletişime geçerek unrun numunesi i dize gösterebilir.\r\nSaygılarımla \r\nHasan Uzan \r\nAskon Liberia General Trading Inc \r\nMonrovia LIBERIA \r\nWhatsapp : +231770071904
210	Oğuz 	oguz_karaca777@hotmail.com	5362144579	Izmir focada Bahce icinde olacak şekilde 45 m2 yer için adet ve fiyat almak istiyorum.
211	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
212	tuna avcı	tunaavci@windowslive.com	5546358457	Merhaba,\r\nKır evi yaptırmak istiyoruz. Bilgi için geri dönüş sağlarsınız, seviniriz teşekkürler 
213	Çetin sari		5325781216	Acil ararsaniz. Sevinirim
214	ahmet erdem	aeyangin@gmail.com	+905323571379	Telefon direk fiyatlarını ögrenmek istiyorum 6...yada 7 metrelik kac varsa 
215	Alkamma	Alkamma@topmailonline.xyz	82972273387	Cortisol, the stress hormone, increases excess sugar in the bloodstream and enhances the brain s use of the sugars <a href=https://buylasixon.com/>lasix for pneumonia</a>
216	Hakan bilir	bilir--hakan@hotmail.com	05075908582	Ihrac  kayitlili yurt disi icin 4x40 cnt 12 m uzunlugunda qgactan aydinlatma diregi lazim\r\nTeklifinizi rica ediyorum
217	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
218	Alkamma	Alkamma@topmailonline.xyz	81343422433	<a href=https://buylasixon.com/>lasix iv to po conversion</a> Lignans in Flaxseed and Breast Carcinogenesis, Lilian Thompson and M
219	keywhethy	keywhethy@barrettmail.xyz	83472228926	85 g, 10 mmol in the presence of additional 12 a 381 mg, 1 <a href=http://bestcialis20mg.com/>generic cialis online pharmacy</a> diltiazem increases effects of lasmiditan by pharmacodynamic synergism
220	Orgasia	Orgasia@mailuk.site	81715566497	This is how he would wish to be remembered, as someone who spun a great yarn and made many people laugh <a href=http://bestcialis20mg.com/>is generic cialis available</a>
221	Caner selcuk	canerslck48@gmail.com	05462809978	70 tane direk lazim
222	Freptcype	Freptcype@beaumail.xyz	81399926936	Surgery related adverse effects included tingling or numbness on the arm on the side of the surgery, and psychosocial problems <a href=http://bestcialis20mg.com/>cialis on line</a>
223	Praliek	Praliek@bernardmail.xyz	81589626183	<a href=http://bestcialis20mg.com/>real cialis online</a> Trinity IRzvoMdFxT 6 18 2022
225	Erol Bora	erolbora65@hotmail.com	5553762388	
226	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
227	Eric	ericjonesmyemail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
228	ferhat kaya	ferhatkaya@paftainsaat.com.tr	531 893 35 71	Merhaba;\r\nPalet imalatında kullanılmak üzere çam, kavak ve köknar türünde kereste ihtiyacımız vardır. Özellikler ve teknik detaylar aşağıdaki gibidir. Fiyatlandırma dönüşlerinizi bekler; sağlıklı günler dilerim.\r\n1-) Uzunluk: 6 m ; Kalınlık : 2.5-5-10 cm; Genişlik: 10-12-15-25 cm.\r\n2-) 40 m3 gerekli\r\n3-) Termin süresi kaç gün?\r\n4-) Nem oranı ne kadar?\r\n5-) Isıl işlem uygulaması yapılmasını istiyoruz. Bunu sağlayacak gerekli donanımınız var mı? Varsa fiyata nasıl yansır?\r\nDeğerli dönüşlerinizi bekler; sağlıklı günler dilerim.\r\n
229	Eric	ericjonesmyemail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
230	Eric	ericjonesmyemail@gmail.com	555-555-1212	My name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
231	Eric	ericjonesmyemail@gmail.com	555-555-1212	Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
232	Eric	ericjonesmyemail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
233	Cleardpar	Cleardpar@onymail.xyz	87589645998	The benefits increase as the duration of treatment increase, up to 5 years, so that among women treated for five years, tamoxifen can result in up to a 46 percent annual reduction in the recurrence rate and up to a 28 percent annual reduction in the death rate <a href=http://bestcialis20mg.com/>cialis 5 mg</a>
234	Habib Hamdi Ünal	vedat.unal34@gmail.com	05079575810	Ortalama 10 metre yuvarlak telefonu direği lazım 7 tane fiyat nedir acaba
235	Noigite	Noigite@onemailtop.xyz	85883886999	36E 56, respectively, suggesting higher probability of RB1 pathway inactivation and of resistance to CDK4 6 inhibitors <a href=https://bestcialis20mg.com/>buying cialis online forum</a>
236	VAHİT AVLAMAZ	vahitavlamaz@gmail.com	05373508120	Merhabalar, sizlere Adana'dan yazıyorum. Emprenye edilmiş ahşap bahçe direği satışınız var mıdır?
237	VAHİT AVLAMAZ	vahitavlamaz@gmail.com	05373508120	Merhabalar, sizlere Adana'dan yazıyorum. Emprenye edilmiş ahşap bahçe direği satışınız var mıdır?
238	VAHİT AVLAMAZ	vahitavlamaz@gmail.com	05373508120	Merhabalar, sizlere Adana'dan yazıyorum. Emprenye edilmiş ahşap bahçe direği satışınız var mıdır?
239	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hi, Eric here with a quick thought about your website korusan.com.tr...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr
280	Poocrinee	Poocrinee@hmaill.xyz	87282637482	<a href=https://cialiss.cfd>buy cialis online usa</a> There were 617 recurrences and 331 deaths that occurred among the 3, 428 women who stayed on tamoxifen compared to 711 recurrences and 397 deaths among the 3, 418 women who were on the placebo
289	KeksKerve	KeksKerve@kmaill.xyz	83483684891	Pelvic irradiation using intensity modulated radiation therapy has been advocated by some in order to spare bowel and bone marrow <a href=https://levitr.mom>levitra 40mg</a> levitra what is the use of himalaya himcolin gel Bankers would be punished and reformed, the politicians promised
305	Yakup İŞGÜZAR	isguzaryakup@gmail.com	+90 537 395 27 47	Merhabalar, ben ağaç ev yaptırmak istiyorum fakat şu an sadece düşünce aşamasında olduğum için detaylarına hakim değilim. Bununla alakalı araştırma yaparken sizin sitenizi buldum. Sizin içinde uygunsa fiyat ve bilgi almak istiyorum.. Telefonla ulaşabilirsiniz ya da mail üzerinden de geri dönüş yapabilirim.
240	Eric	ericjonesmyemail@gmail.com	555-555-1212	Cool website!\r\n\r\nMy name’s Eric, and I just found your site - korusan.com.tr - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across korusan.com.tr, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
241	Gürbüz Ergün 	gurbuzergunergun@gmail.com	05446218544	12 metre boyunda telefon direyi lazım mevcut mu saygılar \r\n
242	mustafa keser	m.keser8977@gmail.com	05459458977	Emprenye sivisina renk pikmenti koyabilirmiyiz vakum basınç sisteminde ben ahsabin içine derinlemesine boyayı emdirmek istiyorum vakum basınç emprenye sistemini kullanarak 
243	İsmail Coşkun	ismail.coskun@skychaises.com	05383775721	Merhaba,\r\n\r\nBize Emprenye ağaç fiyatı verebilirmisiniz? \r\nÖlçüler: \r\n1. 3cm x 6 cm x 120 cm\r\n2. 3cm x 6 cm x 100 cm\r\n3. 3cm x 6 cm x 80 cm\r\n4. 3cm x 6 cm x 60 cm\r\nBir Taraf radyuslu (4 kenarıda)\r\n\r\nSaygılarımla\r\nIsmail Coşkun\r\n
244	Melih YALÇINGEDİZ	melihyalcingediz@gmail.com	05352119617	Merhaba\r\nEmprenye edilmiş çap 16 cm tam kütükten ev yapmak istiyorum.\r\nBir kaç sorum olacak\r\nSizin paket olarak sunduğuz projeleriniz var mı ve bunlar anahtar teslim mi oluyor? \r\nProje dahilinde Sadece kütükleri alıp montajını kendim yaptıra bilirmiyim?\r\nSon olarak ücretlendirme nasıl oluyor?\r\nTeşekkür ederim\r\nHoşçakalın
245	İbrahim incedil	ibrahimincedil2@gmail.com	5333821789	
246	Nurettin Özdebir		05335557069	Sizden temin edeceğim malzemeyle kendim ahşap bir A form da ev inşa etmek istiyorum bana nasıl yardımcı olabilirsiniz tavsiyelerinizi bekliyorum
247	Sinan	sinankazak06.sk@gmail.com	5459574456	2x4.5 3 adet çıta 3x4.5 altı adet fiyatı alabilirmiyiz acaba
248	Sinan	sinankazak06.sk@gmail.com	5459574456	Fiyat için dönüş bekliyorum ama
249	Nuri korkmaz	nuriikorkmaz@gmail.com	05324111183	Merhaba Telafon direkleri kaç metre var fiyatlarla ilgili bilgi almak istedim
250	Bayram Gaş	gashi59@gmail.com	05422420759	  Merhaba;\r\n  Tarafınızdan Arnavutluk’a ihraç edilmek üzere İstanbul teslimi; Minimum 200-ad., Maximum 500 ad., emprenye uygulamalı 7 mt., boyunda telefon direkleri için, fiyat teklifi vermenizi rica ederim. \r\n   Saygılarımla, \r\n   Bayram Gaş / 0542 242 07 59
251	Bayram Gaş	gashi59@gmail.com	05422420759	  Merhaba;\r\n  Tarafınızdan Arnavutluk’a ihraç edilmek üzere İstanbul teslimi; Minimum 200-ad., Maximum 500 ad., emprenye uygulamalı 7 mt., boyunda telefon direkleri için, fiyat teklifi vermenizi rica ederim. \r\n   Saygılarımla, \r\n   Bayram Gaş / 0542 242 07 59
252	Khaled alameen	khaled3187071@gmail.com	05355651577	Ağaç direk boyu 11 m ve 9m varmı 
253	Khaled alameen	khaled3187071@gmail.com	05355651577	Ağaç direk boyu 11 m ve 9m varmı 
254	Eric	ericjonesmyemail@gmail.com	555-555-1212	To the korusan.com.tr Webmaster!\r\n\r\nMy name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at korusan.com.tr.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nWeb Visitors Into Leads is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Web Visitors Into Leads can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr\r\n
255	Melih Aksu	melihaksu@melihaksu.com.tr	05347241313	Taş evimiz için çeşitli ebatlarda takribi 150 metre kara emperye edilmiş lamine kara cama ihtiyacımız var
281	Libby	libbyevans461@gmail.com	0323 2583533	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 300-1000+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and have any questions, reply back and we can discuss further.\r\n\r\nKind Regards,\r\nLibby
290	selim ISBIR	isbir@yahoo.com	5324057070	20m2 emprenyeli istanbul şişli teslim fiyatınız
306	Serkan açık	serkanacikk@hotmail.com	05327072996	Arsamda Kütük ağaç ev çok güzel olacağını düşünüyorum bana yardımcı olabilirseniz sevinirim 
309	alaattin kaya	alaattin.kaya@antyapi.com	0532 3471622	Orta kalınlık, 9m boy elektrik hattı için  60 adet  ahşap direk teklifi talep etmekteyiz.\r\nFiyat verir misiniz?\r\n\r\nTeşekkürler.\r\nİyi çalışmalar.\r\n
256	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hello korusan.com.tr Webmaster! I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to learn more about everything Web Visitors Into Leads can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
257	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hi korusan.com.tr Admin! \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with korusan.com.tr definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nWeb Visitors Into Leads is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out korusan.com.tr.\r\n\r\nCLICK HERE https://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://advanceleadgeneration.com to discover what Web Visitors Into Leads can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
258	Veli akdeniz		5059570152	9 metre boyda direk fiyatı 14 adet
259	Faruk Yücebilgiç	ifyucebilgic@yahoo.com	5335602596	TEDAŞ Ahşap Direk ihtiyacımız var. Pozantı, Akça Tekir Bürücek Yaylasında ikamet ediyoruz.
260	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hello korusan.com.tr Owner!\r\n\r\nMy name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Web Visitors Into Leads.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://advanceleadgeneration.com to learn more about everything Web Visitors Into Leads can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
261	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hello korusan.com.tr Owner!\r\n\r\nI just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Web Visitors Into Leads can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://jumboleadmagnet.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=korusan.com.tr
262	Merve Şimşek 	mmerve.simsek3014@gmail.com	05365753014	Ön Muhasebe veya sekreterlik alanında iş başvurusu yapmak istiyorum 
264	Turgut Reis  ulku		05454155468	18 veya 12. 13. 14.   Çapı ağaç boy. 6. Mm. Minimum. Neyse
265	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hello korusan.com.tr Owner. I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to learn more about everything Web Visitors Into Leads can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
266	Eric	ericjonesmyemail@gmail.com	555-555-1212	Hello korusan.com.tr Owner.\r\n\r\nMy name’s Eric and I just came across your website - korusan.com.tr - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like korusan.com.tr will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Web Visitors Into Leads.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://advanceleadgeneration.com to learn more about everything Web Visitors Into Leads can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
267	Eric	ericjonesmyemail@gmail.com	555-555-1212	Dear korusan.com.tr Owner! I just found your site, quick question…\r\n\r\nMy name’s Eric, I found korusan.com.tr after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nWeb Visitors Into Leads is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://advanceleadgeneration.com to learn more about everything Web Visitors Into Leads can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://advanceleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you'd like to unsubscribe click here http://advanceleadgeneration.com/unsubscribe.aspx?d=korusan.com.tr\r\n
268	Mehmet TOPCU	mehmettopcu@canmaksan.com.tr	+905327771027	Günaydın Değerli Genel Müdürümüz, \r\n\r\nCanmaksan Grubunun ana firması Canmaksan Makina 1975 yılı kuruluşlu olup, transfer sistemleri imalatı ve kesim makinaları konusunda uzmanlaşmıştır. Halen üretiminin % 80 lik kısmını Avrupa ülkelerine (Almanya, İngiltere, Avusturya, Polonya, Farnsa vb) ülkelerine (bayilerimz veya direkt satış) ihraç etmektedir.\r\n\r\nHangi konularda sizlerin çözüm ortağı olabileceğimizi görüşmek isteriz. Ön bir bilgi olarak standart ürün listemiz ve ana ürün kataloğumuzu gönderiyorum. \r\n\r\nWoodtech 2023 Fuarındaki nitelikli ziyaretçilerimizden biri olmanızı ve  yolunuz İnegöl e düşerse sizi  firmamıza davet ediyorum. \r\n\r\nhttps://www.youtube.com/watch?v=zdhsVe8HtGw  (Dünyanın en hızlı baş kesme ve boylama testeresi TEPKEM)\r\n\r\n\r\nSaygılarımla,\r\n\r\nMehmet TOPCU\r\nCFO & GC\r\n+90 532 777 1027\r\n
269	Libby	libbyevans461@gmail.com	070 2300 0865	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nLibby
270	Oğuzhan uzunel	oguzhan08uzunel@gmail.com	05541204343	50m2 iki katlı toplamda 100 m2 olacak şekilde kütük ev malzemesi fiyatı nedir
271	Ramazan çiftçi	ciftciramazany@gmail.com	05464876308	9 metre  elektrik dağitim direği fiyatı 
272	NNxkxlnUJ	immazom@cmaill.xyz	87424514239	<a href=http://prilig.monster>priligy over the counter usa</a> These complications may include heart disease, kidney disease, liver disease, eye damage, and foot infections
274	Necip 	necipyavuzarslan@gmail.com	05322773848	Ahşap ev için emperyeli tahta lazım fiyatlar nedir nerede görebiliriz 
275	Ümit Yıldız 	layzy78@hotmail.com	05443627825	Lambri ve kereste için bilgi almak istiyorum 
\.


--
-- Data for Name: korsanapp_imagefielduplad; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_imagefielduplad (id, "imageField", name) FROM stdin;
\.


--
-- Data for Name: korsanapp_mailingmodel; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_mailingmodel (id, mail) FROM stdin;
1	ondiekialice8@gmail.com
2	
3	thapoupss@gmail.com
4	seits@rogers.com
5	maralwolf1234@sbcglobal.net
6	bryann100@aol.com
7	Velma.Wyman@yahoo.com
8	Viola53@gmail.com
9	Frederique_Green@hotmail.com
10	
11	mjwemyss@rogers.com
12	Jeanne24@gmail.com
13	mikemedd3259@gmail.com
14	moin4cse@yahoo.com
15	cedmisson@live.com
16	csmith@ammcorp.net
17	korasit.com@domstat.su
18	tornaliahsap.com@buycodeshop.com
19	teldirek.com@buycodeshop.com
20	kutukevahsap.com@buycodeshop.com
21	korasit.com@buycodeshop.com
22	tornaliahsap.com@buycodeshop.com
23	teldirek.com@buycodeshop.com
24	kutukevahsap.com@buycodeshop.com
25	ahsapteldirek.com@buycodeshop.com
26	korasit.com@buycodeshop.com
27	tornaliahsap.com@buycodeshop.com
28	ahsapteldirek.com@buycodeshop.com
29	teldirek.com@buycodeshop.com
30	kutukevahsap.com@buycodeshop.com
31	tornaliahsap.com@buycodeshop.com
32	ahsapteldirek.com@buycodeshop.com
33	korasit.com@buycodeshop.com
34	ahsapteldirek.com@buycodeshop.com
35	korasit.com@buycodeshop.com
36	teldirek.com@buycodeshop.com
37	fenhol1963@yahoo.co.uk
38	korasit.com@buycodeshop.com
39	tornaliahsap.com@buycodeshop.com
40	teldirek.com@buycodeshop.com
41	princesssofiadomme@gmail.com
42	ahsapteldirek.com@buycodeshop.com
43	tornaliahsap.com@buycodeshop.com
44	teldirek.com@buycodeshop.com
45	ahsapteldirek.com@buycodeshop.com
46	korasit.com@buycodeshop.com
47	tornaliahsap.com@buycodeshop.com
48	teldirek.com@buycodeshop.com
49	kutukevahsap.com@buycodeshop.com
50	ahsapteldirek.com@buycodeshop.com
51	tornaliahsap.com@buycodeshop.com
52	teldirek.com@buycodeshop.com
53	ahsapteldirek.com@buycodeshop.com
54	kutukevahsap.com@buycodeshop.com
55	c_maro1@yahoo.fr
56	Luigi12@yahoo.com
57	korasit.com@buycodeshop.com
58	Yasmin86@gmail.com
59	tornaliahsap.com@buycodeshop.com
60	teldirek.com@buycodeshop.com
61	ahsapteldirek.com@buycodeshop.com
62	teldirek.com@buycodeshop.com
63	korasit.com@buycodeshop.com
64	tornaliahsap.com@buycodeshop.com
65	teldirek.com@buycodeshop.com
66	tornaliahsap.com@buycodeshop.com
67	kutukevahsap.com@buycodeshop.com
68	korasit.com@buycodeshop.com
69	teldirek.com@buycodeshop.com
70	kutukevahsap.com@buycodeshop.com
71	korasit.com@buycodeshop.com
72	ahsapteldirek.com@buycodeshop.com
73	ahsapteldirek.com@buycodeshop.com
74	tornaliahsap.com@buycodeshop.com
75	korasit.com@buycodeshop.com
76	korasit.com@buycodeshop.com
77	korasit.com@buycodeshop.com
78	kutukevahsap.com@buycodeshop.com
79	ahsapteldirek.com@buycodeshop.com
80	ahsapteldirek.com@buycodeshop.com
81	tornaliahsap.com@buycodeshop.com
82	
83	kutukevahsap.com@buycodeshop.com
84	ahsapteldirek.com@buycodeshop.com
85	korasit.com@buycodeshop.com
86	teldirek.com@buycodeshop.com
87	korasit.com@buycodeshop.com
88	korasit.com@buycodeshop.com
89	kutukevahsap.com@buycodeshop.com
90	teldirek.com@buycodeshop.com
91	kutukevahsap.com@buycodeshop.com
92	ahsapteldirek.com@buycodeshop.com
93	tornaliahsap.com@buycodeshop.com
94	kutukevahsap.com@buycodeshop.com
95	ahsapteldirek.com@buycodeshop.com
96	teldirek.com@buycodeshop.com
97	tornaliahsap.com@buycodeshop.com
98	teldirek.com@buycodeshop.com
99	kymei@yahoo.com
100	teldirek.com@buycodeshop.com
101	nflplayer615@gmail.com
102	tornaliahsap.com@buycodeshop.com
103	tornaliahsap.com@buycodeshop.com
104	hildrethlavonda@gmail.com
105	stephharrill@yahoo.com
106	tornaliahsap.com@buycodeshop.com
107	tornaliahsap.com@buycodeshop.com
108	vince@empirebldrs.com
109	teldirek.com@buycodeshop.com
110	celess.stone@gmail.com
111	teldirek.com@buycodeshop.com
112	teldirek.com@buycodeshop.com
113	ahsapteldirek.com@buycodeshop.com
114	
115	
116	mrdevinlthomas@gmail.com
117	marindawu@gmail.com
118	bryanhutch@juno.com
119	plk9912@yahoo.com
120	mesadler68@gmail.com
121	haleyc.crawford@gmail.com
122	joyomiles@yahoo.com
123	darie1987@gmail.com
124	runyonoiltools@frontier.com
125	sudiptasarma@gmail.com
126	plk9912@yahoo.com
127	vegaeduardo62@gmail.com
128	mjshort@hotmail.co.uk
129	info.ampair@gmail.com
130	jamejony32@gmail.com
131	deb_bo@yahoo.com
132	cliffsideparkdentalgroup@yahoo.com
133	candysailers@gmail.com
134	wahrsagera@aol.com
135	jgraebner@gmail.com
136	phinbob@gmail.com
137	itzmike174@hotmail.com
138	winebrokerage@yahoo.com
139	heatherpuckett12_21@yahoo.com
140	dwjtej@yahoo.com
141	frenchmascaro@gmail.com
142	kim197712kyla@yahoo.com
143	sdemaiorib@aol.com
144	ricardoarzate1992@gmail.com
145	jessicawarlick@gmail.com
146	nicko6609@yahoo.com
147	jcooke@sasktel.net
148	curlyjoerambo@comcast.net
149	mickj_cunningham@yahoo.com
150	riches65@yahoo.com
151	maluisa76@yahoo.com
152	stephaniemayer19@yahoo.com
153	daneck13@gmail.com
154	jeena.payrovi@yahoo.com
155	lilian.s.buss@gmail.com
156	chrissy2318@yahoo.com
157	aiste@mautoras.lt
158	yady_22@yahoo.com
159	daina2007@gmail.com
160	timothy.blaisdell@gmail.com
161	tarabeth82@gmail.com
162	tejaswigosu@gmail.com
163	kristina_campeau@hotmail.com
164	hondette@stny.rr.com
165	annemarie.gassner@web.de
166	mr4mine@yahoo.com
167	barnhilljp@yahoo.com
168	marilynmkenna@yahoo.com
169	hawiianeyes65@yahoo.com
170	lynn_curtis_king@yahoo.com
171	kelly.gaffey@yahoo.ca
172	dipak_ecs@yahoo.com
173	mlzarz@yahoo.com
174	afablecassie5@gmail.com
175	ryancmaples@yahoo.com
176	tonyl@herricksteel.com
177	caliwarraich@gmail.com
178	sanabriaalicia48@yahoo.com
179	mlyonsl@aol.com
180	jimmyapt@yahoo.com
181	gordonmcphersonrayner@gmail.com
182	cjohnson@cmjconsult.com
183	dan_roeser@yahoo.com
184	kendra_kern@yahoo.com
185	tayler.j.stanley@gmail.com
186	lora@lorabidner.com
187	sammy-tran@hotmail.com
188	jameswhyte59@outlook.com
189	jfallica@hotmail.com
190	callmarthaz@gmail.com
191	dion_matt@yahoo.com
192	rebeccalynnejordan@gmail.com
193	fdiazcortes@gmail.com
194	sauveeric@yahoo.ca
195	cherlynnjoy@yahoo.com
196	twinsglassinfo@gmail.com
197	dawn@rinzler.net
198	julschacon@aol.com
199	julschacon@aol.com
200	jaimesalmeron@yahoo.com
201	hpjacobson@gmail.com
202	bajatop@cox.net
203	dominik.schmidt@muenchen.de
204	jayleebennett0@gmail.com
205	hendrikelestromeno@gmail.com
206	dalmiro1@yahoo.com
207	csdlawoffices@gmail.com
208	jnhusain@yahoo.com
209	staub.family@yahoo.com
210	darrelekerr@aol.com
211	darrelekerr@aol.com
212	pat@lightbank.com
213	ortiviz.alex@gmail.com
214	jennyga2021@gmail.com
215	tranhhung1@gmail.com
216	rlesandro@yahoo.com
217	gatortracy@msn.com
218	joeymak7140@yahoo.com
219	wilsoncharles126@gmail.com
220	bassam@adarproperty.com
221	dontcallmelady1@yahoo.com
222	altisdell@yahoo.com
223	sdeso2004@yahoo.com
224	carmel.crawford@yahoo.com
225	rachelyu26@gmail.com
226	peterfakava@gmail.com
227	grissetttalya@yahoo.com
228	brogan.ganley@mac.com
229	jhowes8766@charter.net
230	vdezelic@gmail.com
231	leoval861@gmail.com
232	mb@comotravels.com
233	alia.almidfa@gmail.com
234	harrisambrea@yahoo.com
235	elenamares99@yahoo.com
236	donnaslater12@yahoo.ca
237	njcoolman99@yahoo.com
238	schiarizza@gmail.com
239	ibaniapaniagua@gmail.com
240	greeniemaple@gmail.com
241	manekyogesh@gmail.com
242	imazoe223@yahoo.com
243	justin_alexander@ml.com
244	elisamichellebell@gmail.com
245	fionamcewan1987@gmail.com
246	haider.raza13@gmail.com
247	roxolana@aol.com
248	ryangarbett77@gmail.com
249	info@cob-web.nl
250	taisonbrown6@gmail.com
251	katsuelo@gmail.com
252	arodri8183@gmail.com
253	marinos304@yahoo.ca
254	jennastarking@gmail.com
255	tina.krause1989@yahoo.de
256	normamaspon@yahoo.com
257	asalam55@gmail.com
258	demchenko.i.k@gmail.com
259	rob.jeanveau@gmail.com
260	hawkinsconst@gmail.com
261	vincentnorman42@gmail.com
262	ahmed_ashour_82@yahoo.com
263	averyconstant@gmail.com
264	jnagro65@aol.com
265	mommyalaina@gmail.com
266	mtashtiany@yahoo.com
267	johns@nojapower.com
268	swadejko@gmail.com
269	stevenjones48.sj@gmail.com
270	deanepierce@yahoo.com
271	mayforeman1@gmail.com
272	nstylatop@aol.com
273	camillan1949@gmail.com
274	medinab1@yahoo.com
275	suzzyq1959@aol.com
276	jessyca.delarosa@yahoo.com
277	banzigerc@aol.com
278	bigg_dogg112003@yahoo.com
279	kimpelb.bellomo@gmail.com
280	ronaldmce49@hotmail.com
281	rsolino@aol.com
282	carleycolton@gmail.com
283	anneld@live.ca
284	jasoneakers@yahoo.com
285	rnrottweiler@yahoo.com
286	thahking21@gmail.com
287	saracity123@gmail.com
288	russi.davide@googlemail.com
289	h.farrell529@yahoo.com
290	rochelle@nclwlaw.com
291	wrsanders@wccmud.com
292	duffykaren26@yahoo.com
293	lorienachlis@aol.com
294	huettlingerkeelan@yahoo.com
295	jpak74@yahoo.com
296	jen@jhatfieldandassociates.com
297	owen24862486@gmail.com
298	info@thekwakbrothers.com
299	danroeser@yahoo.com
300	lucasgroom@gmail.com
301	deniszuvelek@gmail.com
302	flahive323@yahoo.com
303	camy211223@gmail.com
304	adam@drakewolf.tv
305	aitimqt@gmail.com
306	liz.burge84@gmail.com
307	elhamshirdel59@gmail.com
308	awhite1972@aol.com
309	orisonwilson@yahoo.co.uk
310	nick902101234@yahoo.com
311	laura.mancino@yahoo.com
312	pam.kvelazquez@gmail.com
313	quocbaomai@yahoo.com
314	denissemayers@gmail.com
315	benton.felts@yahoo.com
316	dsteenbruggen@yahoo.com
317	cutandcleanwi@yahoo.com
318	jieni0917@hotmail.com
319	ajchriston17@gmail.com
320	sbustamante54707@gmail.com
321	navload@yahoo.com
322	johanadiaz2015@gmail.com
323	gatorj1997@aol.com
324	dand3399@aol.com
325	foreman12@yahoo.com
326	jsaw8@hotmail.com
327	anderson.andrew1980@gmail.com
328	raventest73@gmail.com
329	thibault.shannon@gmail.com
330	rajaa2925@web.de
331	jll3174@yahoo.com
332	rahflah@yahoo.com
333	ritarose59@verizon.net
334	mlfleming2@gmail.com
335	franeo12u2@gmail.com
336	chrisb2526@yahoo.com
337	cgersten@yahoo.com
338	hoopielife@yahoo.com
339	danielledesroches@yahoo.com
340	sales@dreamwebrank.com
341	noor3786@yahoo.com
342	eosheawyatt@gmail.com
343	billing@edpsoftware.com
344	deepansh11@gmail.com
345	aweisbrodt@gmail.com
346	chrisharley407@gmail.com
347	lmbberger@aol.com
348	malshakov@youtalk.es
349	ransonrk@gmail.com
350	bethclarke123@hotmail.co.uk
351	kpecklermd@yahoo.com
352	gregwadden@gmail.com
353	russdimac_@hotmail.com
354	erinh@hughesits.com
355	nessa.gat@hotmail.com
356	auddod12@gmail.com
357	mike1608@gmx.de
358	b_dix@aol.com
359	sjhoward82@yahoo.com
360	alexisbarrettlee@gmail.com
361	jlong@acspe.net
362	david_drewry@yahoo.co.uk
363	aadeebabhatti@rocketmail.com
364	jlechman621@comcast.net
365	andreaecrofts@gmail.com
366	aeidson222@gmail.com
367	lgonza11@its.jnj.com
368	dustindhansen@gmail.com
369	dharitos@mhg.com.au
370	elisabeta_spatar1998@yahoo.com
371	djensen@queensmarque.com
372	jfrarn@yahoo.com
373	june.liao73@gmail.com
374	robert_tlc@yahoo.com
375	gomezhumbertoo42@gmail.com
376	gimmeneck89@gmail.com
377	twiggy_chown@hotmail.com
378	rjt360@yahoo.com
379	michelleyeger@aol.com
380	pinkernell@gmail.com
381	hyozon@gmail.com
382	blake@blakewilsongroup.com
383	davidfriends@sbcglobal.net
384	michelle.mercado@yahoo.com
385	latinomontage@gmail.com
386	mscmp30@yahoo.com
387	lau288@yahoo.com
388	craftmom77@aol.com
389	nelings@gmail.com
390	erin.ongena@hotmail.com
391	ciasimone@me.com
392	jorgegulf@aol.com
393	jasmine.aguilar39@yahoo.com
394	ronald_dickerson@hotmail.com
395	lizdarding@yahoo.com
396	lgarofalo@wesway.com
397	mkeeper@swbell.net
398	deiontrezmount@yahoo.com
399	hybridlayer5@gmail.com
400	christopher.hack@btinternet.com
401	kellyloveless@yahoo.com
402	studchain@aol.com
403	delgnzl5@aol.com
404	donald.podrasky@yahoo.com
405	mshanda841@yahoo.com
406	robert_acosta74@yahoo.com
407	leslieleyton@yahoo.com
408	tcook@trcdisability.ca
409	oldrocknroller@hotmail.com
410	ceo@powerhealth.gr
411	marissa.smith1929@gmail.com
412	lizadler@ymail.com
413	zsalvaggio123@yahoo.com
414	charles.wilson951@yahoo.com
415	fl35@duke.edu
416	clairehulse@yahoo.co.uk
417	guy@gbk-law.com
418	morgan.izquierdo@gmail.com
419	equildon@hotmail.com
420	yoder.jean@yahoo.com
421	sky_tran20000@yahoo.com
422	md2c@san.rr.com
423	ballery.elder@gmail.com
424	matiasayora@hotmail.com
425	sbirdwoman@sbcglobal.net
426	golongwin@icloud.com
427	hr.pickering@finesightsolutions.ca
428	info@freetime101.com
429	eskinner9316@gmail.com
430	scanz01@yahoo.com
431	ravigh@gmail.com
432	rena321@aol.com
433	thomaskawasaki@hotmail.com
434	cmnichole@gmail.com
435	angelobayi@yahoo.com
436	april.garcia@yahoo.com
437	georgebjelovuk@gmail.com
438	tifffffanyxo@gmail.com
439	tbarnes331@yahoo.com
440	sandkebay@yahoo.com
441	
442	KO7j_generic_dc38b752_www.korusan.com.tr@data-backup-store.com
443	
\.


--
-- Data for Name: korsanapp_mainteance; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_mainteance (id, name, status) FROM stdin;
1	mainteance	f
\.


--
-- Data for Name: korsanapp_product; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_product (id, name, "imageField", "imageField1", "imageField2", "imageField3", description, slug, "altGroup", date) FROM stdin;
1	Korasit BSM 2	upload/Ekran_Resmi_2020-09-22_14.43.16.png				Ahşap kereste ve paletler için nem oranına bağlı olarak gelişen mavileşme ve küf problemini ortadan kaldıran bir üründür. Daldırma olarak uygulanan organik amin bazlı korozif olmayan sıvı bir üründür. \r\nKULLANIM METODU \r\nTaze kesilmiş keresteye uygulanır. Çözelti kerestenin bütün yüzeylerine uygulanmasına dikkat edilmesi gerekir. Kimyasalın kullanılacağı daldırma banyosuna kimyasal, iyice çalkalandıktan sonra %3-4-5 oranında çözelti hazırlamak için belirli miktarda ( Örn ; 4 kg Korasit BSM ve 96 kg Su ) doldurulur. İşlem süresi ahşabın nemine göre değişkenlik gösterir . Ortalama 3-5 dakika daldırma işleminden sonra ahşap korunmaya başlar. Püskürtme sistemlerde hazırlanan çözelti ahşabın bütün gözeneklerine temas ettirilerek kullanılmasına özen gösterilmelidir. Temas etmeyen gözeneklerde problemler ortaya çıkar. Uygulama yaparken keresteler arasında çıta olması işlemin daha iyi yapılmasını sağlar. İşlem yapıldıktan sonra paletlerin veya tahtaların hava sirkülasyonun olduğu yerlerde depolanması önerilir. \r\nBANYO KONTROLU \r\nBanyoda azalan çözelti miktarı kadar su ve Korasit BSM 2 ürünü ekleme yapılır . Çözelti konsantrasyonu refraktometre ile kontrol edilir . \r\n\r\nÇALIŞMA ŞARTLAR! Sıcaklık : +10- +30 \r\n\r\nDaldırma Süresi : Ahşap nemine göre değişir . Ortalama 30 saniye . Banyo Konsantrasyonu : Ahşap nemine göre değişir . % 3-4-5 \r\n\r\nGÜVENLİK ÖNLEMLERİ VE DEPOLAMA \r\nCilt ve gözle temasında bol su ile yıkayınız. Doktora \r\nbaşvurunuz. Gıda ürünlerine doğrudan temas \r\nettirmeyiniz. Uygulama sırasında herhangi bir şey \r\nyemeyin ve içmeyiniz . Sigara içmeyiniz. \r\nSu haricinde herhangi bir madde ile karıştırmayınız. \r\nDepolama, +4 / +30 derecede nemsiz ortamda \r\nen fazla 1 yıl olmalıdır.	korusan-korasit-bsm2	f	2021-03-25
2	Korasit TP40	upload/Ekran_Resmi_2020-09-22_14.39.11.png				Korasit TP-40; TS 56-1, EN 12465/16.4.2004 ve TS 56-2, EN 12479/16.4.2004'e göre üretilmiş, su bazlı bir koruma maddesidir ve 1-2-3 tehlike sınıfına giren ahşapların emprenyesinde kullanılır. Çocuk parkları, pergola, kameriye, çit kazığı, açıkta kullanılan bahçe ve ev mobilyaları ile inşaatlarda taşıyıcı ve statiği sağlayan ahşaplar, çatı, kaplama gibi su ve toprakla sürekli teması olmayan ahşap malzemelerin korunması için uygun bir emprenye maddesidir. \r\nUygulamada daldırma yöntemi kullanılır. Ahşabın içine kısa bir süre içinde %90 oranında fikse olur, kolayca sabitlenir. Yüksek derecede etkili ve akışkan bir malzemedir. Su bazlı ve çevre dostudur. Emprenye yapılacak ahşabın nem oranı en fazla %20 olmalıdır. \r\nDiN 68 800 - 3'e göre kullanılacak miktar \r\n1 - 2. riziko sınıfı - 300 g/m2 \r\n3. riziko sınıfı - 400 g/m2 \r\nKorasit TP-40 ile emprenye edilen ahşap malzeme demir ve çelik gibi metallerle kolayca kullanılabilir ve korozyona neden olmaz. Bitkilere zarar vermez. Korasit TP-40 ile emprenye yapılan ahşap seçilen ilaca bağlı olarak şeffaf, sarı, yeşil veya kahverengi renk alır. \r\n\r\nDiN 68 800 - 3 standardına göre \r\nP - Mantarlara karşı etkili \r\niV - Böceklere karşı etkili \r\nW - Açık hava şartlarına dayanıklı \r\nAlman Deutschen Für Bautechnik, Beri in tarafından Z-58.1-1597 no ile imalatına ve kullanımına izin verilmiştir.	korusan-korasit-tb40	f	2021-03-25
3	Korasit TS	upload/Ekran_Resmi_2020-09-22_14.36.36.png				Korasit TS; TS 56-1, EN 12465/16.4.2004 ve TS 56-2, EN 12479/16.4.2004'e göre üretilmiş, su bazlı bir koruma maddesidir ve 1-2-3 tehlike sınıfına giren ahşapların emprenyesinde kullanılır. Çocuk parkları, pergola, kameriye, çit kazığı, açıkta kullanılan bahçe ve ev mobilyaları ile inşaatlarda taşıyıcı ve statiği sağlayan ahşaplar, çatı, kaplama gibi su ve toprakla sürekli teması olmayan ahşap malzemelerin korunması için uygun bir emprenye maddesidir. \r\nUygulamada daldırma yöntemi kullanılır. Ahşabın içine kısa bir süre içinde %90 oranında fikse olur ve kolayca sabitlenir. Yüksek derecede etkili ve akışkan bir malzemedir. Su bazlı ve çevre dostudur. Emprenye yapılacak ahşabın nem oranı en fazla %20 olmalıdır. \r\nDiN 68 800 - 3'e göre kullanılacak miktar \r\n1.- 2. riziko sınıfı - 400 g/m2 \r\n3. riziko sınıfı - 600 g/m2 \r\nKorasit TS ile emprenye edilen ahşap malzeme demir ve çelik gibi metallerle kolayca kullanılabilir ve korozyona neden olmaz. Bitkilere zarar vermez. Korasit TS ile emprenye yapılan ahşap yeşil renk alır.\r\n\r\nDiN 68 800 - 3 standardına göre \r\nP - Mantarlara karşı etkili \r\niV - Böceklere karşı etkili \r\nW - Açık hava şartlarına dayanıklı \r\nAlman Deutschen Für Bautechnik, Berlin tarafından Z-58.1-1424 no ile imalatına ve kullanımına izin verilmiştir.	korusan-korasit-ts	f	2021-03-25
4	Emprenye Kimyasalları - CX8	upload/Ekran_Resmi_2020-09-22_14.33.50.png				Wolmanit CX-8, TS 56-1, EN 1265/16.4.2004 ve TS 56-2 12479/16.4.2004'e göre üretilmiş, ACQ grubundan, su bazlı bir emprenye maddesidir ve 1-2-3-4 tehlike sınıfına giren ahşabın korunmasında kullanılır. Çocuk parkları, pergola, kamelya, çit, kazık, açıkta kullanılan bahçe ve ev mobilyaları ile inşaatlarda taşıyıcı ve statiği sağlayan elemanlar, destek, çatı, kaplama gibi su ve toprakla sürekli teması olan ahşap malzemelerin korunmasına uygundur. \r\nUygulamada vakum-basınç yöntemi kullanılır. Su bazlı olup çevre dostudur. Aynı gruba ait diğer kimyasalların kullanıldığı tesislerde mevcut ilaçla reaksiyona girmediği için birlikte kullanılabilir. \r\nKullanılacak miktar (DiN 68 800 - 3'e göre) \r\n1. riziko sınıfı - 2,5 kg/m3 \r\n2 -3. riziko sınıfı - 3, 75 kg/m3 \r\n4. riziko sınıfı - 6 kg/m3 \r\nWolmanit CX-8 ile emprenye edilen ahşap malzeme demir ve çelik gibi metallerle birlikte kullanılabilir. Korozyona neden olmaz ve bitkilere zarar vermez. \r\n\r\nDiN 68 800 - 3 standardına göre \r\nP - Mantarlara karşı etkili \r\niV - Böceklere karşı etkili \r\nW - Açık hava şartlarına dayanıklı \r\nE - Su ve toprakla temasta etkili \r\nAlman Deutschen Für Bautechnik, Beri in tarafından Z-58.1-1510 no ile imalatına ve kullanımına izin verilmiştir.	korusan-emprence-cx8	f	2021-03-25
6	F/J Laminasyon	upload/Ekran_Resmi_2020-09-20_17.57.34.png				FINGER JOINT SİSTEM \r\nİmalat esnasında ortaya çıkan kısa boy ve kusurlu olan malzemeler fire olarak kaybedilmektedir. Finger Joint Sistemi ile bu malzemeler önce kusurlarından arındırılır ve sonra boy olarak birleştirilip kullanılabilir ürün haline gelmektedir. Böylelikle fire olan malzemeler hem değerlendirilmiş, hemde üretilen malzeme daha kaliteli olmaktadır. \r\nLAMİNASYON SİSTEMİ \r\nFiziksel ve mekanik özellikleri estetik açıdan birçok avantaja sahip lamine malzemeler doğrama, mobilya ve yapı endüstrilerinde kullanım alanı bulmaktadır. Laminasyon tekniğinde lamine oluşturmanın teknolojisi kısaca, küçük kesitli birçok tahtanın tabaka halinde birbirleri ile yapıştırılmasıdır.	korusan-fj-laminasyon	f	2021-03-25
7	Çıta ve Karkas	upload/Ekran_Resmi_2020-09-20_17.55.54.png	upload/cıta_karkas.png			KULLANIM ALANLAR!: Siding uygulamalarında, yer döşemelerinde destek malzemesi olarak, ahşap çatı elemanlarında	korusan-cita-ve-karkas	f	2021-03-25
8	Yuvarlak Ağaç	upload/Ekran_Resmi_2020-09-20_17.55.23.png	upload/yuvarlak_agac.png			KULLANIM ALANLAR!: iskele kazığı, pergola ayakları, çocuk oyun grupları, bağ direği, diğer dış mekan düzenlemeleri, ahırlar, ağıllar. \r\n\r\nBoy; 1 metre ile 6 metre arasındaki ölçülerde olmaktadır. \r\nHammadde temin edilebildiği takdirde istenilen boyda imalat yapılabilmektedir.	korusan-yuvarlak-agac	f	2021-03-25
9	Ahşap Profiller	upload/Ekran_Resmi_2020-09-20_17.54.00.png	upload/ahsap_profiller.png			KULLANIM ALANLARI: Pergola, kameriye, çocuk oyun grubu, dış mekan ahşap mobilyalarında, peyzaj çalışmalarında ve her türlü ahşap projelerde kullanılabilecek hazır profillerdir.	korusan-ahsap-profiller	f	2021-03-25
10	Kütük Evler	upload/Ekran_Resmi_2020-09-20_17.53.24.png	upload/kutuk_evler.png			KULLANIM ALANLARI: Kütük Evler	korusan-kutuk-evler	f	2021-03-25
11	Kütük Ev Panel	upload/Ekran_Resmi_2020-09-20_17.52.26.png	upload/kutuk_ev_panel.png			KULLANIM ALANLARI: Kütük evler, bungalovlar, plaj kabinleri, ahşap yapıların ara bölmelerinde.	korusan-kutuk-ev-panel	f	2021-03-25
12	Yarım Kütük	upload/Ekran_Resmi_2020-09-20_17.50.40.png	upload/yarım_kutuk.png			KULLANIM ALANLARI: Ahşap ve betonarme yapılarda cephe kaplaması olarak.	korusan-yarim-kutuk	f	2021-03-25
13	Yalı Baskı	upload/Ekran_Resmi_2020-09-20_17.49.49.png	upload/yalı_baskı.png			KULLANIM ALANLARI: Ahşap ve betonarme yapılarda cephe\r\nkaplaması olarak.	korusan-yali-baski	f	2021-03-25
14	Deck	upload/Ekran_Resmi_2020-09-20_17.48.59.png	upload/deck.png			KULLANIM ALANLARI: Dış mekanda, havuz kenarı, yürüme yolu, iskele, teras, yer döşemesi	korusan-deck	f	2021-03-25
5	Korem CKB-P Emprenye - CCB Grubu	upload/Ekran_Resmi_2020-09-22_14.33.50_1.png				TS 56-1, EN 12465/16.4.2004, TS 56-2, EN 12479/16.4.2004'e göre üretilmiş, su bazlı ve 1-2-3-4 tehlike sınıfına giren ahşapların korunmasında kullanılan emprenye maddeleridir. Özellikle elektrik ve telefon direkleri, tren yolu traversleri, çocuk parkları, pergola, kamelya, çit, kazık, açıkta kullanılan bahçe ve ev mobilyaları ile yapılarda taşıyıcı ve statik elemanları, destek, çatı, kaplama gibi su ve toprakla sürekli teması olan ahşap malzemelerin korunması için uygun emprenye kimyasallarıdır. Uygulamaları vakum - basınç yöntemi ile yapılır. Su bazlı olup çevre dostudurlar. Kullanımlarında herhangi bir katkı maddesine gerek yoktur. Şirketlerimiz Alman Dr.Wolman GMBH lisansı ile Wolmanit CB ve üretim ve formül hakları kendine olmak üzere Korem CKB-P olarak ürettikleri kimyasallar ile Türkiye'de imalat yapan tek gruptur. Yıllık ortalama 1.000.000 kg. kapasite ile çalışılmaktadır. CCB kimyasalları ile emprenye edilen ahşap malzeme demir ve çelik gibi metallerle kolayca kullanılır ve korozyona neden olmaz. Bitkilere zarar vermez. CCB grubu ile emprenye yapılan ahşap malzeme yeşil renk almaktadır. DiN 68 800 - 3 standardına göre P - Mantarlara karşı etkili iV - Böceklere karşı etkili W - Açık hava şartlarına dayanıklı E - Su ve toprakla temasta etkili Alman Deutschen Für Bautechnik, Berlin tarafından Z-58.1-1350 no ile imalatına ve kullanımına izin verilmiştir.	korusan-emprence-ccb	f	2021-12-27
15	Tel Direği	upload/Ekran_Resmi_2020-09-20_17.33.17.png	upload/Ekran_Resmi_2020-09-20_17.33.23.png			Şirketlerimiz, kuruldukları 1960'1ı yıllarda yurdumuzda henüz kullanılmayan bir yöntem olan ahşap emprenyesini, dönemin yetkililerinin de bu konuya ilgi göstermeleri üzerine, Türkiye' de ilk başlatan kurumlar olmuşlardır. Bu dönemde emprenyeli ahşaba en fazla ihtiyaç gösteren kurumlar, tel direği kullanımları çok miktarda olan TEDAŞ ve TELEKOM olmuştur. Bu nedenle yurdumuzda emprenyenin ilk kullanıldığı alan ahşap tel direkleridir. O dönemden günümüze kadar kalan ve halen hizmet gören emprenye ettiğimiz direklerin varlığı şirketlerimiz için ayrı bir gurur kaynağıdır. Türkiye'de şu an dikili olarak faal halde bulunan tel direklerinin yaklaşık %60 - 70'i şirketlerimiz tarafından emprenye edilmiştir. \r\nZaman içerisinde gerek teknolojik gelişmeler gerekse bu kurumların ihtiyaçlarının yıllar içerisinde farklılık göstermesi sebebi ile tel direği emprenyesi, farklı oranda olmakla birlikte, halen esas faaliyet alanlarımızdan biridir. Türkiye'de bu alanda kapasitesi en fazla olan şirketler grubu olarak varlığımızı sürdürmekteyiz. \r\nGrubumuz aynı zamanda dikili tel direği idame emprenyesi için bandaj ithalatı ve uygulaması da yapmaktadır.	korusan-tel-diregi	f	2023-10-18
16	PELET	upload/WhatsApp_Image_2023-10-18_at_10.42.54_1.jpeg	upload/WhatsApp_Image_2023-10-18_at_10.42.53.jpeg			NEDİR & NASIL ÜRETİLİR?\r\n\r\n•\t%100 çam talaşı fırında kurutularak nem oranı düşürülür.\r\n•\tKurutulan talaş yüksek basınç altında preslenerek Pelet haline getirilir.\r\n•\tPresten çıkan mamule soğutma işlemi uygulanarak paketleme yapılır ve  kullanıma hazır hale gelir.\r\n•\tBu işlemlerin uygulanması sonucunda ağacın yanma ve enerji verimini %300 artırarak doğaya, çevreye ve ülke ekonomisine büyük katkı sağlamaktadır.\r\n•\tBu oran kullanılacak yakıt miktarının üçte bir oranında düşmesi demektir ki bu da hem ormanlarımızda daha az tahribat hem de ekonomimizde daha az maliyet demektedir.\r\n\r\nÇam Peletin Özellikleri Nelerdir\r\n•\tKalori değeri: yaklaşık 4500-5000kcal/kg\r\n% 100 ÇAM Pelet’i % 7-11 arasında nem içerir.\r\n•\tGenellikle 6-8 mm çapında 10-30 mm uzunluğunda olan küçük küçük parça şeklinedir.\r\n•\tYabancı ya da kimyasal madde içermemesinden dolayı çevre kirliliğine kesinlikle sebep olmaz.\r\n•\t% 100 Çam Pelet, temiz, karbondioksit üretmeyen ve kullanışlı bir yakıttır.\r\n•\tNem miktarı az olduğu için ısı kalorisi oduna cinsi yakıtlara göre daha yüksektir.\r\n\r\n\r\n              Pelet Kullanım alanları?\r\n   Şömine, Soba, Kalorifer Kazanları, Özel İmal Edilmiş Pelet Sobaları gibi ürünlerde rahatlıkla kullanılabilmektedir.\r\n             Çam Pelet Avantajları?\r\n•\tYanma süresi oduna göre daha uzundur.\r\n•\tVerimi yüksektir. % 90 (Kömürün verimi % 65)\r\n•\tHava ihtiyacı kömürün % 20 ‘si kadardır.\r\n•\tKül Oranı Max. Binde altıdır.\r\n•\tCüruf oluşturmaz.\r\n•\tBacalarda tıkanma yapmaz ve kesinlikle kurum bağlamaz.\r\nEnerjide dışa bağımlılığı azaltmak, küresel ısınmaya neden olan sera gazı etkili gazların emisyonlarını azaltmak ve doğal gazın ulaşamadığı bölgelerde enerji gereksinimini karşılamak için pelet yakıtlara olan ilgi her geçen gün artmaktadır. Küresel olarak 2014 yılında 23 milyon ton olan pelet yakıt üretiminin 2024 yılında 50 milyon tona ulaşacağı tahmin edilmektedir. Özellikle fiyatı yüksek ve küresel düzeyde dalgalı seyir izleyen fosil yakıt kaynakları tüketicileri, sanayicileri ve elektrik enerjisi üreticilerini alternatif enerji kaynaklarına yönlendirmektedir.\r\nZaman içerisinde gerek teknolojik gelişmeler gerekse sürdürülebilir bir kaynak olması RAMTAŞ PELET FABRİKAMIZI KÜTAHYA –Gediz’de kurmamız da etkili oldu. Tamamen yerli kendi doğal üretimimizden oluşan talaşlardan üretildiği için arz güvenliği yüksek bir kaynaktır.	pelet-korusan	f	2023-10-18
\.


--
-- Data for Name: korsanapp_project; Type: TABLE DATA; Schema: public; Owner: tugrulvural
--

COPY public.korsanapp_project (id, name, date, "imageField", "imageField1", "imageField2", "imageField3", description) FROM stdin;
1	Çocuk Oyun Grubu	2021-03-25 17:14:53.296037+03	upload/projelerimiz_014.jpeg				Çocuk Oyun Grubu
2	Dinlenme Terası	2021-03-25 17:15:20.078011+03	upload/projelerimiz_013.jpeg				Dinlenme Terası
3	Proje 12	2021-03-25 17:16:04.304583+03	upload/projelerimiz_012.jpeg				Proje 12
4	Kamelya	2021-03-25 17:16:33.02859+03	upload/projelerimiz_011.jpeg				Kamelya
5	Kuş Gözlem Kulesi	2021-03-25 17:16:49.691254+03	upload/projelerimiz_010.jpeg				Kuş Gözlem Kulesi
6	Kır Evleri	2021-03-25 17:17:22.59149+03	upload/projelerimiz_09.jpeg				Kır Evleri
7	Tam Kütük Profil Ahşap Ev	2021-03-25 17:17:38.951246+03	upload/projelerimiz_08.jpeg				Tam Kütük Profil Ahşap Ev
8	Lamine Profil Ahşap Ev	2021-03-25 17:17:57.497417+03	upload/projelerimiz_07.jpeg				Lamine Profil Ahşap Ev
9	Çocuk Oyun Kulübesi	2021-03-25 17:18:14.019323+03	upload/projelerimiz_06_eGEETI0.jpeg				Çocuk Oyun Kulübesi
10	Ev	2021-03-25 17:18:31.592419+03	upload/projelerimiz_05_S1wPSsb.jpeg				Ev
11	Sosyal Tesis	2021-03-25 17:18:50.458204+03	upload/projelerimiz_04_2C6Ogff.jpeg				Sosyal Tesis
12	Ahşap Kalas Ev	2021-03-25 17:19:06.642377+03	upload/projelerimiz_03_vsxlAhX.jpeg				Ahşap Kalas Ev
13	Cafe	2021-03-25 17:19:23.356322+03	upload/projelerimiz_02_RxLtACC.jpeg				Cafe
14	Satış Büfeleri	2021-03-25 17:19:40.411089+03	upload/projelerimiz_01_AI1ogRi.jpeg				Satış Büfeleri
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 40, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: korsanapp_altproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_altproduct_id_seq', 1, false);


--
-- Name: korsanapp_blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_blogs_id_seq', 3, true);


--
-- Name: korsanapp_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_contact_id_seq', 323, true);


--
-- Name: korsanapp_imagefielduplad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_imagefielduplad_id_seq', 1, false);


--
-- Name: korsanapp_mailingmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_mailingmodel_id_seq', 443, true);


--
-- Name: korsanapp_mainteance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_mainteance_id_seq', 1, true);


--
-- Name: korsanapp_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_product_id_seq', 16, true);


--
-- Name: korsanapp_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tugrulvural
--

SELECT pg_catalog.setval('public.korsanapp_project_id_seq', 14, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: korsanapp_altproduct korsanapp_altproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_altproduct
    ADD CONSTRAINT korsanapp_altproduct_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_blogs korsanapp_blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_blogs
    ADD CONSTRAINT korsanapp_blogs_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_contact korsanapp_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_contact
    ADD CONSTRAINT korsanapp_contact_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_imagefielduplad korsanapp_imagefielduplad_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_imagefielduplad
    ADD CONSTRAINT korsanapp_imagefielduplad_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_mailingmodel korsanapp_mailingmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_mailingmodel
    ADD CONSTRAINT korsanapp_mailingmodel_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_mainteance korsanapp_mainteance_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_mainteance
    ADD CONSTRAINT korsanapp_mainteance_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_product korsanapp_product_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_product
    ADD CONSTRAINT korsanapp_product_pkey PRIMARY KEY (id);


--
-- Name: korsanapp_project korsanapp_project_pkey; Type: CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_project
    ADD CONSTRAINT korsanapp_project_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: korsanapp_altproduct_mainProduct_id_bf42f685; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX "korsanapp_altproduct_mainProduct_id_bf42f685" ON public.korsanapp_altproduct USING btree ("mainProduct_id");


--
-- Name: korsanapp_altproduct_slug_14d0c853; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_altproduct_slug_14d0c853 ON public.korsanapp_altproduct USING btree (slug);


--
-- Name: korsanapp_altproduct_slug_14d0c853_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_altproduct_slug_14d0c853_like ON public.korsanapp_altproduct USING btree (slug varchar_pattern_ops);


--
-- Name: korsanapp_blogs_slug_4898fc00; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_blogs_slug_4898fc00 ON public.korsanapp_blogs USING btree (slug);


--
-- Name: korsanapp_blogs_slug_4898fc00_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_blogs_slug_4898fc00_like ON public.korsanapp_blogs USING btree (slug varchar_pattern_ops);


--
-- Name: korsanapp_product_slug_ce4b6553; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_product_slug_ce4b6553 ON public.korsanapp_product USING btree (slug);


--
-- Name: korsanapp_product_slug_ce4b6553_like; Type: INDEX; Schema: public; Owner: tugrulvural
--

CREATE INDEX korsanapp_product_slug_ce4b6553_like ON public.korsanapp_product USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: korsanapp_altproduct korsanapp_altproduct_mainProduct_id_bf42f685_fk_korsanapp; Type: FK CONSTRAINT; Schema: public; Owner: tugrulvural
--

ALTER TABLE ONLY public.korsanapp_altproduct
    ADD CONSTRAINT "korsanapp_altproduct_mainProduct_id_bf42f685_fk_korsanapp" FOREIGN KEY ("mainProduct_id") REFERENCES public.korsanapp_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

