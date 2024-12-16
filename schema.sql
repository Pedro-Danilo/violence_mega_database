--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-12-10 08:38:17

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
-- TOC entry 2 (class 3079 OID 16759)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 345 (class 1259 OID 21442)
-- Name: agricultural_frontier_minagricultura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agricultural_frontier_minagricultura (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    frontier_type character varying(100) NOT NULL,
    area_ha double precision NOT NULL,
    consecutive integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.agricultural_frontier_minagricultura OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 21441)
-- Name: agricultural_frontier_minagricultura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agricultural_frontier_minagricultura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agricultural_frontier_minagricultura_id_seq OWNER TO postgres;

--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 344
-- Name: agricultural_frontier_minagricultura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agricultural_frontier_minagricultura_id_seq OWNED BY public.agricultural_frontier_minagricultura.id;


--
-- TOC entry 339 (class 1259 OID 21386)
-- Name: alluvial_gold_mining_minminas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alluvial_gold_mining_minminas (
    id integer NOT NULL,
    year integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    ha_with_permit double precision NOT NULL,
    ha_peremit_in_process double precision NOT NULL,
    ha_under_illegal_explotation double precision NOT NULL,
    total_explotation double precision NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.alluvial_gold_mining_minminas OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 21385)
-- Name: alluvial_gold_mining_minminas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alluvial_gold_mining_minminas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alluvial_gold_mining_minminas_id_seq OWNER TO postgres;

--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 338
-- Name: alluvial_gold_mining_minminas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alluvial_gold_mining_minminas_id_seq OWNED BY public.alluvial_gold_mining_minminas.id;


--
-- TOC entry 267 (class 1259 OID 20588)
-- Name: arrests_for_ilegal_mining_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arrests_for_ilegal_mining_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.arrests_for_ilegal_mining_mindefensa OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 20587)
-- Name: arrests_for_ilegal_mining_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.arrests_for_ilegal_mining_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arrests_for_ilegal_mining_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 266
-- Name: arrests_for_ilegal_mining_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.arrests_for_ilegal_mining_mindefensa_id_seq OWNED BY public.arrests_for_ilegal_mining_mindefensa.id;


--
-- TOC entry 281 (class 1259 OID 20735)
-- Name: basuco_confiscations_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basuco_confiscations_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount double precision NOT NULL,
    unit character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.basuco_confiscations_mindefensa OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 20734)
-- Name: basuco_confiscations_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basuco_confiscations_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basuco_confiscations_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 280
-- Name: basuco_confiscations_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basuco_confiscations_mindefensa_id_seq OWNED BY public.basuco_confiscations_mindefensa.id;


--
-- TOC entry 273 (class 1259 OID 20639)
-- Name: blowing_up_of_pipelines_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blowing_up_of_pipelines_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.blowing_up_of_pipelines_mindefensa OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 20638)
-- Name: blowing_up_of_pipelines_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blowing_up_of_pipelines_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blowing_up_of_pipelines_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 272
-- Name: blowing_up_of_pipelines_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blowing_up_of_pipelines_mindefensa_id_seq OWNED BY public.blowing_up_of_pipelines_mindefensa.id;


--
-- TOC entry 293 (class 1259 OID 20837)
-- Name: brigge_blowing_up_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brigge_blowing_up_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    type_of_structure character varying(100) NOT NULL,
    year_of_incident integer NOT NULL,
    amount integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.brigge_blowing_up_mindefensa OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 20836)
-- Name: brigge_blowing_up_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brigge_blowing_up_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brigge_blowing_up_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 292
-- Name: brigge_blowing_up_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brigge_blowing_up_mindefensa_id_seq OWNED BY public.brigge_blowing_up_mindefensa.id;


--
-- TOC entry 309 (class 1259 OID 21092)
-- Name: cases_armed_conflict_sievcac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cases_armed_conflict_sievcac (
    case_id integer NOT NULL,
    id_sievcac bigint NOT NULL,
    dane_code character varying(10) NOT NULL,
    year integer NOT NULL,
    type_of_crime character varying(255) NOT NULL,
    injured_civilians double precision,
    total_number_of_victims double precision,
    source_id integer NOT NULL
);


ALTER TABLE public.cases_armed_conflict_sievcac OWNER TO postgres;

--
-- TOC entry 308 (class 1259 OID 21091)
-- Name: cases_armed_conflict_sievcac_case_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cases_armed_conflict_sievcac_case_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cases_armed_conflict_sievcac_case_id_seq OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 308
-- Name: cases_armed_conflict_sievcac_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cases_armed_conflict_sievcac_case_id_seq OWNED BY public.cases_armed_conflict_sievcac.case_id;


--
-- TOC entry 331 (class 1259 OID 21299)
-- Name: censo_2018_personas_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_2018_personas_dane (
    id integer NOT NULL,
    tipo_reg integer NOT NULL,
    ua_clase integer NOT NULL,
    p_nro_per integer NOT NULL,
    p_sexo integer NOT NULL,
    p_edadr integer NOT NULL,
    p_parentescor double precision,
    pa1_grp_etnic integer NOT NULL,
    pa11_cod_etnia double precision,
    pa_lug_nac integer NOT NULL,
    condicion_fisica double precision,
    p_alfabeta double precision,
    pa_asistencia double precision,
    p_nivel_anosr double precision,
    p_trabajo double precision,
    p_est_civil double precision,
    pa1_thnv double precision,
    pa1_thsv double precision,
    pa1_thfc double precision,
    pa_uhnv double precision,
    cod_dep_mpio character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.censo_2018_personas_dane OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 21298)
-- Name: censo_2018_personas_dane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_2018_personas_dane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_2018_personas_dane_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 330
-- Name: censo_2018_personas_dane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_2018_personas_dane_id_seq OWNED BY public.censo_2018_personas_dane.id;


--
-- TOC entry 303 (class 1259 OID 21036)
-- Name: censo_hogares_2018_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_hogares_2018_dane (
    id integer NOT NULL,
    ua_clase bigint NOT NULL,
    h_nrohog double precision,
    h_nro_cuartos double precision,
    h_nro_dormit double precision,
    h_donde_prepalim double precision,
    h_agua_cocin double precision,
    ha_tot_per double precision,
    cod_dep_mpio character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.censo_hogares_2018_dane OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 21035)
-- Name: censo_hogares_2018_dane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_hogares_2018_dane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_hogares_2018_dane_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 302
-- Name: censo_hogares_2018_dane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_hogares_2018_dane_id_seq OWNED BY public.censo_hogares_2018_dane.id;


--
-- TOC entry 305 (class 1259 OID 21054)
-- Name: censo_viviendas_2018_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_viviendas_2018_dane (
    id integer NOT NULL,
    ua_clase bigint NOT NULL,
    uva_estater double precision,
    uva1_tipoter double precision,
    uva_esta_areaprot bigint,
    uva_uso_unidad bigint,
    v_tipo_viv double precision,
    v_con_ocup double precision,
    v_tot_hog double precision,
    v_mat_pared double precision,
    v_mat_piso double precision,
    va_ee double precision,
    va1_estrato double precision,
    vb_acu double precision,
    vc_alc double precision,
    vd_gas double precision,
    ve_recbas double precision,
    ve1_qsem double precision,
    vf_internet double precision,
    v_tipo_sersa double precision,
    l_tot_perl double precision,
    cod_dep_mpio character varying(10),
    source_id integer NOT NULL
);


ALTER TABLE public.censo_viviendas_2018_dane OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 21053)
-- Name: censo_viviendas_2018_dane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_viviendas_2018_dane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_viviendas_2018_dane_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 304
-- Name: censo_viviendas_2018_dane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_viviendas_2018_dane_id_seq OWNED BY public.censo_viviendas_2018_dane.id;


--
-- TOC entry 329 (class 1259 OID 21282)
-- Name: coca_plantations_minjusticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coca_plantations_minjusticia (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    "2001" integer NOT NULL,
    "2002" integer NOT NULL,
    "2003" integer NOT NULL,
    "2004" integer NOT NULL,
    "2005" integer NOT NULL,
    "2006" integer NOT NULL,
    "2007" integer NOT NULL,
    "2008" integer NOT NULL,
    "2009" integer NOT NULL,
    "2010" integer NOT NULL,
    "2011" integer NOT NULL,
    "2012" integer NOT NULL,
    "2013" integer NOT NULL,
    "2014" integer NOT NULL,
    "2015" integer NOT NULL,
    "2016" integer NOT NULL,
    "2017" integer NOT NULL,
    "2018" integer NOT NULL,
    "2019" integer NOT NULL,
    "2020" integer NOT NULL,
    "2021" integer NOT NULL,
    "2022" integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.coca_plantations_minjusticia OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 21281)
-- Name: coca_plantations_minjusticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coca_plantations_minjusticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coca_plantations_minjusticia_id_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 328
-- Name: coca_plantations_minjusticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coca_plantations_minjusticia_id_seq OWNED BY public.coca_plantations_minjusticia.id;


--
-- TOC entry 279 (class 1259 OID 20718)
-- Name: cocaine_base_confiscations_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cocaine_base_confiscations_mindefensa (
    id integer NOT NULL,
    year_of_incident integer NOT NULL,
    amount double precision NOT NULL,
    unit character varying(50) NOT NULL,
    codigo_dane character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.cocaine_base_confiscations_mindefensa OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 20717)
-- Name: cocaine_base_confiscations_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cocaine_base_confiscations_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cocaine_base_confiscations_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 278
-- Name: cocaine_base_confiscations_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cocaine_base_confiscations_mindefensa_id_seq OWNED BY public.cocaine_base_confiscations_mindefensa.id;


--
-- TOC entry 277 (class 1259 OID 20705)
-- Name: cocaine_confiscations_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cocaine_confiscations_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount double precision NOT NULL,
    unit character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.cocaine_confiscations_mindefensa OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 20704)
-- Name: cocaine_confiscations_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cocaine_confiscations_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cocaine_confiscations_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 276
-- Name: cocaine_confiscations_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cocaine_confiscations_mindefensa_id_seq OWNED BY public.cocaine_confiscations_mindefensa.id;


--
-- TOC entry 274 (class 1259 OID 20670)
-- Name: confiscation_of_mariajuana_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.confiscation_of_mariajuana_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.confiscation_of_mariajuana_id_seq OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 20671)
-- Name: confiscation_of_mariajuana_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confiscation_of_mariajuana_mindefensa (
    id integer DEFAULT nextval('public.confiscation_of_mariajuana_id_seq'::regclass) NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount double precision NOT NULL,
    unit character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.confiscation_of_mariajuana_mindefensa OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 20207)
-- Name: crime_news_fiscalia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crime_news_fiscalia (
    id integer NOT NULL,
    crime_severity integer,
    year_of_incident integer,
    crime_type text,
    crime_group character varying(255),
    dept_mpio_code character varying(10),
    source_id integer
);


ALTER TABLE public.crime_news_fiscalia OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 20206)
-- Name: crime_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.crime_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crime_data_id_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 224
-- Name: crime_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.crime_data_id_seq OWNED BY public.crime_news_fiscalia.id;


--
-- TOC entry 221 (class 1259 OID 17836)
-- Name: data_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_source (
    source_id integer NOT NULL,
    source_name character varying(100) NOT NULL,
    description text,
    import_date date NOT NULL,
    origin character varying(255),
    dataset_url character varying(255),
    end_point_url character varying(255),
    start_date date,
    end_date date
);


ALTER TABLE public.data_source OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 20501)
-- Name: deaths_in_public_forces_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deaths_in_public_forces_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    action character varying(255) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.deaths_in_public_forces_mindefensa OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 20500)
-- Name: deaths_in_public_forces_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deaths_in_public_forces_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deaths_in_public_forces_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 256
-- Name: deaths_in_public_forces_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deaths_in_public_forces_mindefensa_id_seq OWNED BY public.deaths_in_public_forces_mindefensa.id;


--
-- TOC entry 222 (class 1259 OID 17844)
-- Name: departments_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments_dane (
    dept_code character varying(10) NOT NULL,
    dept_name character varying(100),
    source_1 integer,
    source_2 integer
);


ALTER TABLE public.departments_dane OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 20769)
-- Name: destroyed_labs_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.destroyed_labs_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10),
    year_of_incident integer,
    amount bigint,
    unit character varying(255),
    source_id integer
);


ALTER TABLE public.destroyed_labs_mindefensa OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 20768)
-- Name: destroyed_labs_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.destroyed_labs_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.destroyed_labs_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 284
-- Name: destroyed_labs_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.destroyed_labs_mindefensa_id_seq OWNED BY public.destroyed_labs_mindefensa.id;


