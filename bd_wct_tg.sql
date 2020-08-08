toc.dat                                                                                             0000600 0004000 0002000 00000025743 13713376506 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6                    x         	   bd_wct_tg    12.2    12.2 &    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         @           1262    74544 	   bd_wct_tg    DATABASE     �   CREATE DATABASE bd_wct_tg WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE bd_wct_tg;
                postgres    false         �            1259    74547 
   comentario    TABLE     �   CREATE TABLE public.comentario (
    id_comentario bigint NOT NULL,
    conteudo_comen character varying(255),
    data timestamp without time zone,
    vote_count integer,
    id_usuario bigint
);
    DROP TABLE public.comentario;
       public         heap    postgres    false         �            1259    74545    comentario_id_comentario_seq    SEQUENCE     �   ALTER TABLE public.comentario ALTER COLUMN id_comentario ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.comentario_id_comentario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203         �            1259    74554    conteudo    TABLE     �   CREATE TABLE public.conteudo (
    id_conteudo bigint NOT NULL,
    autor character varying(255),
    conteudo text,
    data_publicacao timestamp without time zone,
    id_exercicio bigint,
    id_tag bigint
);
    DROP TABLE public.conteudo;
       public         heap    postgres    false         �            1259    74552    conteudo_id_conteudo_seq    SEQUENCE     �   ALTER TABLE public.conteudo ALTER COLUMN id_conteudo ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.conteudo_id_conteudo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205         �            1259    74564 	   exercicio    TABLE     �   CREATE TABLE public.exercicio (
    id_exercicio bigint NOT NULL,
    data_publicacao timestamp without time zone,
    pergunta_exercicio text,
    resposta_exercicio character varying(255),
    id_usuario bigint
);
    DROP TABLE public.exercicio;
       public         heap    postgres    false         �            1259    74562    exercicio_id_exercicio_seq    SEQUENCE     �   ALTER TABLE public.exercicio ALTER COLUMN id_exercicio ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.exercicio_id_exercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207         �            1259    74574 	   feed_back    TABLE     j   CREATE TABLE public.feed_back (
    id_feed_back bigint NOT NULL,
    feed_back character varying(255)
);
    DROP TABLE public.feed_back;
       public         heap    postgres    false         �            1259    74572    feed_back_id_feed_back_seq    SEQUENCE     �   ALTER TABLE public.feed_back ALTER COLUMN id_feed_back ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.feed_back_id_feed_back_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209         �            1259    74581    tag    TABLE     {   CREATE TABLE public.tag (
    id_tag bigint NOT NULL,
    id_tag_relacionada bytea,
    nome_tag character varying(255)
);
    DROP TABLE public.tag;
       public         heap    postgres    false         �            1259    74579    tag_id_tag_seq    SEQUENCE     �   ALTER TABLE public.tag ALTER COLUMN id_tag ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tag_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211         �            1259    74591    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    login character varying(255),
    nome character varying(255),
    senha character varying(255)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         �            1259    74589    usuario_id_usuario_seq    SEQUENCE     �   ALTER TABLE public.usuario ALTER COLUMN id_usuario ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213         0          0    74547 
   comentario 
   TABLE DATA           a   COPY public.comentario (id_comentario, conteudo_comen, data, vote_count, id_usuario) FROM stdin;
    public          postgres    false    203       2864.dat 2          0    74554    conteudo 
   TABLE DATA           g   COPY public.conteudo (id_conteudo, autor, conteudo, data_publicacao, id_exercicio, id_tag) FROM stdin;
    public          postgres    false    205       2866.dat 4          0    74564 	   exercicio 
   TABLE DATA           v   COPY public.exercicio (id_exercicio, data_publicacao, pergunta_exercicio, resposta_exercicio, id_usuario) FROM stdin;
    public          postgres    false    207       2868.dat 6          0    74574 	   feed_back 
   TABLE DATA           <   COPY public.feed_back (id_feed_back, feed_back) FROM stdin;
    public          postgres    false    209       2870.dat 8          0    74581    tag 
   TABLE DATA           C   COPY public.tag (id_tag, id_tag_relacionada, nome_tag) FROM stdin;
    public          postgres    false    211       2872.dat :          0    74591    usuario 
   TABLE DATA           A   COPY public.usuario (id_usuario, login, nome, senha) FROM stdin;
    public          postgres    false    213       2874.dat A           0    0    comentario_id_comentario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);
          public          postgres    false    202         B           0    0    conteudo_id_conteudo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.conteudo_id_conteudo_seq', 1, false);
          public          postgres    false    204         C           0    0    exercicio_id_exercicio_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.exercicio_id_exercicio_seq', 1, false);
          public          postgres    false    206         D           0    0    feed_back_id_feed_back_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.feed_back_id_feed_back_seq', 1, false);
          public          postgres    false    208         E           0    0    tag_id_tag_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tag_id_tag_seq', 1, false);
          public          postgres    false    210         F           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public          postgres    false    212         �
           2606    74551    comentario comentario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);
 D   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_pkey;
       public            postgres    false    203         �
           2606    74561    conteudo conteudo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT conteudo_pkey PRIMARY KEY (id_conteudo);
 @   ALTER TABLE ONLY public.conteudo DROP CONSTRAINT conteudo_pkey;
       public            postgres    false    205         �
           2606    74571    exercicio exercicio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.exercicio
    ADD CONSTRAINT exercicio_pkey PRIMARY KEY (id_exercicio);
 B   ALTER TABLE ONLY public.exercicio DROP CONSTRAINT exercicio_pkey;
       public            postgres    false    207         �
           2606    74578    feed_back feed_back_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.feed_back
    ADD CONSTRAINT feed_back_pkey PRIMARY KEY (id_feed_back);
 B   ALTER TABLE ONLY public.feed_back DROP CONSTRAINT feed_back_pkey;
       public            postgres    false    209         �
           2606    74588    tag tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id_tag);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    211         �
           2606    74598    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    213         �
           2606    74609 $   conteudo fk1lr7pr955r5676tdsld1vt4ua    FK CONSTRAINT     �   ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT fk1lr7pr955r5676tdsld1vt4ua FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag);
 N   ALTER TABLE ONLY public.conteudo DROP CONSTRAINT fk1lr7pr955r5676tdsld1vt4ua;
       public          postgres    false    211    2730    205         �
           2606    74614 %   exercicio fk4stpbqgs37ciwargrf11rdnw0    FK CONSTRAINT     �   ALTER TABLE ONLY public.exercicio
    ADD CONSTRAINT fk4stpbqgs37ciwargrf11rdnw0 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 O   ALTER TABLE ONLY public.exercicio DROP CONSTRAINT fk4stpbqgs37ciwargrf11rdnw0;
       public          postgres    false    213    207    2732         �
           2606    74599 &   comentario fk9619kv3mim3a4yl0m5mdhhbh1    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk9619kv3mim3a4yl0m5mdhhbh1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 P   ALTER TABLE ONLY public.comentario DROP CONSTRAINT fk9619kv3mim3a4yl0m5mdhhbh1;
       public          postgres    false    213    2732    203         �
           2606    74604 $   conteudo fkn688c0oosg09hx6nsusrb1gro    FK CONSTRAINT     �   ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT fkn688c0oosg09hx6nsusrb1gro FOREIGN KEY (id_exercicio) REFERENCES public.exercicio(id_exercicio);
 N   ALTER TABLE ONLY public.conteudo DROP CONSTRAINT fkn688c0oosg09hx6nsusrb1gro;
       public          postgres    false    205    207    2726                                     2864.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2866.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2868.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2870.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2872.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2874.dat                                                                                            0000600 0004000 0002000 00000000005 13713376506 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000023013 13713376506 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

