PGDMP         9                z         
   db_ankasaa    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16553 
   db_ankasaa    DATABASE     n   CREATE DATABASE db_ankasaa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE db_ankasaa;
                postgres    false            �            1259    16554    airlines    TABLE     e  CREATE TABLE public.airlines (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    is_active integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.airlines;
       public         heap    postgres    false            �            1259    16560    bookings    TABLE     G  CREATE TABLE public.bookings (
    id character varying(255) NOT NULL,
    user_id character varying(255),
    flight_id character varying(255),
    title character varying(20),
    full_name character varying(255),
    nationality character varying(255),
    travel_insurance character varying(10),
    terminal character(3),
    gate character(3),
    refundable integer,
    resechedule integer,
    total_payment integer,
    is_active integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.bookings;
       public         heap    postgres    false            �            1259    16565    cities    TABLE     �  CREATE TABLE public.cities (
    id character varying(255) NOT NULL,
    country_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    is_active integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone[]
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    16571 	   countries    TABLE     a  CREATE TABLE public.countries (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(5) NOT NULL,
    is_active integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16577    flights    TABLE     E  CREATE TABLE public.flights (
    id character varying(255) NOT NULL,
    airline_id character varying(255),
    departure_city character varying(255),
    arrival_city character varying(255),
    departure_time time without time zone,
    arrival_time time without time zone,
    code character varying(10),
    class integer,
    type integer,
    departure_date date,
    adult integer,
    child integer,
    direct integer,
    transit integer,
    more_transit integer,
    luggage integer,
    meal integer,
    wifi integer,
    price integer,
    stock integer,
    rating integer,
    total_reviewed integer,
    id_pic character varying(255),
    is_active integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.flights;
       public         heap    postgres    false            �            1259    16582    pic    TABLE     d  CREATE TABLE public.pic (
    id character varying(255) NOT NULL,
    name character varying(255),
    email character varying(255),
    phone_number character varying(20),
    is_active integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.pic;
       public         heap    postgres    false            �            1259    16587    users    TABLE     p  CREATE TABLE public.users (
    id character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    phone_number character varying(20),
    city character varying(255),
    address character varying(255),
    post_code character varying(20),
    photo character varying(255),
    verify_token character varying(255),
    is_verfied integer,
    is_active integer,
    level integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false                      0    16554    airlines 
   TABLE DATA           b   COPY public.airlines (id, name, image, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    209   �%                 0    16560    bookings 
   TABLE DATA           �   COPY public.bookings (id, user_id, flight_id, title, full_name, nationality, travel_insurance, terminal, gate, refundable, resechedule, total_payment, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    210   �&                 0    16565    cities 
   TABLE DATA           l   COPY public.cities (id, country_id, name, image, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    211   �&                 0    16571 	   countries 
   TABLE DATA           c   COPY public.countries (id, name, alias, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    212   T'                 0    16577    flights 
   TABLE DATA           /  COPY public.flights (id, airline_id, departure_city, arrival_city, departure_time, arrival_time, code, class, type, departure_date, adult, child, direct, transit, more_transit, luggage, meal, wifi, price, stock, rating, total_reviewed, id_pic, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    213   q'                 0    16582    pic 
   TABLE DATA           k   COPY public.pic (id, name, email, phone_number, is_active, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    214   �(                 0    16587    users 
   TABLE DATA           �   COPY public.users (id, username, email, password, phone_number, city, address, post_code, photo, verify_token, is_verfied, is_active, level, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    215   A)       y           2606    16656    airlines airlines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.airlines
    ADD CONSTRAINT airlines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.airlines DROP CONSTRAINT airlines_pkey;
       public            postgres    false    209            {           2606    16593    bookings bookings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_pkey;
       public            postgres    false    210            }           2606    16595    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    211                       2606    16597    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    212            �           2606    16599    flights flights_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_pkey;
       public            postgres    false    213            �           2606    16601    pic pic_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.pic
    ADD CONSTRAINT pic_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.pic DROP CONSTRAINT pic_pkey;
       public            postgres    false    214            �           2606    16603    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215               "  x�e�]n�0���S�H��!z��P�v���d�\?�St��+	�|�!�Y�K��c�T�.�-ƨ!v�r������������*(�l"���u���(�$(ZhD�"��?+j�$�R��(���Y��'�r��Q��t�MUqy��|�E��O�������U����������u�!�¸�.<0,�ZO���SD�1q��?,�'L��Ƶ<�|+k#̄L���5.�jY�~�B������#���S�쎗@Q��˷�{Az�=�828�`�x�9<�u]?�!t�            x������ � �         i   x�e�A
� E��)�@���!:����,*ݾ�h��㿟�!m%c�p�#����e��!�"j�at��W(ђA�c����ub�9��;����X�� �� !�            x������ � �         !  x���=�1�k�)rF��6n��	�x�#��b��L"�&J9�A�aK�3H�Q�h�	$�5AR��[�nN���p�	�l�r��%�4����#�#�3�#�y/����9t��@h��Wf����vu���!���W��T��D�p�Q[��a�'�0K�{�'�"���W^p��i�/P�(�e�U�P��IF�>��]猲���=q�at+s6-�&�Ac5����dW��~}��+=Ō�R����>�b��$D�+V��&(��g�����'yڸ�˲�.8�z         �   x�]�;
�0Dk����VZ�>U��9�},�$�4�}��"�00��b0$A�W��������Ԋ�����i��u�u�˚�]��ʔ�SL1���
�'�h]�h�L&�V����G���8�����e��o��,9�o�G2�         �   x���KO�@E��;�~���5���%-mI7�DPfl��[cbW����]�� 	&�D$ŀbF�Q*CI--��욑(·�Z�=i:�������y������A��W<E��v�+<&-�������`2��?�봹3��tq!��;��{�n�ߗ0�� ������ I�T����,��F���(y�9kK���:�͔U�km*7ӬlL�wj��m ɸ��w3/�P���zwѓk����j�     