--
-- TOC entry 241 (class 1259 OID 20355)
-- Name: domestic_violence_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domestic_violence_polinal (
    id integer NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    age_group character varying(50) NOT NULL,
    amount bigint NOT NULL,
    dane_code character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.domestic_violence_polinal OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 20354)
-- Name: domestic_violence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domestic_violence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domestic_violence_id_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 240
-- Name: domestic_violence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domestic_violence_id_seq OWNED BY public.domestic_violence_polinal.id;


--
-- TOC entry 243 (class 1259 OID 20372)
-- Name: drug_seizure_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drug_seizure_polinal (
    id integer NOT NULL,
    dane_code character varying(10),
    year_of_incident integer,
    type_of_drug character varying(255),
    amount numeric,
    source_id integer
);


ALTER TABLE public.drug_seizure_polinal OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 20371)
-- Name: drug_seizure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.drug_seizure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drug_seizure_id_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 242
-- Name: drug_seizure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.drug_seizure_id_seq OWNED BY public.drug_seizure_polinal.id;


--
-- TOC entry 325 (class 1259 OID 21248)
-- Name: early_childhood_indicators_mineducacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.early_childhood_indicators_mineducacion (
    id integer NOT NULL,
    year integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    ind_1_icbf_children integer NOT NULL,
    ind_2_prescholar_children integer NOT NULL,
    ind_3_total_children integer NOT NULL,
    ind_4_overlaping_services character varying(255),
    source_id integer NOT NULL
);


ALTER TABLE public.early_childhood_indicators_mineducacion OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 21247)
-- Name: early_childhood_indicators_mineducacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.early_childhood_indicators_mineducacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.early_childhood_indicators_mineducacion_id_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 324
-- Name: early_childhood_indicators_mineducacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.early_childhood_indicators_mineducacion_id_seq OWNED BY public.early_childhood_indicators_mineducacion.id;


--
-- TOC entry 327 (class 1259 OID 21265)
-- Name: educational_indicators_mineducacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.educational_indicators_mineducacion (
    id integer NOT NULL,
    year integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    poblacion_5_16 bigint,
    tasa_matricula_5_16 double precision,
    cobertura_neta double precision,
    cobertura_neta_transicion double precision,
    cobertura_neta_primaria double precision,
    cobertura_neta_secundaria double precision,
    cobertura_neta_media double precision,
    cobertura_bruta double precision,
    cobertura_bruta_transicion double precision,
    cobertura_bruta_primaria double precision,
    cobertura_bruta_secundaria double precision,
    cobertura_bruta_media double precision,
    tamano_promedio_de_grupo double precision,
    sedes_conectadas_a_internet double precision,
    desercion double precision,
    desercion_transicion double precision,
    desercion_primaria double precision,
    desercion_secundaria double precision,
    desercion_media double precision,
    aprobacion double precision,
    aprobacion_transicion double precision,
    aprobacion_primaria double precision,
    aprobacion_secundaria double precision,
    aprobacion_media double precision,
    reprobacion double precision,
    reprobacion_transicion double precision,
    reprobacion_primaria double precision,
    reprobacion_secundaria double precision,
    reprobacion_media double precision,
    repitencia double precision,
    repitencia_transicion double precision,
    repitencia_primaria double precision,
    repitencia_secundaria double precision,
    repitencia_media double precision,
    source_id integer NOT NULL
);


ALTER TABLE public.educational_indicators_mineducacion OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 21264)
-- Name: educational_indicators_mineducacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.educational_indicators_mineducacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.educational_indicators_mineducacion_id_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 326
-- Name: educational_indicators_mineducacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.educational_indicators_mineducacion_id_seq OWNED BY public.educational_indicators_mineducacion.id;


--
-- TOC entry 263 (class 1259 OID 20552)
-- Name: environmental_crimes_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.environmental_crimes_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    descripcion_conducta text NOT NULL,
    area character varying(100) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.environmental_crimes_mindefensa OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 20551)
-- Name: environmental_crimes_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.environmental_crimes_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.environmental_crimes_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 262
-- Name: environmental_crimes_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.environmental_crimes_mindefensa_id_seq OWNED BY public.environmental_crimes_mindefensa.id;


--
-- TOC entry 287 (class 1259 OID 20786)
-- Name: eradication_of_illicit_crops_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eradication_of_illicit_crops_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    type_of_crop character varying(255) NOT NULL,
    amount double precision,
    unit character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.eradication_of_illicit_crops_mindefensa OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 20785)
-- Name: eradication_of_illicit_crops_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eradication_of_illicit_crops_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eradication_of_illicit_crops_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 286
-- Name: eradication_of_illicit_crops_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eradication_of_illicit_crops_mindefensa_id_seq OWNED BY public.eradication_of_illicit_crops_mindefensa.id;


--
-- TOC entry 265 (class 1259 OID 20571)
-- Name: extortion_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.extortion_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.extortion_mindefensa OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 20570)
-- Name: extortion_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.extortion_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extortion_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 264
-- Name: extortion_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.extortion_mindefensa_id_seq OWNED BY public.extortion_mindefensa.id;


--
-- TOC entry 323 (class 1259 OID 21228)
-- Name: familias_en_accion_prosperidad_social; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.familias_en_accion_prosperidad_social (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    condition character varying(255),
    ethnic_group character varying(255),
    year integer,
    gender character varying(50),
    educational_level character varying(255),
    type_of_benefit_assignment character varying(255),
    type_of_benefit character varying(255),
    type_of_population character varying(255),
    consolidated_benefit_range_assigned character varying(255),
    last_beneficit_range character varying(255),
    age character varying(50),
    number_of_beneficiaries bigint,
    source_id integer NOT NULL
);


ALTER TABLE public.familias_en_accion_prosperidad_social OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 21227)
-- Name: familias_en_accion_prosperidad_social_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.familias_en_accion_prosperidad_social_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.familias_en_accion_prosperidad_social_id_seq OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 322
-- Name: familias_en_accion_prosperidad_social_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.familias_en_accion_prosperidad_social_id_seq OWNED BY public.familias_en_accion_prosperidad_social.id;


--
-- TOC entry 295 (class 1259 OID 20854)
-- Name: fatal_injuries_med_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fatal_injuries_med_legal (
    id integer NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    cause_of_death character varying(255) NOT NULL,
    age_group character varying(50) NOT NULL,
    dane_code character varying(10) NOT NULL,
    source_1 integer NOT NULL,
    source_2 integer NOT NULL,
    source_3 integer NOT NULL,
    source_4 integer NOT NULL,
    source_5 integer NOT NULL,
    source_6 integer NOT NULL
);


ALTER TABLE public.fatal_injuries_med_legal OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 20853)
-- Name: fatal_injuries_med_legal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fatal_injuries_med_legal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fatal_injuries_med_legal_id_seq OWNER TO postgres;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 294
-- Name: fatal_injuries_med_legal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fatal_injuries_med_legal_id_seq OWNED BY public.fatal_injuries_med_legal.id;


--
-- TOC entry 220 (class 1259 OID 17835)
-- Name: fuentedatos_id_fuente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fuentedatos_id_fuente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuentedatos_id_fuente_seq OWNER TO postgres;

--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 220
-- Name: fuentedatos_id_fuente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fuentedatos_id_fuente_seq OWNED BY public.data_source.source_id;


--
-- TOC entry 317 (class 1259 OID 21160)
-- Name: health_insurance_affiliated_adres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_insurance_affiliated_adres (
    id integer NOT NULL,
    tps_gnr_nombre character varying(255) NOT NULL,
    tps_grp_etr_id character varying(255) NOT NULL,
    ent_id character varying(255) NOT NULL,
    ent_nombre character varying(255) NOT NULL,
    tps_rgm_nombre character varying(255) NOT NULL,
    tps_afl_nombre character varying(255) NOT NULL,
    tps_est_afl_nombre character varying(255) NOT NULL,
    tps_cnd_bnf_nombre character varying(255) NOT NULL,
    zns_nombre character varying(255) NOT NULL,
    tps_nvl_ssb_id character varying(255) NOT NULL,
    tps_grp_pbl_id character varying(255) NOT NULL,
    cantidad integer NOT NULL,
    codigo_dane character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.health_insurance_affiliated_adres OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 21159)
-- Name: health_insurance_affiliated_adres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.health_insurance_affiliated_adres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.health_insurance_affiliated_adres_id_seq OWNER TO postgres;

--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 316
-- Name: health_insurance_affiliated_adres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.health_insurance_affiliated_adres_id_seq OWNED BY public.health_insurance_affiliated_adres.id;


--
-- TOC entry 235 (class 1259 OID 20304)
-- Name: home_and_business_theft_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_and_business_theft_polinal (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    age_group character varying(50) NOT NULL,
    theft_modality character varying(255) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.home_and_business_theft_polinal OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 20303)
-- Name: home_and_business_theft_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_and_business_theft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_and_business_theft_id_seq OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 234
-- Name: home_and_business_theft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_and_business_theft_id_seq OWNED BY public.home_and_business_theft_polinal.id;


--
-- TOC entry 229 (class 1259 OID 20249)
-- Name: indicted_count_fiscalia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicted_count_fiscalia (
    id integer NOT NULL,
    year_of_incident integer,
    crime_type text,
    crime_group character varying(255),
    sex character varying(50),
    age_group character varying(50),
    total_indicted bigint,
    dept_mpio_code character varying(10),
    source_id integer
);


ALTER TABLE public.indicted_count_fiscalia OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 20248)
-- Name: indicted_count_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicted_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicted_count_id_seq OWNER TO postgres;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 228
-- Name: indicted_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicted_count_id_seq OWNED BY public.indicted_count_fiscalia.id;


--
-- TOC entry 291 (class 1259 OID 20820)
-- Name: intervened_mines_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intervened_mines_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.intervened_mines_mindefensa OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 20819)
-- Name: intervened_mines_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.intervened_mines_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.intervened_mines_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 290
-- Name: intervened_mines_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.intervened_mines_mindefensa_id_seq OWNED BY public.intervened_mines_mindefensa.id;


--
-- TOC entry 261 (class 1259 OID 20535)
-- Name: kidnapping_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kidnapping_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    kidnapping_class character varying(255) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.kidnapping_mindefensa OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 20534)
-- Name: kidnapping_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kidnapping_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kidnapping_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 260
-- Name: kidnapping_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kidnapping_mindefensa_id_seq OWNED BY public.kidnapping_mindefensa.id;


--
-- TOC entry 289 (class 1259 OID 20803)
-- Name: land_piracy_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.land_piracy_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    area character varying(255),
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.land_piracy_mindefensa OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 20802)
-- Name: land_piracy_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.land_piracy_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.land_piracy_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 288
-- Name: land_piracy_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.land_piracy_mindefensa_id_seq OWNED BY public.land_piracy_mindefensa.id;


--
-- TOC entry 333 (class 1259 OID 21333)
-- Name: land_restitution_claims_minagricultura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.land_restitution_claims_minagricultura (
    id integer NOT NULL,
    codigodane character varying(10) NOT NULL,
    numerodesolicitantes integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.land_restitution_claims_minagricultura OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 21332)
-- Name: land_restitution_claims_minagricultura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.land_restitution_claims_minagricultura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.land_restitution_claims_minagricultura_id_seq OWNER TO postgres;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 332
-- Name: land_restitution_claims_minagricultura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.land_restitution_claims_minagricultura_id_seq OWNED BY public.land_restitution_claims_minagricultura.id;


--
-- TOC entry 283 (class 1259 OID 20752)
-- Name: liquid_inputs_confiscations_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liquid_inputs_confiscations_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount double precision NOT NULL,
    unit character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.liquid_inputs_confiscations_mindefensa OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 20751)
-- Name: liquid_inputs_confiscations_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liquid_inputs_confiscations_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.liquid_inputs_confiscations_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 282
-- Name: liquid_inputs_confiscations_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liquid_inputs_confiscations_mindefensa_id_seq OWNED BY public.liquid_inputs_confiscations_mindefensa.id;


--
-- TOC entry 335 (class 1259 OID 21350)
-- Name: livestock_count_minagricultura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livestock_count_minagricultura (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year integer NOT NULL,
    species character varying(100) NOT NULL,
    total integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.livestock_count_minagricultura OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 21349)
-- Name: livestock_count_minagricultura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livestock_count_minagricultura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.livestock_count_minagricultura_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 334
-- Name: livestock_count_minagricultura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livestock_count_minagricultura_id_seq OWNED BY public.livestock_count_minagricultura.id;


--
-- TOC entry 255 (class 1259 OID 20484)
-- Name: massacres_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.massacres_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    area character varying(100),
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.massacres_mindefensa OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 20483)
-- Name: massacres_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.massacres_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.massacres_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 254
-- Name: massacres_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.massacres_mindefensa_id_seq OWNED BY public.massacres_mindefensa.id;