DROP DATABASE bd_wct_tg;
--
-- Name: bd_wct_tg; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE bd_wct_tg WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE bd_wct_tg OWNER TO postgres;

\connect bd_wct_tg

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
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario (
    id_comentario bigint NOT NULL,
    conteudo_comen character varying(255),
    data timestamp without time zone,
    vote_count integer,
    id_usuario bigint
);


ALTER TABLE public.comentario OWNER TO postgres;

--
-- Name: comentario_id_comentario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.comentario ALTER COLUMN id_comentario ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.comentario_id_comentario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: conteudo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conteudo (
    id_conteudo bigint NOT NULL,
    autor character varying(255),
    conteudo text,
    data_publicacao timestamp without time zone,
    id_exercicio bigint,
    id_tag bigint
);


ALTER TABLE public.conteudo OWNER TO postgres;

--
-- Name: conteudo_id_conteudo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.conteudo ALTER COLUMN id_conteudo ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.conteudo_id_conteudo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: exercicio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exercicio (
    id_exercicio bigint NOT NULL,
    data_publicacao timestamp without time zone,
    pergunta_exercicio text,
    resposta_exercicio character varying(255),
    id_usuario bigint
);


ALTER TABLE public.exercicio OWNER TO postgres;

--
-- Name: exercicio_id_exercicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.exercicio ALTER COLUMN id_exercicio ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.exercicio_id_exercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: feed_back; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feed_back (
    id_feed_back bigint NOT NULL,
    feed_back character varying(255)
);


