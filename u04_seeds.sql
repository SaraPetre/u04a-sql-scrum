--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Ubuntu 14.2-1.pgdg21.10+1)

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
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (order_id, product_name, description, price) VALUES ('dd4cf820-f946-4f38-8492-ca5dfeed0d71', 'Whiskas', 'Kattens favorit', 100);
INSERT INTO public.products (order_id, product_name, description, price) VALUES ('75040436-56de-401b-8919-8d0063ac9dd7', 'Frolic', 'Extra pris', 5);
INSERT INTO public.products (order_id, product_name, description, price) VALUES ('ff53d831-c2fe-4fe8-9f67-5d69118670f2', 'Pussi', 'Billig kattmat', 42);
INSERT INTO public.products (order_id, product_name, description, price) VALUES ('676df1a1-f1d1-4ac5-9ee3-c58dfe820927', 'Dajm', 'Fastnar i tänderna', 7);
INSERT INTO public.products (order_id, product_name, description, price) VALUES ('a04bb312-9738-4db2-a7a5-ed6be9938afd', 'Gräs', 'Prima kvalité', 2000);


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (user_id, email, name) VALUES ('c62fd71a-4490-4ca8-88b2-b1f808c30368', 'j@se.com', 'Jörgen' );
INSERT INTO public.users (user_id, email, name) VALUES ('e16e4cbc-184c-4e0c-8951-9b851a2f566c', 'kk@mail.com', 'Klas-Konny');
INSERT INTO public.users (user_id, email, name) VALUES ('70cf14d8-6bc2-4060-ae36-e6e22b74309f', 'abc@abc.org', 'AB');



--
-- Data for Name: sold_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_details (user_id, postal_code, city, country, phone, address) VALUES ('c62fd71a-4490-4ca8-88b2-b1f808c30368', 12345, 'Skåne', 'Sweden', 123456, 'Skogen');
INSERT INTO public.user_details (user_id, postal_code, city, country, phone, address) VALUES ('e16e4cbc-184c-4e0c-8951-9b851a2f566c', 11223, 'Oslo', 'Norway', 987654, 'Guleböj');
INSERT INTO public.user_details (user_id, postal_code, city, country, phone, address) VALUES ('70cf14d8-6bc2-4060-ae36-e6e22b74309f', 22222, 'Köbenhavn', 'Denmark', 112233, 'Gädevei');

--
-- Data for Name: sold_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (user_id, order_id, order_status) VALUES ('c62fd71a-4490-4ca8-88b2-b1f808c30368', 'dd4cf820-f946-4f38-8492-ca5dfeed0d71', 'Under behandling');
INSERT INTO public.orders (user_id, order_id, order_status) VALUES ('e16e4cbc-184c-4e0c-8951-9b851a2f566c', '75040436-56de-401b-8919-8d0063ac9dd7', 'Skickad');
INSERT INTO public.orders (user_id, order_id, order_status) VALUES ('70cf14d8-6bc2-4060-ae36-e6e22b74309f', 'ff53d831-c2fe-4fe8-9f67-5d69118670f2', 'Reklamerad');


--
-- PostgreSQL database dump complete
--