--
-- TOC entry 249 (class 1259 OID 20432)
-- Name: missing_people_med_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.missing_people_med_legal (
    id integer NOT NULL,
    current_status character varying(255) NOT NULL,
    year_of_incident integer NOT NULL,
    age_group character varying(50),
    sex integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.missing_people_med_legal OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 20431)
-- Name: missing_people_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.missing_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.missing_people_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 248
-- Name: missing_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.missing_people_id_seq OWNED BY public.missing_people_med_legal.id;


--
-- TOC entry 341 (class 1259 OID 21403)
-- Name: mobile_coverage_mintic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobile_coverage_mintic (
    id integer NOT NULL,
    year integer NOT NULL,
    suplier character varying(255) NOT NULL,
    dane_code character varying(10) NOT NULL,
    municipal_capital character varying(100),
    town character varying(100),
    "2G" character varying(50),
    "3G" character varying(50),
    hspa_hspa_dc character varying(50),
    "4G" character varying(50),
    lte character varying(50),
    "5G" character varying(50),
    source_id integer NOT NULL
);


ALTER TABLE public.mobile_coverage_mintic OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 21402)
-- Name: mobile_coverage_mintic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobile_coverage_mintic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobile_coverage_mintic_id_seq OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 340
-- Name: mobile_coverage_mintic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobile_coverage_mintic_id_seq OWNED BY public.mobile_coverage_mintic.id;


--
-- TOC entry 319 (class 1259 OID 21179)
-- Name: mortality_and_morbidity_rates_minsalud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mortality_and_morbidity_rates_minsalud (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    indicator_name character varying(255) NOT NULL,
    year double precision,
    indicator_values double precision,
    source_id integer NOT NULL
);


ALTER TABLE public.mortality_and_morbidity_rates_minsalud OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 21178)
-- Name: mortality_and_morbidity_rates_minsalud_adres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mortality_and_morbidity_rates_minsalud_adres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mortality_and_morbidity_rates_minsalud_adres_id_seq OWNER TO postgres;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 318
-- Name: mortality_and_morbidity_rates_minsalud_adres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mortality_and_morbidity_rates_minsalud_adres_id_seq OWNED BY public.mortality_and_morbidity_rates_minsalud.id;


--
-- TOC entry 343 (class 1259 OID 21423)
-- Name: municipal_performance_measure_dnp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipal_performance_measure_dnp (
    id integer NOT NULL,
    indicator character varying(255) NOT NULL,
    dane_code character varying(10) NOT NULL,
    value double precision,
    label character varying(255),
    year integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.municipal_performance_measure_dnp OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 21422)
-- Name: municipal_performance_measure_dnp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipal_performance_measure_dnp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipal_performance_measure_dnp_id_seq OWNER TO postgres;

--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 342
-- Name: municipal_performance_measure_dnp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipal_performance_measure_dnp_id_seq OWNED BY public.municipal_performance_measure_dnp.id;


--
-- TOC entry 347 (class 1259 OID 21461)
-- Name: municipal_population_projections_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipal_population_projections_dane (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year integer NOT NULL,
    geographic_area character varying(255),
    population double precision,
    source_id integer NOT NULL
);


ALTER TABLE public.municipal_population_projections_dane OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 21460)
-- Name: municipal_population_projections_dane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipal_population_projections_dane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipal_population_projections_dane_id_seq OWNER TO postgres;

--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 346
-- Name: municipal_population_projections_dane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipal_population_projections_dane_id_seq OWNED BY public.municipal_population_projections_dane.id;


--
-- TOC entry 223 (class 1259 OID 17904)
-- Name: municipalities_dane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipalities_dane (
    dept_mpio_code character varying(10) NOT NULL,
    mupio_code character varying(10),
    dept_code character varying(10),
    mupio_name character varying(50),
    mupio_area double precision,
    perimeter double precision,
    shape_area double precision,
    geometry public.geometry,
    mupal_head public.geometry,
    source_1 integer,
    source_2 integer
);


ALTER TABLE public.municipalities_dane OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 20467)
-- Name: murders_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.murders_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    sex character varying(50) NOT NULL,
    area character varying(50) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.murders_mindefensa OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 20466)
-- Name: murders_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.murders_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murders_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 252
-- Name: murders_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.murders_mindefensa_id_seq OWNED BY public.murders_mindefensa.id;


--
-- TOC entry 297 (class 1259 OID 20897)
-- Name: non_fatal_injuries_med_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.non_fatal_injuries_med_legal (
    id integer NOT NULL,
    year_of_incident integer,
    sex character varying(50),
    cause_of_injury character varying(255),
    age_group character varying(50),
    dane_code character varying(10),
    source_1 integer,
    source_2 integer,
    source_3 integer,
    source_4 integer,
    source_5 integer,
    source_6 integer,
    source_7 integer,
    source_8 integer
);


ALTER TABLE public.non_fatal_injuries_med_legal OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 20896)
-- Name: non_fatal_injuries_med_legal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.non_fatal_injuries_med_legal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.non_fatal_injuries_med_legal_id_seq OWNER TO postgres;

--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 296
-- Name: non_fatal_injuries_med_legal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.non_fatal_injuries_med_legal_id_seq OWNED BY public.non_fatal_injuries_med_legal.id;


--
-- TOC entry 251 (class 1259 OID 20449)
-- Name: personal_injury_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_injury_polinal (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    age_group character varying(50) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.personal_injury_polinal OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 20448)
-- Name: personal_injury_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_injury_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_injury_id_seq OWNER TO postgres;

--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 250
-- Name: personal_injury_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_injury_id_seq OWNED BY public.personal_injury_polinal.id;


--
-- TOC entry 321 (class 1259 OID 21197)
-- Name: preschool_primary_secondary_education_mineducacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preschool_primary_secondary_education_mineducacion (
    id integer NOT NULL,
    year integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    educational_institution_dane_code bigint NOT NULL,
    educational_institution_name character varying(255),
    sector character varying(50),
    calendar character varying(50),
    institution_name character varying(255),
    area character varying(50),
    shift_type character varying(50),
    level character varying(50),
    speciallity character varying(100),
    age integer NOT NULL,
    gender character varying(20),
    ethnic_group character varying(50),
    total_enrollment integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.preschool_primary_secondary_education_mineducacion OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 21196)
-- Name: preschool_primary_secondary_education_mineducacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preschool_primary_secondary_education_mineducacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preschool_primary_secondary_education_mineducacion_id_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 320
-- Name: preschool_primary_secondary_education_mineducacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preschool_primary_secondary_education_mineducacion_id_seq OWNED BY public.preschool_primary_secondary_education_mineducacion.id;


--
-- TOC entry 231 (class 1259 OID 20270)
-- Name: sexual_crimes_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sexual_crimes_polinal (
    id integer NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    age_group character varying(50) NOT NULL,
    amount bigint NOT NULL,
    crime_type character varying(255) NOT NULL,
    dane_code character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.sexual_crimes_polinal OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 20269)
-- Name: sexual_crimes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sexual_crimes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sexual_crimes_id_seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 230
-- Name: sexual_crimes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sexual_crimes_id_seq OWNED BY public.sexual_crimes_polinal.id;


--
-- TOC entry 311 (class 1259 OID 21109)
-- Name: sisben_iv_hogares_dnp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sisben_iv_hogares_dnp (
    id integer NOT NULL,
    cod_mpio character varying(10) NOT NULL,
    zona integer NOT NULL,
    llave integer NOT NULL,
    corte character varying(50) NOT NULL,
    hogar integer NOT NULL,
    fex double precision NOT NULL,
    hog001 integer NOT NULL,
    hog002 integer NOT NULL,
    hog003 integer NOT NULL,
    hog004 integer NOT NULL,
    hog005 integer NOT NULL,
    hog006 integer NOT NULL,
    hog007 integer NOT NULL,
    hog008 integer NOT NULL,
    hog009 integer NOT NULL,
    hog010 integer NOT NULL,
    hog011 integer NOT NULL,
    hog012 integer NOT NULL,
    hog013 integer NOT NULL,
    hog014 integer NOT NULL,
    hog015 integer NOT NULL,
    hog016 integer NOT NULL,
    hog017 integer NOT NULL,
    hog018 integer NOT NULL,
    hog019 integer NOT NULL,
    hog020 integer NOT NULL,
    hog021 integer NOT NULL,
    hog022 integer NOT NULL,
    hog023 integer NOT NULL,
    hog024 integer NOT NULL,
    hog025 integer NOT NULL,
    hog026 integer NOT NULL,
    hog027 integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.sisben_iv_hogares_dnp OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 21108)
-- Name: sisben_iv_hogares_dnp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sisben_iv_hogares_dnp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sisben_iv_hogares_dnp_id_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 310
-- Name: sisben_iv_hogares_dnp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sisben_iv_hogares_dnp_id_seq OWNED BY public.sisben_iv_hogares_dnp.id;


--
-- TOC entry 315 (class 1259 OID 21143)
-- Name: sisben_iv_personas_dnp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sisben_iv_personas_dnp (
    id integer NOT NULL,
    cod_mpio character varying(10) NOT NULL,
    h_5 integer,
    i1 integer,
    i2 integer,
    i3 integer,
    i4 integer,
    i5 integer,
    i6 integer,
    i7 integer,
    i8 integer,
    i9 integer,
    i10 integer,
    i11 integer,
    i12 integer,
    i13 integer,
    i14 integer,
    i15 integer,
    grupo character varying(50),
    nivel integer,
    clasificacion character varying(50),
    zona integer,
    llave integer,
    corte character varying(50),
    hogar integer,
    orden integer,
    fex double precision,
    per001 integer,
    per002 integer,
    per003 integer,
    per004 integer,
    per005 integer,
    per005b integer,
    per006 integer,
    per006b integer,
    per007 integer,
    per008 integer,
    per009 integer,
    per010 integer,
    per011 integer,
    per012 integer,
    per013 integer,
    per014 integer,
    per015 integer,
    per016 integer,
    per017 integer,
    per018 integer,
    per019 integer,
    per020 integer,
    source_id integer NOT NULL
);


ALTER TABLE public.sisben_iv_personas_dnp OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 21142)
-- Name: sisben_iv_personas_dnp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sisben_iv_personas_dnp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sisben_iv_personas_dnp_id_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 314
-- Name: sisben_iv_personas_dnp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sisben_iv_personas_dnp_id_seq OWNED BY public.sisben_iv_personas_dnp.id;


--
-- TOC entry 313 (class 1259 OID 21126)
-- Name: sisben_iv_viviendas_dnp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sisben_iv_viviendas_dnp (
    id integer NOT NULL,
    cod_mpio character varying(10) NOT NULL,
    zona integer NOT NULL,
    llave integer NOT NULL,
    corte character varying(50) NOT NULL,
    fex double precision NOT NULL,
    viv001 integer NOT NULL,
    viv002 integer NOT NULL,
    viv003 integer NOT NULL,
    viv004 integer NOT NULL,
    viv005 integer NOT NULL,
    viv006 integer NOT NULL,
    viv007 integer NOT NULL,
    viv008 integer NOT NULL,
    viv009 integer NOT NULL,
    viv010 integer NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.sisben_iv_viviendas_dnp OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 21125)
-- Name: sisben_iv_viviendas_dnp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sisben_iv_viviendas_dnp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sisben_iv_viviendas_dnp_id_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 312
-- Name: sisben_iv_viviendas_dnp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sisben_iv_viviendas_dnp_id_seq OWNED BY public.sisben_iv_viviendas_dnp.id;


--
-- TOC entry 245 (class 1259 OID 20397)
-- Name: terrorism_crimes_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terrorism_crimes_polinal (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    used_weapons character varying(255) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.terrorism_crimes_polinal OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 20396)
-- Name: terrorism_crimes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.terrorism_crimes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terrorism_crimes_id_seq OWNER TO postgres;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 244
-- Name: terrorism_crimes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.terrorism_crimes_id_seq OWNED BY public.terrorism_crimes_polinal.id;


--
-- TOC entry 269 (class 1259 OID 20605)
-- Name: terrorism_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terrorism_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    area character varying(100),
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.terrorism_mindefensa OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 20604)
-- Name: terrorism_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.terrorism_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terrorism_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 268
-- Name: terrorism_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.terrorism_mindefensa_id_seq OWNED BY public.terrorism_mindefensa.id;


--
-- TOC entry 237 (class 1259 OID 20321)
-- Name: theft_by_modality_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theft_by_modality_polinal (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50),
    age_group character varying(50),
    amount bigint,
    modality_of_theft character varying(255),
    source_id integer
);


