--
-- PostgreSQL database dump
--



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
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id uuid NOT NULL,
    email character varying(50) NOT NULL,
    name character varying(50) NOT NULL
);

ALTER TABLE public.user OWNER TO postgres;

--
-- Name: user_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_details (
    user_id uuid NOT NULL,
    postal_code integer NOT NULL,
    city character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    address character varying(50) NOT NULL

);

ALTER TABLE public.user_details OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: CH; Owner: postgres
--

CREATE TABLE public.orders (
    user_id uuid NOT NULL,
    order_id uuid NOT NULL,
    order_status character varying(50) NOT NULL

);

ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: CH; Owner: postgres
--

CREATE TABLE public.products (
    order_id uuid NOT NULL,
    product_name character varying(50) NOT NULL,
    description text not null,
    price numeric not null
);

ALTER TABLE public.products OWNER TO postgres;