ALTER TABLE public.feed_back OWNER TO postgres;

--
-- Name: feed_back_id_feed_back_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.feed_back ALTER COLUMN id_feed_back ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.feed_back_id_feed_back_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag (
    id_tag bigint NOT NULL,
    id_tag_relacionada bytea,
    nome_tag character varying(255)
);


ALTER TABLE public.tag OWNER TO postgres;

--
-- Name: tag_id_tag_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tag ALTER COLUMN id_tag ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tag_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    login character varying(255),
    nome character varying(255),
    senha character varying(255)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ALTER COLUMN id_usuario ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentario (id_comentario, conteudo_comen, data, vote_count, id_usuario) FROM stdin;
\.
COPY public.comentario (id_comentario, conteudo_comen, data, vote_count, id_usuario) FROM '$$PATH$$/2864.dat';

--
-- Data for Name: conteudo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conteudo (id_conteudo, autor, conteudo, data_publicacao, id_exercicio, id_tag) FROM stdin;
\.
COPY public.conteudo (id_conteudo, autor, conteudo, data_publicacao, id_exercicio, id_tag) FROM '$$PATH$$/2866.dat';

--
-- Data for Name: exercicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exercicio (id_exercicio, data_publicacao, pergunta_exercicio, resposta_exercicio, id_usuario) FROM stdin;
\.
COPY public.exercicio (id_exercicio, data_publicacao, pergunta_exercicio, resposta_exercicio, id_usuario) FROM '$$PATH$$/2868.dat';

--
-- Data for Name: feed_back; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feed_back (id_feed_back, feed_back) FROM stdin;
\.
COPY public.feed_back (id_feed_back, feed_back) FROM '$$PATH$$/2870.dat';

--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag (id_tag, id_tag_relacionada, nome_tag) FROM stdin;
\.
COPY public.tag (id_tag, id_tag_relacionada, nome_tag) FROM '$$PATH$$/2872.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, login, nome, senha) FROM stdin;
\.
COPY public.usuario (id_usuario, login, nome, senha) FROM '$$PATH$$/2874.dat';

--
-- Name: comentario_id_comentario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);


--
-- Name: conteudo_id_conteudo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conteudo_id_conteudo_seq', 1, false);


--
-- Name: exercicio_id_exercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exercicio_id_exercicio_seq', 1, false);


--
-- Name: feed_back_id_feed_back_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feed_back_id_feed_back_seq', 1, false);


--
-- Name: tag_id_tag_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_id_tag_seq', 1, false);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);


--
-- Name: comentario comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);


--
-- Name: conteudo conteudo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT conteudo_pkey PRIMARY KEY (id_conteudo);


--
-- Name: exercicio exercicio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercicio
    ADD CONSTRAINT exercicio_pkey PRIMARY KEY (id_exercicio);


--
-- Name: feed_back feed_back_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feed_back
    ADD CONSTRAINT feed_back_pkey PRIMARY KEY (id_feed_back);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id_tag);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: conteudo fk1lr7pr955r5676tdsld1vt4ua; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT fk1lr7pr955r5676tdsld1vt4ua FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag);


--
-- Name: exercicio fk4stpbqgs37ciwargrf11rdnw0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercicio
    ADD CONSTRAINT fk4stpbqgs37ciwargrf11rdnw0 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: comentario fk9619kv3mim3a4yl0m5mdhhbh1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk9619kv3mim3a4yl0m5mdhhbh1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: conteudo fkn688c0oosg09hx6nsusrb1gro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conteudo
    ADD CONSTRAINT fkn688c0oosg09hx6nsusrb1gro FOREIGN KEY (id_exercicio) REFERENCES public.exercicio(id_exercicio);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     