ALTER TABLE public.theft_by_modality_polinal OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 20320)
-- Name: theft_by_modality_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.theft_by_modality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theft_by_modality_id_seq OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 236
-- Name: theft_by_modality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.theft_by_modality_id_seq OWNED BY public.theft_by_modality_polinal.id;


--
-- TOC entry 271 (class 1259 OID 20622)
-- Name: theft_from_financial_institutions_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theft_from_financial_institutions_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.theft_from_financial_institutions_mindefensa OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 20621)
-- Name: theft_from_financial_institutions_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.theft_from_financial_institutions_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theft_from_financial_institutions_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 270
-- Name: theft_from_financial_institutions_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.theft_from_financial_institutions_mindefensa_id_seq OWNED BY public.theft_from_financial_institutions_mindefensa.id;


--
-- TOC entry 259 (class 1259 OID 20518)
-- Name: theft_from_people_mindefensa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theft_from_people_mindefensa (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.theft_from_people_mindefensa OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 20517)
-- Name: theft_from_people_mindefensa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.theft_from_people_mindefensa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theft_from_people_mindefensa_id_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 258
-- Name: theft_from_people_mindefensa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.theft_from_people_mindefensa_id_seq OWNED BY public.theft_from_people_mindefensa.id;


--
-- TOC entry 247 (class 1259 OID 20415)
-- Name: threat_crimes_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.threat_crimes_polinal (
    id integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    year_of_incident integer NOT NULL,
    sex character varying(50) NOT NULL,
    age_group character varying(50) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.threat_crimes_polinal OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 20414)
-- Name: threat_crimes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.threat_crimes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.threat_crimes_id_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 246
-- Name: threat_crimes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.threat_crimes_id_seq OWNED BY public.threat_crimes_polinal.id;


--
-- TOC entry 233 (class 1259 OID 20287)
-- Name: vehicle_theft_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehicle_theft_polinal (
    id integer NOT NULL,
    year_of_incident integer NOT NULL,
    tipo_de_hurto character varying(255) NOT NULL,
    amount bigint NOT NULL,
    dane_code character varying(10) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.vehicle_theft_polinal OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 20286)
-- Name: vehicle_theft_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehicle_theft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicle_theft_id_seq OWNER TO postgres;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 232
-- Name: vehicle_theft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehicle_theft_id_seq OWNED BY public.vehicle_theft_polinal.id;


--
-- TOC entry 227 (class 1259 OID 20228)
-- Name: victim_count_fiscalia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.victim_count_fiscalia (
    id integer NOT NULL,
    year_of_incident integer,
    crime_type text,
    crime_group character varying(255),
    sex character varying(50),
    age_group character varying(50),
    total_victims bigint,
    dept_mpio_code character varying(10),
    source_id integer
);


ALTER TABLE public.victim_count_fiscalia OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 20227)
-- Name: victim_count_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.victim_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.victim_count_id_seq OWNER TO postgres;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 226
-- Name: victim_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.victim_count_id_seq OWNED BY public.victim_count_fiscalia.id;


--
-- TOC entry 307 (class 1259 OID 21073)
-- Name: victims_armed_conflict_sievcac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.victims_armed_conflict_sievcac (
    id integer NOT NULL,
    id_sievcac bigint NOT NULL,
    dane_code character varying(10) NOT NULL,
    year integer NOT NULL,
    type_of_crime character varying(255) NOT NULL,
    sex character varying(50),
    age character varying(50),
    ethnic_group character varying(100),
    occupation character varying(100),
    source_id integer NOT NULL
);


ALTER TABLE public.victims_armed_conflict_sievcac OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 21072)
-- Name: victims_armed_conflict_sievcac_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.victims_armed_conflict_sievcac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.victims_armed_conflict_sievcac_id_seq OWNER TO postgres;

--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 306
-- Name: victims_armed_conflict_sievcac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.victims_armed_conflict_sievcac_id_seq OWNED BY public.victims_armed_conflict_sievcac.id;


--
-- TOC entry 301 (class 1259 OID 21017)
-- Name: victims_by_type_of_crime_unidadvictimas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.victims_by_type_of_crime_unidadvictimas (
    id integer NOT NULL,
    cut_off_age character varying NOT NULL,
    dane_code character varying NOT NULL,
    type_of_crime character varying NOT NULL,
    ethnic_group character varying NOT NULL,
    sex character varying NOT NULL,
    age character varying NOT NULL,
    people_per_occurrence double precision NOT NULL,
    people_per_declaration double precision NOT NULL,
    number_of_victims double precision NOT NULL,
    people_under_attention double precision NOT NULL,
    number_of_events double precision NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.victims_by_type_of_crime_unidadvictimas OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 21016)
-- Name: victims_by_type_of_crime_unidadvictimas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.victims_by_type_of_crime_unidadvictimas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.victims_by_type_of_crime_unidadvictimas_id_seq OWNER TO postgres;

--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 300
-- Name: victims_by_type_of_crime_unidadvictimas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.victims_by_type_of_crime_unidadvictimas_id_seq OWNED BY public.victims_by_type_of_crime_unidadvictimas.id;


--
-- TOC entry 299 (class 1259 OID 20961)
-- Name: victims_municipal_events_unidadvictimas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.victims_municipal_events_unidadvictimas (
    event_id integer NOT NULL,
    cut_off_age character varying(255),
    dane_code character varying(10) NOT NULL,
    sex character varying(50),
    ethnic_group character varying(100),
    age character varying(50),
    people_per_occurrence double precision,
    people_per_declaration double precision,
    number_of_victims double precision,
    people_under_atention double precision,
    number_of_events double precision,
    source_id integer NOT NULL
);


ALTER TABLE public.victims_municipal_events_unidadvictimas OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 20960)
-- Name: victims_municipal_events_unidadvictimas_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.victims_municipal_events_unidadvictimas_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.victims_municipal_events_unidadvictimas_event_id_seq OWNER TO postgres;

--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 298
-- Name: victims_municipal_events_unidadvictimas_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.victims_municipal_events_unidadvictimas_event_id_seq OWNED BY public.victims_municipal_events_unidadvictimas.event_id;


--
-- TOC entry 337 (class 1259 OID 21369)
-- Name: water_quality_risk_insalud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.water_quality_risk_insalud (
    id integer NOT NULL,
    year integer NOT NULL,
    dane_code character varying(10) NOT NULL,
    number_of_samples integer NOT NULL,
    irca double precision NOT NULL,
    risk_level character varying(50) NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.water_quality_risk_insalud OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 21368)
-- Name: water_quality_risk_insalud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.water_quality_risk_insalud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.water_quality_risk_insalud_id_seq OWNER TO postgres;

--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 336
-- Name: water_quality_risk_insalud_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.water_quality_risk_insalud_id_seq OWNED BY public.water_quality_risk_insalud.id;


--
-- TOC entry 239 (class 1259 OID 20338)
-- Name: weapons_confiscation_polinal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weapons_confiscation_polinal (
    id integer NOT NULL,
    dane_code character varying(10),
    year_of_incident integer NOT NULL,
    type_of_weapon character varying(255) NOT NULL,
    amount bigint NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.weapons_confiscation_polinal OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 20337)
-- Name: weapons_confiscation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weapons_confiscation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weapons_confiscation_id_seq OWNER TO postgres;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 238
-- Name: weapons_confiscation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weapons_confiscation_id_seq OWNED BY public.weapons_confiscation_polinal.id;


--
-- TOC entry 4476 (class 2604 OID 21445)
-- Name: agricultural_frontier_minagricultura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agricultural_frontier_minagricultura ALTER COLUMN id SET DEFAULT nextval('public.agricultural_frontier_minagricultura_id_seq'::regclass);


--
-- TOC entry 4473 (class 2604 OID 21389)
-- Name: alluvial_gold_mining_minminas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alluvial_gold_mining_minminas ALTER COLUMN id SET DEFAULT nextval('public.alluvial_gold_mining_minminas_id_seq'::regclass);


--
-- TOC entry 4437 (class 2604 OID 20591)
-- Name: arrests_for_ilegal_mining_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrests_for_ilegal_mining_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.arrests_for_ilegal_mining_mindefensa_id_seq'::regclass);


--
-- TOC entry 4444 (class 2604 OID 20738)
-- Name: basuco_confiscations_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basuco_confiscations_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.basuco_confiscations_mindefensa_id_seq'::regclass);


--
-- TOC entry 4440 (class 2604 OID 20642)
-- Name: blowing_up_of_pipelines_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blowing_up_of_pipelines_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.blowing_up_of_pipelines_mindefensa_id_seq'::regclass);


--
-- TOC entry 4450 (class 2604 OID 20840)
-- Name: brigge_blowing_up_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigge_blowing_up_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.brigge_blowing_up_mindefensa_id_seq'::regclass);


--
-- TOC entry 4458 (class 2604 OID 21095)
-- Name: cases_armed_conflict_sievcac case_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cases_armed_conflict_sievcac ALTER COLUMN case_id SET DEFAULT nextval('public.cases_armed_conflict_sievcac_case_id_seq'::regclass);


--
-- TOC entry 4469 (class 2604 OID 21302)
-- Name: censo_2018_personas_dane id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_2018_personas_dane ALTER COLUMN id SET DEFAULT nextval('public.censo_2018_personas_dane_id_seq'::regclass);


--
-- TOC entry 4455 (class 2604 OID 21039)
-- Name: censo_hogares_2018_dane id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hogares_2018_dane ALTER COLUMN id SET DEFAULT nextval('public.censo_hogares_2018_dane_id_seq'::regclass);


--
-- TOC entry 4456 (class 2604 OID 21057)
-- Name: censo_viviendas_2018_dane id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_viviendas_2018_dane ALTER COLUMN id SET DEFAULT nextval('public.censo_viviendas_2018_dane_id_seq'::regclass);


--
-- TOC entry 4468 (class 2604 OID 21285)
-- Name: coca_plantations_minjusticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coca_plantations_minjusticia ALTER COLUMN id SET DEFAULT nextval('public.coca_plantations_minjusticia_id_seq'::regclass);


--
-- TOC entry 4443 (class 2604 OID 20721)
-- Name: cocaine_base_confiscations_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_base_confiscations_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.cocaine_base_confiscations_mindefensa_id_seq'::regclass);


--
-- TOC entry 4442 (class 2604 OID 20708)
-- Name: cocaine_confiscations_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_confiscations_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.cocaine_confiscations_mindefensa_id_seq'::regclass);


--
-- TOC entry 4416 (class 2604 OID 20210)
-- Name: crime_news_fiscalia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crime_news_fiscalia ALTER COLUMN id SET DEFAULT nextval('public.crime_data_id_seq'::regclass);


--
-- TOC entry 4415 (class 2604 OID 17839)
-- Name: data_source source_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_source ALTER COLUMN source_id SET DEFAULT nextval('public.fuentedatos_id_fuente_seq'::regclass);


--
-- TOC entry 4432 (class 2604 OID 20504)
-- Name: deaths_in_public_forces_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deaths_in_public_forces_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.deaths_in_public_forces_mindefensa_id_seq'::regclass);


--
-- TOC entry 4446 (class 2604 OID 20772)
-- Name: destroyed_labs_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destroyed_labs_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.destroyed_labs_mindefensa_id_seq'::regclass);


--
-- TOC entry 4424 (class 2604 OID 20358)
-- Name: domestic_violence_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domestic_violence_polinal ALTER COLUMN id SET DEFAULT nextval('public.domestic_violence_id_seq'::regclass);


--
-- TOC entry 4425 (class 2604 OID 20375)
-- Name: drug_seizure_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drug_seizure_polinal ALTER COLUMN id SET DEFAULT nextval('public.drug_seizure_id_seq'::regclass);


--
-- TOC entry 4466 (class 2604 OID 21251)
-- Name: early_childhood_indicators_mineducacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.early_childhood_indicators_mineducacion ALTER COLUMN id SET DEFAULT nextval('public.early_childhood_indicators_mineducacion_id_seq'::regclass);


