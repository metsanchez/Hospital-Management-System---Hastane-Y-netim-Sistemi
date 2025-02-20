PGDMP         .                 {         
   HastaneSQL    15.1    15.1     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32768 
   HastaneSQL    DATABASE     �   CREATE DATABASE "HastaneSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1252';
    DROP DATABASE "HastaneSQL";
                postgres    false            �            1259    32793    Hastalar    TABLE     �  CREATE TABLE public."Hastalar" (
    "hastaTc" character varying(20) NOT NULL,
    ad character varying(30) NOT NULL,
    soyad character varying(30) NOT NULL,
    "dogumYeri" character varying(30) NOT NULL,
    "dogumTarihi" character varying(30) NOT NULL,
    "medeniDurum" character varying(15) NOT NULL,
    adres character varying(200) NOT NULL,
    telefon character varying(20) NOT NULL
);
    DROP TABLE public."Hastalar";
       public         heap    postgres    false            �            1259    32784    Ilaclar    TABLE     �   CREATE TABLE public."Ilaclar" (
    "barkodNo" integer NOT NULL,
    "ilacAdi" character varying(30) NOT NULL,
    tipi character varying(30) NOT NULL
);
    DROP TABLE public."Ilaclar";
       public         heap    postgres    false            �            1259    32803 
   Muayeneler    TABLE     �  CREATE TABLE public."Muayeneler" (
    tarih character varying(30),
    "hastaTc" character varying(40) NOT NULL,
    ad character varying(30),
    soyad character varying(30),
    "dogumYeri" character varying(30),
    "dogumTarihi" character varying(30),
    sikayet character varying(150) NOT NULL,
    tani character varying(150) NOT NULL,
    tedavi character varying(200) NOT NULL,
    receteno character varying(50)
);
     DROP TABLE public."Muayeneler";
       public         heap    postgres    false            �            1259    32808 	   Receteler    TABLE     4  CREATE TABLE public."Receteler" (
    "receteNo" character varying(15) NOT NULL,
    "hastaTc" character varying(30) NOT NULL,
    adi character varying(30) NOT NULL,
    soyadi character varying(30) NOT NULL,
    "receteTarihi" character varying(30) NOT NULL,
    ilaclar character varying(300) NOT NULL
);
    DROP TABLE public."Receteler";
       public         heap    postgres    false                      0    32793    Hastalar 
   TABLE DATA           u   COPY public."Hastalar" ("hastaTc", ad, soyad, "dogumYeri", "dogumTarihi", "medeniDurum", adres, telefon) FROM stdin;
    public          postgres    false    215   p                 0    32784    Ilaclar 
   TABLE DATA           @   COPY public."Ilaclar" ("barkodNo", "ilacAdi", tipi) FROM stdin;
    public          postgres    false    214   (                 0    32803 
   Muayeneler 
   TABLE DATA           �   COPY public."Muayeneler" (tarih, "hastaTc", ad, soyad, "dogumYeri", "dogumTarihi", sikayet, tani, tedavi, receteno) FROM stdin;
    public          postgres    false    216   �                 0    32808 	   Receteler 
   TABLE DATA           b   COPY public."Receteler" ("receteNo", "hastaTc", adi, soyadi, "receteTarihi", ilaclar) FROM stdin;
    public          postgres    false    217   �       s           2606    32797    Hastalar Hastalar_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Hastalar"
    ADD CONSTRAINT "Hastalar_pkey" PRIMARY KEY ("hastaTc");
 D   ALTER TABLE ONLY public."Hastalar" DROP CONSTRAINT "Hastalar_pkey";
       public            postgres    false    215            q           2606    32788    Ilaclar Ilaclar_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Ilaclar"
    ADD CONSTRAINT "Ilaclar_pkey" PRIMARY KEY ("barkodNo");
 B   ALTER TABLE ONLY public."Ilaclar" DROP CONSTRAINT "Ilaclar_pkey";
       public            postgres    false    214            u           2606    32812    Receteler Receteler_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Receteler"
    ADD CONSTRAINT "Receteler_pkey" PRIMARY KEY ("receteNo");
 F   ALTER TABLE ONLY public."Receteler" DROP CONSTRAINT "Receteler_pkey";
       public            postgres    false    217               �  x�u��j�0�����?[��ˆR�K�ζ�"�i,l� ;�Az�+t/=�����M!9Ds��73��9�K���v��?����:��^�Ә&1�s��]Q�v]N����m�M�B����&B
�r��H�Ty|J)�;]�	|:���P�Y����4�9��}�=Z��H����c��<eR$2�e�u�'�{�_N��i����Pt�����y�p?C�2IU�S
��;���[\a{~��<�b�X.�����-)q2��w=��>̣�!�� �I��J(�Π��0�Jl��}8X3cC�Y�8��)t��IUz�S
�߾|�M��{$A��ś�*t^�N/Vw�Ek�޼<(��k?Wg����@v��J�]�%Bx�E>ДQŕ�gl�������������@e~�"���GQ�0<��         �   x�=�;�@Dk�)r˟2�S�)(h�Qf�LV�8 p/��n�4o�ְA�WX��C�)�T>w'���Ʉ��p���'#x?2'x�l�c�!ŌL��0g9#���NZ������<���h�R�u���<�`��*s��hX҆�J�!�҃V�;#5���CHP��1�K{Q|<����]��#|ZK         �  x����n�0���S�"��dEc�lE
t�%�>P:e@~���t�&��z��$(��C�����x*O�J��+Pz���⾔6X9�����D���K�Y���B�,#��r�y���ڸ�--���Bq��o8N�q@j-$����>{�G��.�}�
�z9B�LƇ�\����ԉVo�Z+�V��E_m�C��wʡ�@3�_�
:��������?c���w�����*+��(��5O��/�b��M��WY��͓��A��ozL�5������:�����&`��������Eg��`�t1 6f���J��d
l������k�}�6����6�`;q�!Z^�M�+\K�L�#1a]�u�b���Y[��I�����GKxn"p�hؙ��KyǆЉ����Ս 56Ny�|O�$��o!�         �   x�}бn�0����d(���X%sԡC�.p
l�U�S5���J����~����+@T2QҠ1��Ζ�` 7^j�i$U�5<>�,W.�&Ưc��N1�M�8�z�'��B�>�Pm�Bo�fRWygryi?A����~�y�[�hI��������F�2Ζ����QJތ'b�,�������b�=ϻ��ە��ih�+�mQT��n��?��,$�t�eqj��u~�S��x�f�;�ձ�i{�j�5B|�^t3     