--
-- TOC entry 4467 (class 2604 OID 21268)
-- Name: educational_indicators_mineducacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educational_indicators_mineducacion ALTER COLUMN id SET DEFAULT nextval('public.educational_indicators_mineducacion_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 20555)
-- Name: environmental_crimes_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.environmental_crimes_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.environmental_crimes_mindefensa_id_seq'::regclass);


--
-- TOC entry 4447 (class 2604 OID 20789)
-- Name: eradication_of_illicit_crops_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eradication_of_illicit_crops_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.eradication_of_illicit_crops_mindefensa_id_seq'::regclass);


--
-- TOC entry 4436 (class 2604 OID 20574)
-- Name: extortion_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extortion_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.extortion_mindefensa_id_seq'::regclass);


--
-- TOC entry 4465 (class 2604 OID 21231)
-- Name: familias_en_accion_prosperidad_social id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.familias_en_accion_prosperidad_social ALTER COLUMN id SET DEFAULT nextval('public.familias_en_accion_prosperidad_social_id_seq'::regclass);


--
-- TOC entry 4451 (class 2604 OID 20857)
-- Name: fatal_injuries_med_legal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal ALTER COLUMN id SET DEFAULT nextval('public.fatal_injuries_med_legal_id_seq'::regclass);


--
-- TOC entry 4462 (class 2604 OID 21163)
-- Name: health_insurance_affiliated_adres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_insurance_affiliated_adres ALTER COLUMN id SET DEFAULT nextval('public.health_insurance_affiliated_adres_id_seq'::regclass);


--
-- TOC entry 4421 (class 2604 OID 20307)
-- Name: home_and_business_theft_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_and_business_theft_polinal ALTER COLUMN id SET DEFAULT nextval('public.home_and_business_theft_id_seq'::regclass);


--
-- TOC entry 4418 (class 2604 OID 20252)
-- Name: indicted_count_fiscalia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicted_count_fiscalia ALTER COLUMN id SET DEFAULT nextval('public.indicted_count_id_seq'::regclass);


--
-- TOC entry 4449 (class 2604 OID 20823)
-- Name: intervened_mines_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervened_mines_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.intervened_mines_mindefensa_id_seq'::regclass);


--
-- TOC entry 4434 (class 2604 OID 20538)
-- Name: kidnapping_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidnapping_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.kidnapping_mindefensa_id_seq'::regclass);


--
-- TOC entry 4448 (class 2604 OID 20806)
-- Name: land_piracy_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_piracy_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.land_piracy_mindefensa_id_seq'::regclass);


--
-- TOC entry 4470 (class 2604 OID 21336)
-- Name: land_restitution_claims_minagricultura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_restitution_claims_minagricultura ALTER COLUMN id SET DEFAULT nextval('public.land_restitution_claims_minagricultura_id_seq'::regclass);


--
-- TOC entry 4445 (class 2604 OID 20755)
-- Name: liquid_inputs_confiscations_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liquid_inputs_confiscations_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.liquid_inputs_confiscations_mindefensa_id_seq'::regclass);


--
-- TOC entry 4471 (class 2604 OID 21353)
-- Name: livestock_count_minagricultura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livestock_count_minagricultura ALTER COLUMN id SET DEFAULT nextval('public.livestock_count_minagricultura_id_seq'::regclass);


--
-- TOC entry 4431 (class 2604 OID 20487)
-- Name: massacres_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.massacres_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.massacres_mindefensa_id_seq'::regclass);


--
-- TOC entry 4428 (class 2604 OID 20435)
-- Name: missing_people_med_legal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_people_med_legal ALTER COLUMN id SET DEFAULT nextval('public.missing_people_id_seq'::regclass);


--
-- TOC entry 4474 (class 2604 OID 21406)
-- Name: mobile_coverage_mintic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobile_coverage_mintic ALTER COLUMN id SET DEFAULT nextval('public.mobile_coverage_mintic_id_seq'::regclass);


--
-- TOC entry 4463 (class 2604 OID 21182)
-- Name: mortality_and_morbidity_rates_minsalud id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_and_morbidity_rates_minsalud ALTER COLUMN id SET DEFAULT nextval('public.mortality_and_morbidity_rates_minsalud_adres_id_seq'::regclass);


--
-- TOC entry 4475 (class 2604 OID 21426)
-- Name: municipal_performance_measure_dnp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_performance_measure_dnp ALTER COLUMN id SET DEFAULT nextval('public.municipal_performance_measure_dnp_id_seq'::regclass);


--
-- TOC entry 4477 (class 2604 OID 21464)
-- Name: municipal_population_projections_dane id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_population_projections_dane ALTER COLUMN id SET DEFAULT nextval('public.municipal_population_projections_dane_id_seq'::regclass);


--
-- TOC entry 4430 (class 2604 OID 20470)
-- Name: murders_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murders_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.murders_mindefensa_id_seq'::regclass);


--
-- TOC entry 4452 (class 2604 OID 20900)
-- Name: non_fatal_injuries_med_legal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal ALTER COLUMN id SET DEFAULT nextval('public.non_fatal_injuries_med_legal_id_seq'::regclass);


--
-- TOC entry 4429 (class 2604 OID 20452)
-- Name: personal_injury_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_injury_polinal ALTER COLUMN id SET DEFAULT nextval('public.personal_injury_id_seq'::regclass);


--
-- TOC entry 4464 (class 2604 OID 21200)
-- Name: preschool_primary_secondary_education_mineducacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preschool_primary_secondary_education_mineducacion ALTER COLUMN id SET DEFAULT nextval('public.preschool_primary_secondary_education_mineducacion_id_seq'::regclass);


--
-- TOC entry 4419 (class 2604 OID 20273)
-- Name: sexual_crimes_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexual_crimes_polinal ALTER COLUMN id SET DEFAULT nextval('public.sexual_crimes_id_seq'::regclass);


--
-- TOC entry 4459 (class 2604 OID 21112)
-- Name: sisben_iv_hogares_dnp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_hogares_dnp ALTER COLUMN id SET DEFAULT nextval('public.sisben_iv_hogares_dnp_id_seq'::regclass);


--
-- TOC entry 4461 (class 2604 OID 21146)
-- Name: sisben_iv_personas_dnp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_personas_dnp ALTER COLUMN id SET DEFAULT nextval('public.sisben_iv_personas_dnp_id_seq'::regclass);


--
-- TOC entry 4460 (class 2604 OID 21129)
-- Name: sisben_iv_viviendas_dnp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_viviendas_dnp ALTER COLUMN id SET DEFAULT nextval('public.sisben_iv_viviendas_dnp_id_seq'::regclass);


--
-- TOC entry 4426 (class 2604 OID 20400)
-- Name: terrorism_crimes_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_crimes_polinal ALTER COLUMN id SET DEFAULT nextval('public.terrorism_crimes_id_seq'::regclass);


--
-- TOC entry 4438 (class 2604 OID 20608)
-- Name: terrorism_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.terrorism_mindefensa_id_seq'::regclass);


--
-- TOC entry 4422 (class 2604 OID 20324)
-- Name: theft_by_modality_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_by_modality_polinal ALTER COLUMN id SET DEFAULT nextval('public.theft_by_modality_id_seq'::regclass);


--
-- TOC entry 4439 (class 2604 OID 20625)
-- Name: theft_from_financial_institutions_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_financial_institutions_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.theft_from_financial_institutions_mindefensa_id_seq'::regclass);


--
-- TOC entry 4433 (class 2604 OID 20521)
-- Name: theft_from_people_mindefensa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_people_mindefensa ALTER COLUMN id SET DEFAULT nextval('public.theft_from_people_mindefensa_id_seq'::regclass);


--
-- TOC entry 4427 (class 2604 OID 20418)
-- Name: threat_crimes_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_crimes_polinal ALTER COLUMN id SET DEFAULT nextval('public.threat_crimes_id_seq'::regclass);


--
-- TOC entry 4420 (class 2604 OID 20290)
-- Name: vehicle_theft_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_theft_polinal ALTER COLUMN id SET DEFAULT nextval('public.vehicle_theft_id_seq'::regclass);


--
-- TOC entry 4417 (class 2604 OID 20231)
-- Name: victim_count_fiscalia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victim_count_fiscalia ALTER COLUMN id SET DEFAULT nextval('public.victim_count_id_seq'::regclass);


--
-- TOC entry 4457 (class 2604 OID 21076)
-- Name: victims_armed_conflict_sievcac id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_armed_conflict_sievcac ALTER COLUMN id SET DEFAULT nextval('public.victims_armed_conflict_sievcac_id_seq'::regclass);


--
-- TOC entry 4454 (class 2604 OID 21020)
-- Name: victims_by_type_of_crime_unidadvictimas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_by_type_of_crime_unidadvictimas ALTER COLUMN id SET DEFAULT nextval('public.victims_by_type_of_crime_unidadvictimas_id_seq'::regclass);


--
-- TOC entry 4453 (class 2604 OID 20964)
-- Name: victims_municipal_events_unidadvictimas event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_municipal_events_unidadvictimas ALTER COLUMN event_id SET DEFAULT nextval('public.victims_municipal_events_unidadvictimas_event_id_seq'::regclass);


--
-- TOC entry 4472 (class 2604 OID 21372)
-- Name: water_quality_risk_insalud id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.water_quality_risk_insalud ALTER COLUMN id SET DEFAULT nextval('public.water_quality_risk_insalud_id_seq'::regclass);


--
-- TOC entry 4423 (class 2604 OID 20341)
-- Name: weapons_confiscation_polinal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons_confiscation_polinal ALTER COLUMN id SET DEFAULT nextval('public.weapons_confiscation_id_seq'::regclass);


--
-- TOC entry 4608 (class 2606 OID 21447)
-- Name: agricultural_frontier_minagricultura agricultural_frontier_minagricultura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agricultural_frontier_minagricultura
    ADD CONSTRAINT agricultural_frontier_minagricultura_pkey PRIMARY KEY (id);


--
-- TOC entry 4602 (class 2606 OID 21391)
-- Name: alluvial_gold_mining_minminas alluvial_gold_mining_minminas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alluvial_gold_mining_minminas
    ADD CONSTRAINT alluvial_gold_mining_minminas_pkey PRIMARY KEY (id);


--
-- TOC entry 4530 (class 2606 OID 20593)
-- Name: arrests_for_ilegal_mining_mindefensa arrests_for_ilegal_mining_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrests_for_ilegal_mining_mindefensa
    ADD CONSTRAINT arrests_for_ilegal_mining_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4544 (class 2606 OID 20740)
-- Name: basuco_confiscations_mindefensa basuco_confiscations_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basuco_confiscations_mindefensa
    ADD CONSTRAINT basuco_confiscations_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4536 (class 2606 OID 20644)
-- Name: blowing_up_of_pipelines_mindefensa blowing_up_of_pipelines_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blowing_up_of_pipelines_mindefensa
    ADD CONSTRAINT blowing_up_of_pipelines_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4556 (class 2606 OID 20842)
-- Name: brigge_blowing_up_mindefensa brigge_blowing_up_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigge_blowing_up_mindefensa
    ADD CONSTRAINT brigge_blowing_up_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4572 (class 2606 OID 21097)
-- Name: cases_armed_conflict_sievcac cases_armed_conflict_sievcac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cases_armed_conflict_sievcac
    ADD CONSTRAINT cases_armed_conflict_sievcac_pkey PRIMARY KEY (case_id);


--
-- TOC entry 4594 (class 2606 OID 21304)
-- Name: censo_2018_personas_dane censo_2018_personas_dane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_2018_personas_dane
    ADD CONSTRAINT censo_2018_personas_dane_pkey PRIMARY KEY (id);


--
-- TOC entry 4566 (class 2606 OID 21041)
-- Name: censo_hogares_2018_dane censo_hogares_2018_dane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hogares_2018_dane
    ADD CONSTRAINT censo_hogares_2018_dane_pkey PRIMARY KEY (id);


--
-- TOC entry 4568 (class 2606 OID 21059)
-- Name: censo_viviendas_2018_dane censo_viviendas_2018_dane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_viviendas_2018_dane
    ADD CONSTRAINT censo_viviendas_2018_dane_pkey PRIMARY KEY (id);


--
-- TOC entry 4592 (class 2606 OID 21287)
-- Name: coca_plantations_minjusticia coca_plantations_minjusticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coca_plantations_minjusticia
    ADD CONSTRAINT coca_plantations_minjusticia_pkey PRIMARY KEY (id);


--
-- TOC entry 4542 (class 2606 OID 20723)
-- Name: cocaine_base_confiscations_mindefensa cocaine_base_confiscations_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_base_confiscations_mindefensa
    ADD CONSTRAINT cocaine_base_confiscations_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4540 (class 2606 OID 20710)
-- Name: cocaine_confiscations_mindefensa cocaine_confiscations_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_confiscations_mindefensa
    ADD CONSTRAINT cocaine_confiscations_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4538 (class 2606 OID 20676)
-- Name: confiscation_of_mariajuana_mindefensa confiscation_of_mariajuana_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confiscation_of_mariajuana_mindefensa
    ADD CONSTRAINT confiscation_of_mariajuana_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4488 (class 2606 OID 20214)
-- Name: crime_news_fiscalia crime_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crime_news_fiscalia
    ADD CONSTRAINT crime_data_pkey PRIMARY KEY (id);


--
-- TOC entry 4520 (class 2606 OID 20506)
-- Name: deaths_in_public_forces_mindefensa deaths_in_public_forces_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deaths_in_public_forces_mindefensa
    ADD CONSTRAINT deaths_in_public_forces_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4484 (class 2606 OID 17848)
-- Name: departments_dane departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments_dane
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (dept_code);


--
-- TOC entry 4548 (class 2606 OID 20774)
-- Name: destroyed_labs_mindefensa destroyed_labs_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destroyed_labs_mindefensa
    ADD CONSTRAINT destroyed_labs_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4504 (class 2606 OID 20360)
-- Name: domestic_violence_polinal domestic_violence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domestic_violence_polinal
    ADD CONSTRAINT domestic_violence_pkey PRIMARY KEY (id);


--
-- TOC entry 4506 (class 2606 OID 20377)
-- Name: drug_seizure_polinal drug_seizure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drug_seizure_polinal
    ADD CONSTRAINT drug_seizure_pkey PRIMARY KEY (id);


--
-- TOC entry 4588 (class 2606 OID 21253)
-- Name: early_childhood_indicators_mineducacion early_childhood_indicators_mineducacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.early_childhood_indicators_mineducacion
    ADD CONSTRAINT early_childhood_indicators_mineducacion_pkey PRIMARY KEY (id);


--
-- TOC entry 4590 (class 2606 OID 21270)
-- Name: educational_indicators_mineducacion educational_indicators_mineducacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educational_indicators_mineducacion
    ADD CONSTRAINT educational_indicators_mineducacion_pkey PRIMARY KEY (id);


--
-- TOC entry 4526 (class 2606 OID 20559)
-- Name: environmental_crimes_mindefensa environmental_crimes_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.environmental_crimes_mindefensa
    ADD CONSTRAINT environmental_crimes_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4550 (class 2606 OID 20791)
-- Name: eradication_of_illicit_crops_mindefensa eradication_of_illicit_crops_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eradication_of_illicit_crops_mindefensa
    ADD CONSTRAINT eradication_of_illicit_crops_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4528 (class 2606 OID 20576)
-- Name: extortion_mindefensa extortion_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extortion_mindefensa
    ADD CONSTRAINT extortion_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4586 (class 2606 OID 21235)
-- Name: familias_en_accion_prosperidad_social familias_en_accion_prosperidad_social_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.familias_en_accion_prosperidad_social
    ADD CONSTRAINT familias_en_accion_prosperidad_social_pkey PRIMARY KEY (id);


--
-- TOC entry 4558 (class 2606 OID 20859)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 17843)
-- Name: data_source fuentedatos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_source
    ADD CONSTRAINT fuentedatos_pkey PRIMARY KEY (source_id);


--
-- TOC entry 4580 (class 2606 OID 21167)
-- Name: health_insurance_affiliated_adres health_insurance_affiliated_adres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_insurance_affiliated_adres
    ADD CONSTRAINT health_insurance_affiliated_adres_pkey PRIMARY KEY (id);


--
-- TOC entry 4498 (class 2606 OID 20309)
-- Name: home_and_business_theft_polinal home_and_business_theft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_and_business_theft_polinal
    ADD CONSTRAINT home_and_business_theft_pkey PRIMARY KEY (id);


--
-- TOC entry 4492 (class 2606 OID 20256)
-- Name: indicted_count_fiscalia indicted_count_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicted_count_fiscalia
    ADD CONSTRAINT indicted_count_pkey PRIMARY KEY (id);


--
-- TOC entry 4554 (class 2606 OID 20825)
-- Name: intervened_mines_mindefensa intervened_mines_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervened_mines_mindefensa
    ADD CONSTRAINT intervened_mines_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4524 (class 2606 OID 20540)
-- Name: kidnapping_mindefensa kidnapping_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidnapping_mindefensa
    ADD CONSTRAINT kidnapping_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4552 (class 2606 OID 20808)
-- Name: land_piracy_mindefensa land_piracy_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_piracy_mindefensa
    ADD CONSTRAINT land_piracy_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4596 (class 2606 OID 21338)
-- Name: land_restitution_claims_minagricultura land_restitution_claims_minagricultura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_restitution_claims_minagricultura
    ADD CONSTRAINT land_restitution_claims_minagricultura_pkey PRIMARY KEY (id);


--
-- TOC entry 4546 (class 2606 OID 20757)
-- Name: liquid_inputs_confiscations_mindefensa liquid_inputs_confiscations_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liquid_inputs_confiscations_mindefensa
    ADD CONSTRAINT liquid_inputs_confiscations_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4598 (class 2606 OID 21355)
-- Name: livestock_count_minagricultura livestock_count_minagricultura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livestock_count_minagricultura
    ADD CONSTRAINT livestock_count_minagricultura_pkey PRIMARY KEY (id);


--
-- TOC entry 4518 (class 2606 OID 20489)
-- Name: massacres_mindefensa massacres_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.massacres_mindefensa
    ADD CONSTRAINT massacres_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4512 (class 2606 OID 20437)
-- Name: missing_people_med_legal missing_people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_people_med_legal
    ADD CONSTRAINT missing_people_pkey PRIMARY KEY (id);


--
-- TOC entry 4604 (class 2606 OID 21410)
-- Name: mobile_coverage_mintic mobile_coverage_mintic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobile_coverage_mintic
    ADD CONSTRAINT mobile_coverage_mintic_pkey PRIMARY KEY (id);


--
-- TOC entry 4582 (class 2606 OID 21184)
-- Name: mortality_and_morbidity_rates_minsalud mortality_and_morbidity_rates_minsalud_adres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_and_morbidity_rates_minsalud
    ADD CONSTRAINT mortality_and_morbidity_rates_minsalud_adres_pkey PRIMARY KEY (id);


--
-- TOC entry 4606 (class 2606 OID 21430)
-- Name: municipal_performance_measure_dnp municipal_performance_measure_dnp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_performance_measure_dnp
    ADD CONSTRAINT municipal_performance_measure_dnp_pkey PRIMARY KEY (id);


--
-- TOC entry 4610 (class 2606 OID 21466)
-- Name: municipal_population_projections_dane municipal_population_projections_dane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_population_projections_dane
    ADD CONSTRAINT municipal_population_projections_dane_pkey PRIMARY KEY (id);


--
-- TOC entry 4486 (class 2606 OID 17910)
-- Name: municipalities_dane municipios_dept_mpio_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipalities_dane
    ADD CONSTRAINT municipios_dept_mpio_code_pkey PRIMARY KEY (dept_mpio_code);


--
-- TOC entry 4516 (class 2606 OID 20472)
-- Name: murders_mindefensa murders_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murders_mindefensa
    ADD CONSTRAINT murders_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4560 (class 2606 OID 20902)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_pkey PRIMARY KEY (id);


--
-- TOC entry 4514 (class 2606 OID 20454)
-- Name: personal_injury_polinal personal_injury_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_injury_polinal
    ADD CONSTRAINT personal_injury_pkey PRIMARY KEY (id);


--
-- TOC entry 4584 (class 2606 OID 21204)
-- Name: preschool_primary_secondary_education_mineducacion preschool_primary_secondary_education_mineducacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preschool_primary_secondary_education_mineducacion
    ADD CONSTRAINT preschool_primary_secondary_education_mineducacion_pkey PRIMARY KEY (id);


--
-- TOC entry 4494 (class 2606 OID 20275)
-- Name: sexual_crimes_polinal sexual_crimes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexual_crimes_polinal
    ADD CONSTRAINT sexual_crimes_pkey PRIMARY KEY (id);


--
-- TOC entry 4574 (class 2606 OID 21114)
-- Name: sisben_iv_hogares_dnp sisben_iv_hogares_dnp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_hogares_dnp
    ADD CONSTRAINT sisben_iv_hogares_dnp_pkey PRIMARY KEY (id);


--
-- TOC entry 4578 (class 2606 OID 21148)
-- Name: sisben_iv_personas_dnp sisben_iv_personas_dnp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_personas_dnp
    ADD CONSTRAINT sisben_iv_personas_dnp_pkey PRIMARY KEY (id);


--
-- TOC entry 4576 (class 2606 OID 21131)
-- Name: sisben_iv_viviendas_dnp sisben_iv_viviendas_dnp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_viviendas_dnp
    ADD CONSTRAINT sisben_iv_viviendas_dnp_pkey PRIMARY KEY (id);


--
-- TOC entry 4508 (class 2606 OID 20402)
-- Name: terrorism_crimes_polinal terrorism_crimes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_crimes_polinal
    ADD CONSTRAINT terrorism_crimes_pkey PRIMARY KEY (id);


--
-- TOC entry 4532 (class 2606 OID 20610)
-- Name: terrorism_mindefensa terrorism_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_mindefensa
    ADD CONSTRAINT terrorism_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4500 (class 2606 OID 20326)
-- Name: theft_by_modality_polinal theft_by_modality_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_by_modality_polinal
    ADD CONSTRAINT theft_by_modality_pkey PRIMARY KEY (id);


--
-- TOC entry 4534 (class 2606 OID 20627)
-- Name: theft_from_financial_institutions_mindefensa theft_from_financial_institutions_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_financial_institutions_mindefensa
    ADD CONSTRAINT theft_from_financial_institutions_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4522 (class 2606 OID 20523)
-- Name: theft_from_people_mindefensa theft_from_people_mindefensa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_people_mindefensa
    ADD CONSTRAINT theft_from_people_mindefensa_pkey PRIMARY KEY (id);


--
-- TOC entry 4510 (class 2606 OID 20420)
-- Name: threat_crimes_polinal threat_crimes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_crimes_polinal
    ADD CONSTRAINT threat_crimes_pkey PRIMARY KEY (id);


--
-- TOC entry 4496 (class 2606 OID 20292)
-- Name: vehicle_theft_polinal vehicle_theft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_theft_polinal
    ADD CONSTRAINT vehicle_theft_pkey PRIMARY KEY (id);


--
-- TOC entry 4490 (class 2606 OID 20235)
-- Name: victim_count_fiscalia victim_count_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victim_count_fiscalia
    ADD CONSTRAINT victim_count_pkey PRIMARY KEY (id);


--
-- TOC entry 4570 (class 2606 OID 21080)
-- Name: victims_armed_conflict_sievcac victims_armed_conflict_sievcac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_armed_conflict_sievcac
    ADD CONSTRAINT victims_armed_conflict_sievcac_pkey PRIMARY KEY (id);


--
-- TOC entry 4564 (class 2606 OID 21024)
-- Name: victims_by_type_of_crime_unidadvictimas victims_by_type_of_crime_unidadvictimas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_by_type_of_crime_unidadvictimas
    ADD CONSTRAINT victims_by_type_of_crime_unidadvictimas_pkey PRIMARY KEY (id);


--
-- TOC entry 4562 (class 2606 OID 20966)
-- Name: victims_municipal_events_unidadvictimas victims_municipal_events_unidadvictimas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_municipal_events_unidadvictimas
    ADD CONSTRAINT victims_municipal_events_unidadvictimas_pkey PRIMARY KEY (event_id);


--
-- TOC entry 4600 (class 2606 OID 21374)
-- Name: water_quality_risk_insalud water_quality_risk_insalud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.water_quality_risk_insalud
    ADD CONSTRAINT water_quality_risk_insalud_pkey PRIMARY KEY (id);


--
-- TOC entry 4502 (class 2606 OID 20343)
-- Name: weapons_confiscation_polinal weapons_confiscation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons_confiscation_polinal
    ADD CONSTRAINT weapons_confiscation_pkey PRIMARY KEY (id);


--
-- TOC entry 4746 (class 2606 OID 21448)
-- Name: agricultural_frontier_minagricultura agricultural_frontier_minagricultura_dane_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agricultural_frontier_minagricultura
    ADD CONSTRAINT agricultural_frontier_minagricultura_dane_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4747 (class 2606 OID 21453)
-- Name: agricultural_frontier_minagricultura agricultural_frontier_minagricultura_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agricultural_frontier_minagricultura
    ADD CONSTRAINT agricultural_frontier_minagricultura_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4658 (class 2606 OID 20594)
-- Name: arrests_for_ilegal_mining_mindefensa arrests_for_ilegal_mining_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrests_for_ilegal_mining_mindefensa
    ADD CONSTRAINT arrests_for_ilegal_mining_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4659 (class 2606 OID 20599)
-- Name: arrests_for_ilegal_mining_mindefensa arrests_for_ilegal_mining_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrests_for_ilegal_mining_mindefensa
    ADD CONSTRAINT arrests_for_ilegal_mining_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4671 (class 2606 OID 20741)
-- Name: basuco_confiscations_mindefensa basuco_confiscations_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basuco_confiscations_mindefensa
    ADD CONSTRAINT basuco_confiscations_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4672 (class 2606 OID 20746)
-- Name: basuco_confiscations_mindefensa basuco_confiscations_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basuco_confiscations_mindefensa
    ADD CONSTRAINT basuco_confiscations_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4664 (class 2606 OID 20645)
-- Name: blowing_up_of_pipelines_mindefensa blowing_up_of_pipelines_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blowing_up_of_pipelines_mindefensa
    ADD CONSTRAINT blowing_up_of_pipelines_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4665 (class 2606 OID 20650)
-- Name: blowing_up_of_pipelines_mindefensa blowing_up_of_pipelines_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blowing_up_of_pipelines_mindefensa
    ADD CONSTRAINT blowing_up_of_pipelines_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4683 (class 2606 OID 20848)
-- Name: brigge_blowing_up_mindefensa brigge_blowing_up_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigge_blowing_up_mindefensa
    ADD CONSTRAINT brigge_blowing_up_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4684 (class 2606 OID 20843)
-- Name: brigge_blowing_up_mindefensa brigge_blowing_up_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigge_blowing_up_mindefensa
    ADD CONSTRAINT brigge_blowing_up_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4704 (class 2606 OID 21042)
-- Name: censo_hogares_2018_dane censo_hogares_2018_dane_municipalities_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hogares_2018_dane
    ADD CONSTRAINT censo_hogares_2018_dane_municipalities_fkey FOREIGN KEY (cod_dep_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4705 (class 2606 OID 21047)
-- Name: censo_hogares_2018_dane censo_hogares_2018_dane_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hogares_2018_dane
    ADD CONSTRAINT censo_hogares_2018_dane_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4668 (class 2606 OID 20711)
-- Name: cocaine_confiscations_mindefensa cocaine_confiscations_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_confiscations_mindefensa
    ADD CONSTRAINT cocaine_confiscations_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4666 (class 2606 OID 20677)
-- Name: confiscation_of_mariajuana_mindefensa confiscation_of_mariajuana_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confiscation_of_mariajuana_mindefensa
    ADD CONSTRAINT confiscation_of_mariajuana_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4667 (class 2606 OID 20682)
-- Name: confiscation_of_mariajuana_mindefensa confiscation_of_mariajuana_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confiscation_of_mariajuana_mindefensa
    ADD CONSTRAINT confiscation_of_mariajuana_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4616 (class 2606 OID 20215)
-- Name: crime_news_fiscalia crime_data_dept_mpio_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crime_news_fiscalia
    ADD CONSTRAINT crime_data_dept_mpio_code_fkey FOREIGN KEY (dept_mpio_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4617 (class 2606 OID 20220)
-- Name: crime_news_fiscalia crime_data_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crime_news_fiscalia
    ADD CONSTRAINT crime_data_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4611 (class 2606 OID 17849)
-- Name: departments_dane departamentos_id_fuente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments_dane
    ADD CONSTRAINT departamentos_id_fuente_fkey FOREIGN KEY (source_1) REFERENCES public.data_source(source_id);


--
-- TOC entry 4675 (class 2606 OID 20780)
-- Name: destroyed_labs_mindefensa destroyed_labs_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destroyed_labs_mindefensa
    ADD CONSTRAINT destroyed_labs_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4676 (class 2606 OID 20775)
-- Name: destroyed_labs_mindefensa destroyed_labs_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.destroyed_labs_mindefensa
    ADD CONSTRAINT destroyed_labs_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4632 (class 2606 OID 20361)
-- Name: domestic_violence_polinal domestic_violence_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domestic_violence_polinal
    ADD CONSTRAINT domestic_violence_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4633 (class 2606 OID 20366)
-- Name: domestic_violence_polinal domestic_violence_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domestic_violence_polinal
    ADD CONSTRAINT domestic_violence_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4634 (class 2606 OID 20378)
-- Name: drug_seizure_polinal drug_seizure_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drug_seizure_polinal
    ADD CONSTRAINT drug_seizure_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4635 (class 2606 OID 20383)
-- Name: drug_seizure_polinal drug_seizure_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drug_seizure_polinal
    ADD CONSTRAINT drug_seizure_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4728 (class 2606 OID 21276)
-- Name: educational_indicators_mineducacion educational_indicators_mineducacion_municipality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educational_indicators_mineducacion
    ADD CONSTRAINT educational_indicators_mineducacion_municipality_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4729 (class 2606 OID 21271)
-- Name: educational_indicators_mineducacion educational_indicators_mineducacion_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educational_indicators_mineducacion
    ADD CONSTRAINT educational_indicators_mineducacion_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4654 (class 2606 OID 20560)
-- Name: environmental_crimes_mindefensa environmental_crimes_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.environmental_crimes_mindefensa
    ADD CONSTRAINT environmental_crimes_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4655 (class 2606 OID 20565)
-- Name: environmental_crimes_mindefensa environmental_crimes_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.environmental_crimes_mindefensa
    ADD CONSTRAINT environmental_crimes_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4677 (class 2606 OID 20797)
-- Name: eradication_of_illicit_crops_mindefensa eradication_of_illicit_crops_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eradication_of_illicit_crops_mindefensa
    ADD CONSTRAINT eradication_of_illicit_crops_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4678 (class 2606 OID 20792)
-- Name: eradication_of_illicit_crops_mindefensa eradication_of_illicit_crops_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eradication_of_illicit_crops_mindefensa
    ADD CONSTRAINT eradication_of_illicit_crops_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4656 (class 2606 OID 20577)
-- Name: extortion_mindefensa extortion_environmental_crimes_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extortion_mindefensa
    ADD CONSTRAINT extortion_environmental_crimes_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4657 (class 2606 OID 20582)
-- Name: extortion_mindefensa extortion_environmental_crimes_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extortion_mindefensa
    ADD CONSTRAINT extortion_environmental_crimes_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4685 (class 2606 OID 20860)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4686 (class 2606 OID 20865)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_1_fkey FOREIGN KEY (source_1) REFERENCES public.data_source(source_id);


--
-- TOC entry 4687 (class 2606 OID 20870)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_2_fkey FOREIGN KEY (source_2) REFERENCES public.data_source(source_id);


--
-- TOC entry 4688 (class 2606 OID 20875)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_3_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_3_fkey FOREIGN KEY (source_3) REFERENCES public.data_source(source_id);


--
-- TOC entry 4689 (class 2606 OID 20880)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_4_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_4_fkey FOREIGN KEY (source_4) REFERENCES public.data_source(source_id);


--
-- TOC entry 4690 (class 2606 OID 20885)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_5_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_5_fkey FOREIGN KEY (source_5) REFERENCES public.data_source(source_id);


--
-- TOC entry 4691 (class 2606 OID 20890)
-- Name: fatal_injuries_med_legal fatal_injuries_med_legal_source_6_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatal_injuries_med_legal
    ADD CONSTRAINT fatal_injuries_med_legal_source_6_fkey FOREIGN KEY (source_6) REFERENCES public.data_source(source_id);


--
-- TOC entry 4710 (class 2606 OID 21103)
-- Name: cases_armed_conflict_sievcac fk_cases_sievcac_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cases_armed_conflict_sievcac
    ADD CONSTRAINT fk_cases_sievcac_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4711 (class 2606 OID 21098)
-- Name: cases_armed_conflict_sievcac fk_cases_sievcac_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cases_armed_conflict_sievcac
    ADD CONSTRAINT fk_cases_sievcac_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4669 (class 2606 OID 20729)
-- Name: cocaine_base_confiscations_mindefensa fk_codigo_dane; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_base_confiscations_mindefensa
    ADD CONSTRAINT fk_codigo_dane FOREIGN KEY (codigo_dane) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4701 (class 2606 OID 20972)
-- Name: victims_municipal_events_unidadvictimas fk_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_municipal_events_unidadvictimas
    ADD CONSTRAINT fk_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4730 (class 2606 OID 21288)
-- Name: coca_plantations_minjusticia fk_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coca_plantations_minjusticia
    ADD CONSTRAINT fk_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4740 (class 2606 OID 21392)
-- Name: alluvial_gold_mining_minminas fk_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alluvial_gold_mining_minminas
    ADD CONSTRAINT fk_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4742 (class 2606 OID 21411)
-- Name: mobile_coverage_mintic fk_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobile_coverage_mintic
    ADD CONSTRAINT fk_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4648 (class 2606 OID 20512)
-- Name: deaths_in_public_forces_mindefensa fk_deaths_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deaths_in_public_forces_mindefensa
    ADD CONSTRAINT fk_deaths_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4649 (class 2606 OID 20507)
-- Name: deaths_in_public_forces_mindefensa fk_deaths_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deaths_in_public_forces_mindefensa
    ADD CONSTRAINT fk_deaths_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4718 (class 2606 OID 21173)
-- Name: health_insurance_affiliated_adres fk_health_insurance_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_insurance_affiliated_adres
    ADD CONSTRAINT fk_health_insurance_municipality FOREIGN KEY (codigo_dane) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4719 (class 2606 OID 21168)
-- Name: health_insurance_affiliated_adres fk_health_insurance_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_insurance_affiliated_adres
    ADD CONSTRAINT fk_health_insurance_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4652 (class 2606 OID 20541)
-- Name: kidnapping_mindefensa fk_kidnapping_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidnapping_mindefensa
    ADD CONSTRAINT fk_kidnapping_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4653 (class 2606 OID 20546)
-- Name: kidnapping_mindefensa fk_kidnapping_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidnapping_mindefensa
    ADD CONSTRAINT fk_kidnapping_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4714 (class 2606 OID 21132)
-- Name: sisben_iv_viviendas_dnp fk_municipalities_dane; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_viviendas_dnp
    ADD CONSTRAINT fk_municipalities_dane FOREIGN KEY (cod_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4706 (class 2606 OID 21065)
-- Name: censo_viviendas_2018_dane fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_viviendas_2018_dane
    ADD CONSTRAINT fk_municipality FOREIGN KEY (cod_dep_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4712 (class 2606 OID 21115)
-- Name: sisben_iv_hogares_dnp fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_hogares_dnp
    ADD CONSTRAINT fk_municipality FOREIGN KEY (cod_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4722 (class 2606 OID 21210)
-- Name: preschool_primary_secondary_education_mineducacion fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preschool_primary_secondary_education_mineducacion
    ADD CONSTRAINT fk_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4724 (class 2606 OID 21236)
-- Name: familias_en_accion_prosperidad_social fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.familias_en_accion_prosperidad_social
    ADD CONSTRAINT fk_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4726 (class 2606 OID 21254)
-- Name: early_childhood_indicators_mineducacion fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.early_childhood_indicators_mineducacion
    ADD CONSTRAINT fk_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4732 (class 2606 OID 21305)
-- Name: censo_2018_personas_dane fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_2018_personas_dane
    ADD CONSTRAINT fk_municipality FOREIGN KEY (cod_dep_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4734 (class 2606 OID 21339)
-- Name: land_restitution_claims_minagricultura fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_restitution_claims_minagricultura
    ADD CONSTRAINT fk_municipality FOREIGN KEY (codigodane) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4744 (class 2606 OID 21431)
-- Name: municipal_performance_measure_dnp fk_municipality; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_performance_measure_dnp
    ADD CONSTRAINT fk_municipality FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4748 (class 2606 OID 21467)
-- Name: municipal_population_projections_dane fk_municipality_dane_code; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_population_projections_dane
    ADD CONSTRAINT fk_municipality_dane_code FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4707 (class 2606 OID 21060)
-- Name: censo_viviendas_2018_dane fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_viviendas_2018_dane
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4713 (class 2606 OID 21120)
-- Name: sisben_iv_hogares_dnp fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_hogares_dnp
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4723 (class 2606 OID 21205)
-- Name: preschool_primary_secondary_education_mineducacion fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preschool_primary_secondary_education_mineducacion
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4725 (class 2606 OID 21241)
-- Name: familias_en_accion_prosperidad_social fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.familias_en_accion_prosperidad_social
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4727 (class 2606 OID 21259)
-- Name: early_childhood_indicators_mineducacion fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.early_childhood_indicators_mineducacion
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4733 (class 2606 OID 21310)
-- Name: censo_2018_personas_dane fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_2018_personas_dane
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4735 (class 2606 OID 21344)
-- Name: land_restitution_claims_minagricultura fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_restitution_claims_minagricultura
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4745 (class 2606 OID 21436)
-- Name: municipal_performance_measure_dnp fk_source; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_performance_measure_dnp
    ADD CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4612 (class 2606 OID 17878)
-- Name: departments_dane fk_source_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments_dane
    ADD CONSTRAINT fk_source_2 FOREIGN KEY (source_2) REFERENCES public.data_source(source_id);


--
-- TOC entry 4670 (class 2606 OID 20724)
-- Name: cocaine_base_confiscations_mindefensa fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cocaine_base_confiscations_mindefensa
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4702 (class 2606 OID 20967)
-- Name: victims_municipal_events_unidadvictimas fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_municipal_events_unidadvictimas
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4715 (class 2606 OID 21137)
-- Name: sisben_iv_viviendas_dnp fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_viviendas_dnp
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4731 (class 2606 OID 21293)
-- Name: coca_plantations_minjusticia fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coca_plantations_minjusticia
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4741 (class 2606 OID 21397)
-- Name: alluvial_gold_mining_minminas fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alluvial_gold_mining_minminas
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4743 (class 2606 OID 21416)
-- Name: mobile_coverage_mintic fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobile_coverage_mintic
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4749 (class 2606 OID 21472)
-- Name: municipal_population_projections_dane fk_source_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipal_population_projections_dane
    ADD CONSTRAINT fk_source_id FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4626 (class 2606 OID 20310)
-- Name: home_and_business_theft_polinal home_and_business_theft_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_and_business_theft_polinal
    ADD CONSTRAINT home_and_business_theft_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4627 (class 2606 OID 20315)
-- Name: home_and_business_theft_polinal home_and_business_theft_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_and_business_theft_polinal
    ADD CONSTRAINT home_and_business_theft_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4620 (class 2606 OID 20257)
-- Name: indicted_count_fiscalia indicted_count_dept_mpio_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicted_count_fiscalia
    ADD CONSTRAINT indicted_count_dept_mpio_code_fkey FOREIGN KEY (dept_mpio_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4621 (class 2606 OID 20262)
-- Name: indicted_count_fiscalia indicted_count_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicted_count_fiscalia
    ADD CONSTRAINT indicted_count_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4681 (class 2606 OID 20826)
-- Name: intervened_mines_mindefensa intervened_mines_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervened_mines_mindefensa
    ADD CONSTRAINT intervened_mines_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4682 (class 2606 OID 20831)
-- Name: intervened_mines_mindefensa intervened_mines_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervened_mines_mindefensa
    ADD CONSTRAINT intervened_mines_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4679 (class 2606 OID 20809)
-- Name: land_piracy_mindefensa land_piracy_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_piracy_mindefensa
    ADD CONSTRAINT land_piracy_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4680 (class 2606 OID 20814)
-- Name: land_piracy_mindefensa land_piracy_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.land_piracy_mindefensa
    ADD CONSTRAINT land_piracy_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4673 (class 2606 OID 20758)
-- Name: liquid_inputs_confiscations_mindefensa liquid_inputs_confiscations_min_defensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liquid_inputs_confiscations_mindefensa
    ADD CONSTRAINT liquid_inputs_confiscations_min_defensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4674 (class 2606 OID 20763)
-- Name: liquid_inputs_confiscations_mindefensa liquid_inputs_confiscations_min_defensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liquid_inputs_confiscations_mindefensa
    ADD CONSTRAINT liquid_inputs_confiscations_min_defensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4736 (class 2606 OID 21356)
-- Name: livestock_count_minagricultura livestock_count_municipality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livestock_count_minagricultura
    ADD CONSTRAINT livestock_count_municipality_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4737 (class 2606 OID 21361)
-- Name: livestock_count_minagricultura livestock_count_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livestock_count_minagricultura
    ADD CONSTRAINT livestock_count_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4646 (class 2606 OID 20490)
-- Name: massacres_mindefensa massacres_mindefensa_dept_mpio_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.massacres_mindefensa
    ADD CONSTRAINT massacres_mindefensa_dept_mpio_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4647 (class 2606 OID 20495)
-- Name: massacres_mindefensa massacres_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.massacres_mindefensa
    ADD CONSTRAINT massacres_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4640 (class 2606 OID 20438)
-- Name: missing_people_med_legal missing_people_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_people_med_legal
    ADD CONSTRAINT missing_people_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4641 (class 2606 OID 20443)
-- Name: missing_people_med_legal missing_people_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_people_med_legal
    ADD CONSTRAINT missing_people_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4720 (class 2606 OID 21185)
-- Name: mortality_and_morbidity_rates_minsalud mortality_municipalities_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_and_morbidity_rates_minsalud
    ADD CONSTRAINT mortality_municipalities_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4721 (class 2606 OID 21190)
-- Name: mortality_and_morbidity_rates_minsalud mortality_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mortality_and_morbidity_rates_minsalud
    ADD CONSTRAINT mortality_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4613 (class 2606 OID 17911)
-- Name: municipalities_dane municipios_codigo_depto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipalities_dane
    ADD CONSTRAINT municipios_codigo_depto_fkey FOREIGN KEY (dept_code) REFERENCES public.departments_dane(dept_code);


--
-- TOC entry 4614 (class 2606 OID 17916)
-- Name: municipalities_dane municipios_source_1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipalities_dane
    ADD CONSTRAINT municipios_source_1_fkey FOREIGN KEY (source_1) REFERENCES public.data_source(source_id);


--
-- TOC entry 4615 (class 2606 OID 17921)
-- Name: municipalities_dane municipios_source_2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipalities_dane
    ADD CONSTRAINT municipios_source_2_fkey FOREIGN KEY (source_2) REFERENCES public.data_source(source_id);


--
-- TOC entry 4644 (class 2606 OID 20473)
-- Name: murders_mindefensa murders_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murders_mindefensa
    ADD CONSTRAINT murders_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4645 (class 2606 OID 20478)
-- Name: murders_mindefensa murders_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murders_mindefensa
    ADD CONSTRAINT murders_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4692 (class 2606 OID 20903)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4693 (class 2606 OID 20908)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_1_fkey FOREIGN KEY (source_1) REFERENCES public.data_source(source_id);


--
-- TOC entry 4694 (class 2606 OID 20913)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_2_fkey FOREIGN KEY (source_2) REFERENCES public.data_source(source_id);


--
-- TOC entry 4695 (class 2606 OID 20918)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_3_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_3_fkey FOREIGN KEY (source_3) REFERENCES public.data_source(source_id);


--
-- TOC entry 4696 (class 2606 OID 20923)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_4_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_4_fkey FOREIGN KEY (source_4) REFERENCES public.data_source(source_id);


--
-- TOC entry 4697 (class 2606 OID 20928)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_5_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_5_fkey FOREIGN KEY (source_5) REFERENCES public.data_source(source_id);


--
-- TOC entry 4698 (class 2606 OID 20933)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_6_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_6_fkey FOREIGN KEY (source_6) REFERENCES public.data_source(source_id);


--
-- TOC entry 4699 (class 2606 OID 20938)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_7_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_7_fkey FOREIGN KEY (source_7) REFERENCES public.data_source(source_id);


--
-- TOC entry 4700 (class 2606 OID 20943)
-- Name: non_fatal_injuries_med_legal non_fatal_injuries_med_legal_source_8_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.non_fatal_injuries_med_legal
    ADD CONSTRAINT non_fatal_injuries_med_legal_source_8_fkey FOREIGN KEY (source_8) REFERENCES public.data_source(source_id);


--
-- TOC entry 4642 (class 2606 OID 20455)
-- Name: personal_injury_polinal personal_injury_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_injury_polinal
    ADD CONSTRAINT personal_injury_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4643 (class 2606 OID 20460)
-- Name: personal_injury_polinal personal_injury_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_injury_polinal
    ADD CONSTRAINT personal_injury_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4622 (class 2606 OID 20276)
-- Name: sexual_crimes_polinal sexual_crimes_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexual_crimes_polinal
    ADD CONSTRAINT sexual_crimes_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4623 (class 2606 OID 20281)
-- Name: sexual_crimes_polinal sexual_crimes_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexual_crimes_polinal
    ADD CONSTRAINT sexual_crimes_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4716 (class 2606 OID 21154)
-- Name: sisben_iv_personas_dnp sisben_iv_personas_dnp_municipalities_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_personas_dnp
    ADD CONSTRAINT sisben_iv_personas_dnp_municipalities_fkey FOREIGN KEY (cod_mpio) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4717 (class 2606 OID 21149)
-- Name: sisben_iv_personas_dnp sisben_iv_personas_dnp_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sisben_iv_personas_dnp
    ADD CONSTRAINT sisben_iv_personas_dnp_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4636 (class 2606 OID 20403)
-- Name: terrorism_crimes_polinal terrorism_crimes_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_crimes_polinal
    ADD CONSTRAINT terrorism_crimes_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4637 (class 2606 OID 20408)
-- Name: terrorism_crimes_polinal terrorism_crimes_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_crimes_polinal
    ADD CONSTRAINT terrorism_crimes_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4660 (class 2606 OID 20611)
-- Name: terrorism_mindefensa terrorism_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_mindefensa
    ADD CONSTRAINT terrorism_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4661 (class 2606 OID 20616)
-- Name: terrorism_mindefensa terrorism_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terrorism_mindefensa
    ADD CONSTRAINT terrorism_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4628 (class 2606 OID 20327)
-- Name: theft_by_modality_polinal theft_by_modality_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_by_modality_polinal
    ADD CONSTRAINT theft_by_modality_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4629 (class 2606 OID 20332)
-- Name: theft_by_modality_polinal theft_by_modality_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_by_modality_polinal
    ADD CONSTRAINT theft_by_modality_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4662 (class 2606 OID 20628)
-- Name: theft_from_financial_institutions_mindefensa theft_from_financial_institutions_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_financial_institutions_mindefensa
    ADD CONSTRAINT theft_from_financial_institutions_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4663 (class 2606 OID 20633)
-- Name: theft_from_financial_institutions_mindefensa theft_from_financial_institutions_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_financial_institutions_mindefensa
    ADD CONSTRAINT theft_from_financial_institutions_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4650 (class 2606 OID 20524)
-- Name: theft_from_people_mindefensa theft_from_people_mindefensa_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_people_mindefensa
    ADD CONSTRAINT theft_from_people_mindefensa_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4651 (class 2606 OID 20529)
-- Name: theft_from_people_mindefensa theft_from_people_mindefensa_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theft_from_people_mindefensa
    ADD CONSTRAINT theft_from_people_mindefensa_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4638 (class 2606 OID 20421)
-- Name: threat_crimes_polinal threat_crimes_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_crimes_polinal
    ADD CONSTRAINT threat_crimes_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4639 (class 2606 OID 20426)
-- Name: threat_crimes_polinal threat_crimes_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_crimes_polinal
    ADD CONSTRAINT threat_crimes_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4624 (class 2606 OID 20293)
-- Name: vehicle_theft_polinal vehicle_theft_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_theft_polinal
    ADD CONSTRAINT vehicle_theft_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4625 (class 2606 OID 20298)
-- Name: vehicle_theft_polinal vehicle_theft_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_theft_polinal
    ADD CONSTRAINT vehicle_theft_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4618 (class 2606 OID 20236)
-- Name: victim_count_fiscalia victim_count_dept_mpio_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victim_count_fiscalia
    ADD CONSTRAINT victim_count_dept_mpio_code_fkey FOREIGN KEY (dept_mpio_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4619 (class 2606 OID 20241)
-- Name: victim_count_fiscalia victim_count_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victim_count_fiscalia
    ADD CONSTRAINT victim_count_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4703 (class 2606 OID 21025)
-- Name: victims_by_type_of_crime_unidadvictimas victims_by_type_of_crime_unidadvictimas_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_by_type_of_crime_unidadvictimas
    ADD CONSTRAINT victims_by_type_of_crime_unidadvictimas_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4708 (class 2606 OID 21081)
-- Name: victims_armed_conflict_sievcac victims_municipalities_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_armed_conflict_sievcac
    ADD CONSTRAINT victims_municipalities_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4709 (class 2606 OID 21086)
-- Name: victims_armed_conflict_sievcac victims_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.victims_armed_conflict_sievcac
    ADD CONSTRAINT victims_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4738 (class 2606 OID 21375)
-- Name: water_quality_risk_insalud water_quality_risk_insalud_municipality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.water_quality_risk_insalud
    ADD CONSTRAINT water_quality_risk_insalud_municipality_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4739 (class 2606 OID 21380)
-- Name: water_quality_risk_insalud water_quality_risk_insalud_source_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.water_quality_risk_insalud
    ADD CONSTRAINT water_quality_risk_insalud_source_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


--
-- TOC entry 4630 (class 2606 OID 20344)
-- Name: weapons_confiscation_polinal weapons_confiscation_dane_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons_confiscation_polinal
    ADD CONSTRAINT weapons_confiscation_dane_code_fkey FOREIGN KEY (dane_code) REFERENCES public.municipalities_dane(dept_mpio_code);


--
-- TOC entry 4631 (class 2606 OID 20349)
-- Name: weapons_confiscation_polinal weapons_confiscation_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons_confiscation_polinal
    ADD CONSTRAINT weapons_confiscation_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.data_source(source_id);


-- Completed on 2024-12-10 08:38:17

--
-- PostgreSQL database dump complete
--

