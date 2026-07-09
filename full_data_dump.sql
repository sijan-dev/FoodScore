--
-- PostgreSQL database dump
--

\restrict LXq7ZfCaIW5KLRfAGBp9qJnARVK4ONXiaVwqlxGRmm3xJzQXsAekzxV8U7vAZOh

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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
-- Data for Name: additive_reference; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.additive_reference (e_number, common_name, risk_tier, risk_description, is_banned) FROM stdin;
E102	Tartrazine	high	\N	f
E104	Quinoline Yellow	high	\N	f
E110	Sunset Yellow	high	\N	f
E124	Ponceau 4R	high	\N	f
E127	Erythrosine	medium	\N	f
E129	Allura Red	high	\N	f
E211	Sodium Benzoate	medium	\N	f
E220	Sulfur Dioxide	high	\N	f
E249	Potassium Nitrite	harmful	\N	t
E250	Sodium Nitrite	harmful	\N	t
E251	Sodium Nitrate	harmful	\N	t
E252	Potassium Nitrate	harmful	\N	t
E621	Monosodium Glutamate	medium	\N	f
E950	Acesulfame K	medium	\N	f
E951	Aspartame	medium	\N	f
E952	Cyclamic Acid	medium	\N	f
E954	Saccharin	medium	\N	f
E955	Sucralose	low	\N	f
E123	Amaranth Red	harmful	\N	t
E121	Citrus Red 2	harmful	\N	t
E103	Alkanet	harmful	\N	t
E105	Fast Yellow AB	harmful	\N	t
E111	Orange GGN	harmful	\N	t
E125	Scarlet GN	harmful	\N	t
E126	Ponceau 6R	harmful	\N	t
E130	Indanthrene Blue	harmful	\N	t
E152	Black 7984	harmful	\N	t
E107	Yellow 2G	high	\N	f
E122	Carmoisine	high	\N	f
E131	Patent Blue V	high	\N	f
E132	Indigotine	high	\N	f
E133	Brilliant Blue FCF	high	\N	f
E142	Green S	high	\N	f
E151	Brilliant Black BN	high	\N	f
E155	Brown HT	high	\N	f
E210	Benzoic Acid	high	\N	f
E212	Potassium Benzoate	high	\N	f
E213	Calcium Benzoate	high	\N	f
E221	Sodium Sulfite	high	\N	f
E222	Sodium Bisulfite	high	\N	f
E223	Sodium Metabisulfite	high	\N	f
E224	Potassium Metabisulfite	high	\N	f
E310	Propyl Gallate	high	\N	f
E311	Octyl Gallate	high	\N	f
E312	Dodecyl Gallate	high	\N	f
E320	BHA Butylated Hydroxyanisole	high	\N	f
E321	BHT Butylated Hydroxytoluene	high	\N	f
E622	Monopotassium Glutamate	high	\N	f
E623	Calcium Diglutamate	high	\N	f
E625	Magnesium Diglutamate	high	\N	f
E407	Carrageenan	high	\N	f
E407A	Processed Eucheuma Seaweed	high	\N	f
E171	Titanium Dioxide	high	\N	f
E150A	Plain Caramel	medium	\N	f
E150B	Caustic Sulfite Caramel	medium	\N	f
E150C	Ammonia Caramel	medium	\N	f
E150D	Sulfite Ammonia Caramel	medium	\N	f
E160B	Annatto Bixin	medium	\N	f
E161B	Lutein	medium	\N	f
E280	Propionic Acid	medium	\N	f
E281	Sodium Propionate	medium	\N	f
E282	Calcium Propionate	medium	\N	f
E283	Potassium Propionate	medium	\N	f
E338	Phosphoric Acid	medium	\N	f
E339	Sodium Phosphates	medium	\N	f
E340	Potassium Phosphates	medium	\N	f
E341	Calcium Phosphates	medium	\N	f
E450	Diphosphates	medium	\N	f
E451	Triphosphates	medium	\N	f
E452	Polyphosphates	medium	\N	f
E627	Disodium Guanylate	medium	\N	f
E631	Disodium Inosinate	medium	\N	f
E635	Disodium Ribonucleotides	medium	\N	f
E960	Steviol Glycosides	medium	\N	f
E965	Maltitol	medium	\N	f
E966	Lactitol	medium	\N	f
E172	Iron Oxides and Hydroxides	medium	\N	f
E100	Curcumin Turmeric	low	\N	f
E101	Riboflavin Vitamin B2	low	\N	f
E140	Chlorophylls	low	\N	f
E160A	Beta-Carotene	low	\N	f
E160C	Paprika Extract	low	\N	f
E160D	Lycopene	low	\N	f
E162	Beetroot Red	low	\N	f
E163	Anthocyanins	low	\N	f
E200	Sorbic Acid	low	\N	f
E202	Potassium Sorbate	low	\N	f
E203	Calcium Sorbate	low	\N	f
E260	Acetic Acid	low	\N	f
E261	Potassium Acetate	low	\N	f
E262	Sodium Acetates	low	\N	f
E270	Lactic Acid	low	\N	f
E296	Malic Acid	low	\N	f
E300	Ascorbic Acid Vitamin C	low	\N	f
E301	Sodium Ascorbate	low	\N	f
E302	Calcium Ascorbate	low	\N	f
E306	Tocopherol Vitamin E	low	\N	f
E307	Alpha-Tocopherol	low	\N	f
E322	Lecithins	low	\N	f
E471	Mono and Diglycerides of Fatty Acids	low	\N	f
E472E	Mono and Diacetyl Tartaric Acid Esters	low	\N	f
E476	Polyglycerol Polyricinoleate	low	\N	f
E481	Sodium Stearoyl Lactylate	low	\N	f
E482	Calcium Stearoyl Lactylate	low	\N	f
E330	Citric Acid	low	\N	f
E331	Sodium Citrates	low	\N	f
E332	Potassium Citrates	low	\N	f
E333	Calcium Citrates	low	\N	f
E334	Tartaric Acid	low	\N	f
E335	Sodium Tartrates	low	\N	f
E400	Alginic Acid	low	\N	f
E401	Sodium Alginate	low	\N	f
E406	Agar	low	\N	f
E410	Locust Bean Gum	low	\N	f
E412	Guar Gum	low	\N	f
E415	Xanthan Gum	low	\N	f
E440	Pectins	low	\N	f
E460	Cellulose	low	\N	f
E466	Carboxymethyl Cellulose	low	\N	f
E420	Sorbitol	low	\N	f
E421	Mannitol	low	\N	f
E422	Glycerol	low	\N	f
E500	Sodium Carbonates	low	\N	f
E501	Potassium Carbonates	low	\N	f
E503	Ammonium Carbonates	low	\N	f
E504	Magnesium Carbonates	low	\N	f
E508	Potassium Chloride	low	\N	f
E509	Calcium Chloride	low	\N	f
E516	Calcium Sulfate	low	\N	f
E551	Silicon Dioxide	low	\N	f
E552	Calcium Silicate	low	\N	f
E553B	Talc	low	\N	f
E554	Sodium Aluminosilicate	low	\N	f
E1400	Dextrin	low	\N	f
E1404	Oxidised Starch	low	\N	f
E1410	Monostarch Phosphate	low	\N	f
E1412	Distarch Phosphate	low	\N	f
E1414	Acetylated Distarch Phosphate	low	\N	f
E1420	Acetylated Starch	low	\N	f
E1422	Acetylated Distarch Adipate	low	\N	f
E1442	Hydroxy Propyl Distarch Phosphate	low	\N	f
E1450	Starch Sodium Octenyl Succinate	low	\N	f
E901	Beeswax	low	\N	f
E903	Carnauba Wax	low	\N	f
E904	Shellac	low	\N	f
E640	Glycine	low	\N	f
E575	Glucono Delta-Lactone	low	\N	f
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (product_id, name, brand, category, barcode, ingredients_raw, additives, nutriments, nova_group, nutri_score, health_score, is_harmful, created_at, updated_at, image_url) FROM stdin;
1c3244b3-d3cc-4722-a3c0-45d133b72622	Coke Original Taste	Coca-Cola	Beverages and beverages preparations	5449000000996	carbonated water, sugar, colour (caramel e150d), acid (phosphoric acid), natural flavourings, caffeine flavouring,	["e150d", "e338"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 10.6, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	78	f	2026-05-09 13:55:46.962247+00	2026-05-09 13:55:48.381824+00	\N
4524c344-58e4-4d9b-9489-c67d1822adbf	Coca-Cola Original	Coca-Cola	Beverages	\N	\N	["e150d", "e338"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 10.6, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	\N	98	f	2026-05-10 05:59:17.486529+00	2026-05-10 05:59:17.493622+00	\N
be0ca262-4f96-422b-abb6-66955bc6c7f2	Sprite	Coca-Cola	Beverages	\N	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 9.0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	\N	100	f	2026-05-10 05:59:17.604999+00	2026-05-10 05:59:17.611476+00	\N
bcc95a41-142f-45dd-bf7a-a7dd17a49002	Fanta Orange	Coca-Cola	Beverages	\N	\N	["e110", "e129"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 11.0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	\N	98	f	2026-05-10 05:59:17.721977+00	2026-05-10 05:59:17.724184+00	\N
a0c0a62d-cac0-4eaf-9ecc-9880e01f6530	Wai Wai Noodles	CG Foods	Noodles	\N	\N	["e621", "e102"]	{"salt_100g": 2.1, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 8}	\N	\N	90	f	2026-05-10 05:59:17.835932+00	2026-05-10 05:59:17.843287+00	\N
afb43530-1495-4213-b926-b1e48a8dc3d4	Wai Wai Cup Noodles	CG Foods	Noodles	\N	\N	["e621"]	{"salt_100g": 2.0, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 7}	\N	\N	90	f	2026-05-10 05:59:17.954972+00	2026-05-10 05:59:17.962241+00	\N
d4e329c4-6c3b-4343-aa82-1a83d40e2a1a	Ruchi Noodles	CG Foods	Noodles	\N	\N	["e621"]	{"salt_100g": 2.2, "fiber_100g": 1, "sugars_100g": 2.5, "proteins_100g": 7.5, "saturated_fat_100g": 7.5}	\N	\N	90	f	2026-05-10 05:59:18.073837+00	2026-05-10 05:59:18.081052+00	\N
6bf202e0-64d8-41d8-8273-a25734892284	Fresh Dahi	Sujal	Dairy	\N	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.5, "proteins_100g": 3.5, "saturated_fat_100g": 1.5}	\N	\N	100	f	2026-05-10 05:59:18.193982+00	2026-05-10 05:59:18.2007+00	\N
2f15975b-1fe4-40b2-8b2f-0f5f73afc475	Pasteurized Milk	Nepal Dairy	Dairy	\N	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.8, "proteins_100g": 3.2, "saturated_fat_100g": 1.8}	\N	\N	100	f	2026-05-10 05:59:18.312011+00	2026-05-10 05:59:18.31934+00	\N
2035b73f-11b9-450b-934d-0601d27a4ed6	Butter	Amul	Dairy	\N	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0.1, "proteins_100g": 0.9, "saturated_fat_100g": 51}	\N	\N	90	f	2026-05-10 05:59:18.431999+00	2026-05-10 05:59:18.439545+00	\N
8b8900bb-0bcc-475a-9776-1fd38acba9c7	Oreo Cookies	Mondelez	Snacks	\N	\N	["e322", "e476"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 35, "proteins_100g": 5, "saturated_fat_100g": 12}	\N	\N	88	f	2026-05-10 05:59:18.552477+00	2026-05-10 05:59:18.559599+00	\N
9da91612-71d0-49e2-ae52-c0251f663eae	Parle G Biscuits	Parle	Snacks	\N	\N	[]	{"salt_100g": 0.5, "fiber_100g": 2.5, "sugars_100g": 25, "proteins_100g": 7, "saturated_fat_100g": 6}	\N	\N	90	f	2026-05-10 05:59:18.672258+00	2026-05-10 05:59:18.679628+00	\N
9ba5ea8e-f33e-4cd1-95f4-5ca245037c67	Good Day Biscuits	Britannia	Snacks	\N	\N	["e322"]	{"salt_100g": 0.6, "fiber_100g": 1.5, "sugars_100g": 28, "proteins_100g": 6, "saturated_fat_100g": 8}	\N	\N	88	f	2026-05-10 05:59:18.792433+00	2026-05-10 05:59:18.800359+00	\N
33d9b869-8827-473d-a32f-72cec4d777f5	Pringles Original	Kellogg's	Chips	\N	\N	["e621", "e631", "e627"]	{"salt_100g": 1.5, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 15}	\N	\N	90	f	2026-05-10 05:59:18.914423+00	2026-05-10 05:59:18.922064+00	\N
15f93e38-f276-47ed-999e-3c15516aceec	Lays Classic Salted	PepsiCo	Chips	\N	\N	["e621"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 5, "saturated_fat_100g": 10}	\N	\N	93	f	2026-05-10 05:59:19.036161+00	2026-05-10 05:59:19.043954+00	\N
4d559e51-16b8-4828-afaa-410a9c42afb1	Real Fruit Juice Mango	Dabur	Beverages	\N	\N	[]	{"salt_100g": 0, "fiber_100g": 0.5, "sugars_100g": 12, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	\N	98	f	2026-05-10 05:59:19.157195+00	2026-05-10 05:59:19.165082+00	\N
41f272b7-8935-4596-805a-bf303852a63e	Real Fruit Juice Mixed Fruit	Dabur	Beverages	\N	\N	[]	{"salt_100g": 0, "fiber_100g": 0.5, "sugars_100g": 11, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	\N	98	f	2026-05-10 05:59:19.276928+00	2026-05-10 05:59:19.284664+00	\N
b94b132a-ea5a-408e-866b-40a964d7cc37	Basmati Rice	India Gate	Cooking	\N	\N	[]	{"salt_100g": 0, "fiber_100g": 1, "sugars_100g": 0.1, "proteins_100g": 7, "saturated_fat_100g": 0.1}	\N	\N	100	f	2026-05-10 05:59:19.398345+00	2026-05-10 05:59:19.405847+00	\N
a695459c-6be4-45bf-a6cd-28cfd9c46b4d	Fortune Refined Oil	Fortune	Cooking	\N	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 14}	\N	\N	95	f	2026-05-10 05:59:19.519246+00	2026-05-10 05:59:19.527078+00	\N
eeb6c590-14ab-40f4-b695-e4861e5ffeff	Fresh Dahi	Sujal	dairy	\N	Pasteurized milk, live cultures	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.5, "proteins_100g": 3.5, "saturated_fat_100g": 1.5}	1	\N	100	f	2026-05-16 07:21:49.490647+00	2026-05-16 07:21:50.192032+00	\N
70b41011-6e3e-4233-a044-882ca9c47fef	Nutella	Nutella	Petit-déjeuners	3017620422003	Sucre, huile de palme, NOISETTES 13%, cacao maigre 7,4%, LAIT écrémé en poudre 6,6%, LACTOSERUM en poudre, émulsifiants: lécithines [SOJA), vanilline. Sans gluten.	["e322", "e322i"]	{"salt_100g": 0.107, "fiber_100g": 0, "sugars_100g": 56.3, "proteins_100g": 6.3, "saturated_fat_100g": 10.6}	4	E	70	f	2026-05-16 08:12:20.968092+00	2026-05-16 08:12:22.013998+00	\N
29ced7d5-6229-4df4-bb4d-48dc60b3fa40	Wai Wai Noodles	CG Foods	snack	\N	Wheat flour, palm oil, salt, MSG, tartrazine	["E621", "E102"]	{"salt_100g": 2.1, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 8}	4	E	48	f	2026-05-16 07:21:49.465762+00	2026-07-02 07:18:28.162987+00	\N
b8745d2a-9b99-4ddd-84aa-7bb20bf55746	Wai Wai Chicken Noodles	CG Foods	Noodles	8901058171059	\N	["E621", "E102", "E501"]	{"salt_100g": 1.8, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 3.5}	\N	D	64	f	2026-07-02 08:12:53.908482+00	2026-07-02 08:12:53.910979+00	\N
30e0d4fc-347c-4b44-a5c4-2aa5a8825997	Wai Wai Veg Noodles	CG Foods	Noodles	8901058171060	\N	["E621", "E501"]	{"salt_100g": 1.7, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	79	f	2026-07-02 08:12:54.021647+00	2026-07-02 08:12:54.023111+00	\N
c8908d33-4f71-4fc2-be5b-f67b732916b9	Wai Wai Masala Noodles	CG Foods	Noodles	8901058171061	\N	["E621", "E102", "E110"]	{"salt_100g": 2.0, "fiber_100g": 1, "sugars_100g": 2.5, "proteins_100g": 7.5, "saturated_fat_100g": 3.5}	\N	D	51	f	2026-07-02 08:12:54.093379+00	2026-07-02 08:12:54.103295+00	\N
c1dc5ad7-f56f-4ea8-84dc-f705bc2bb982	Lobia Beans	Local	Pulses	8901234567512	\N	[]	{"salt_100g": 0.02, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 23, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:44.663178+00	2026-07-02 08:26:44.666408+00	\N
88e1e5d5-a5c5-4c91-9a48-c9b1f16b4772	Wai Wai Cup Noodles Chicken	CG Foods	Noodles	8901058172001	\N	["E621", "E501"]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	79	f	2026-07-02 08:12:54.172719+00	2026-07-02 08:12:54.175226+00	\N
7aca1065-5504-4bfb-8f88-6274ebd30ede	Wai Wai Cup Noodles Veg	CG Foods	Noodles	8901058172002	\N	["E621"]	{"salt_100g": 1.4, "fiber_100g": 1, "sugars_100g": 2.5, "proteins_100g": 6.5, "saturated_fat_100g": 2.5}	\N	D	84	f	2026-07-02 08:12:54.236641+00	2026-07-02 08:12:54.23882+00	\N
11f7ea7c-039f-407f-9ec6-d4db82c6e662	Ruchi Chicken Noodles	CG Foods	Noodles	8901058173008	\N	["E621", "E501"]	{"salt_100g": 1.6, "fiber_100g": 1, "sugars_100g": 2.5, "proteins_100g": 7.5, "saturated_fat_100g": 3}	\N	D	79	f	2026-07-02 08:12:54.304135+00	2026-07-02 08:12:54.306351+00	\N
8a0156eb-d1a6-404c-86c3-543bafbca793	Ruchi Veg Noodles	CG Foods	Noodles	8901058173009	\N	["E621"]	{"salt_100g": 1.4, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 2.5}	\N	D	84	f	2026-07-02 08:12:54.373892+00	2026-07-02 08:12:54.376528+00	\N
de217d48-5567-453c-a317-9a5c5c5f66ce	Mayos Chicken Noodles	Mayos	Noodles	8901058174001	\N	["E621", "E627", "E631"]	{"salt_100g": 1.9, "fiber_100g": 0.8, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	67	f	2026-07-02 08:12:54.443595+00	2026-07-02 08:12:54.446077+00	\N
f1882699-0c1f-41ee-b0bb-6e1d79ec385f	Mayos Masala Noodles	Mayos	Noodles	8901058174002	\N	["E621", "E102"]	{"salt_100g": 2.0, "fiber_100g": 0.8, "sugars_100g": 2.5, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	66	f	2026-07-02 08:12:54.514327+00	2026-07-02 08:12:54.516958+00	\N
c54ac431-c9e5-490c-8667-ac93186fb713	Rara Chicken Noodles	Rara	Noodles	8901058175001	\N	["E621", "E501"]	{"salt_100g": 1.8, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 3.5}	\N	D	79	f	2026-07-02 08:12:54.586698+00	2026-07-02 08:12:54.589101+00	\N
83cfb5e1-df1d-4962-a2b7-241e999b11f1	Rara Veg Noodles	Rara	Noodles	8901058175002	\N	["E621"]	{"salt_100g": 1.6, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 7.5, "saturated_fat_100g": 3}	\N	D	81	f	2026-07-02 08:12:54.655751+00	2026-07-02 08:12:54.658049+00	\N
7aac7d56-7293-4cf8-826d-a33ec7f1de4f	Rara Masala Noodles	Rara	Noodles	8901058175003	\N	["E621", "E110"]	{"salt_100g": 2.0, "fiber_100g": 0.8, "sugars_100g": 2.5, "proteins_100g": 7, "saturated_fat_100g": 3.5}	\N	D	66	f	2026-07-02 08:12:54.724428+00	2026-07-02 08:12:54.726923+00	\N
a950db18-aa01-4cf3-9222-b90287b5dac8	Top Ramen Chicken	Nissin	Noodles	8901058176001	\N	["E621", "E627", "E631"]	{"salt_100g": 1.7, "fiber_100g": 0.5, "sugars_100g": 1.5, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	67	f	2026-07-02 08:12:54.800365+00	2026-07-02 08:12:54.80291+00	\N
528caf7e-7537-4bc9-ab8a-92c3fcf84642	Top Ramen Masala	Nissin	Noodles	8901058176002	\N	["E621", "E102"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	66	f	2026-07-02 08:12:54.873529+00	2026-07-02 08:12:54.875621+00	\N
76b7b4db-0882-4859-8759-40beb6b8f28c	Ching's Secret Hakka Noodles	Ching's	Noodles	8901058177001	\N	["E501"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 9, "saturated_fat_100g": 0.5}	\N	A	100	f	2026-07-02 08:12:54.944803+00	2026-07-02 08:12:54.946991+00	\N
b97be944-3ef6-4d4c-bad9-f377621a5be7	Coca-Cola Zero Sugar	Coca-Cola	Beverages	5449000000997	\N	["E150D", "E338", "E950", "E951"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	75	f	2026-07-02 08:12:55.083667+00	2026-07-02 08:12:55.085439+00	\N
7237a6c8-96bb-46e7-b6a7-58c19feb52ba	Sprite	Coca-Cola	Beverages	5449000134639	\N	["E330"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 9.0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	88	f	2026-07-02 08:12:55.154121+00	2026-07-02 08:12:55.15613+00	\N
98247ed6-6f52-4c51-96e0-e77880c8eb00	Fanta Orange	Coca-Cola	Beverages	5449000212177	\N	["E110", "E129"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 11.0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	58	f	2026-07-02 08:12:55.216801+00	2026-07-02 08:12:55.217826+00	\N
8a8b4601-55f1-4b80-840b-61254d455afd	Pepsi Cola	PepsiCo	Beverages	5449000212178	\N	["E150D", "E338", "E951"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 11.0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	67	f	2026-07-02 08:12:55.277852+00	2026-07-02 08:12:55.279933+00	\N
98e59dad-10f9-45f1-965f-3c19a6142817	Mountain Dew	PepsiCo	Beverages	5449000212179	\N	["E102", "E338"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 11.5, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	66	f	2026-07-02 08:12:55.347753+00	2026-07-02 08:12:55.350141+00	\N
3da78728-38a4-45a6-8ba2-04cbed4df354	7UP	PepsiCo	Beverages	5449000212180	\N	["E330"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 9.5, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	88	f	2026-07-02 08:12:55.422597+00	2026-07-02 08:12:55.425209+00	\N
e7ab417d-36e1-4316-845a-6cc40189b2c2	Real Fruit Juice Mango	Dabur	Beverages	8901030510239	\N	["E202", "E300"]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 12, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	C	94	f	2026-07-02 08:12:55.491695+00	2026-07-02 08:12:55.4934+00	\N
a2660452-c170-48ea-9a84-6ed6a050faa9	Real Fruit Juice Mixed Fruit	Dabur	Beverages	8901030510246	\N	["E202", "E300"]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 11, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	C	94	f	2026-07-02 08:12:55.559985+00	2026-07-02 08:12:55.561994+00	\N
11aea383-5b61-4899-afc0-500159a43add	Real Fruit Juice Orange	Dabur	Beverages	8901030510247	\N	["E202", "E300"]	{"salt_100g": 0.01, "fiber_100g": 0.3, "sugars_100g": 11.5, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	C	94	f	2026-07-02 08:12:55.629613+00	2026-07-02 08:12:55.63185+00	\N
2c2e9f21-4d19-40a6-b3b5-961f02017d7a	Real Fruit Juice Guava	Dabur	Beverages	8901030510248	\N	["E202", "E300"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 10, "proteins_100g": 0.3, "saturated_fat_100g": 0}	\N	A	99	f	2026-07-02 08:12:55.697225+00	2026-07-02 08:12:55.698635+00	\N
e3233dbf-4158-41f4-b5c1-8bbcbe0938e5	Maaza Mango Drink	Coca-Cola	Beverages	8901030510249	\N	["E202", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 13, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	84	f	2026-07-02 08:12:55.761968+00	2026-07-02 08:12:55.763772+00	\N
bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Sting Energy Drink	PepsiCo	Beverages	8901058180001	\N	["E102", "E110", "E338", "E950", "E951"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 11, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	37	f	2026-07-02 08:12:55.836622+00	2026-07-02 08:12:55.839016+00	\N
8b8fa440-25f2-4fee-a7aa-b035f25c0b47	Red Bull Energy Drink	Red Bull	Beverages	8901058180002	\N	["E330", "E300"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 11, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	84	f	2026-07-02 08:12:55.907206+00	2026-07-02 08:12:55.909658+00	\N
4de9dfdb-15c4-4ef9-bb59-42972727f908	Alpenliebe Lollipop Strawberry	Perfetti	Candies	8901234570001	\N	["E102", "E129", "E133", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	28	f	2026-07-02 08:33:54.148892+00	2026-07-02 08:33:54.151072+00	\N
868be5bf-53c6-4e2e-9c27-152fd9dd4873	Gatorade Blue Bolt	PepsiCo	Beverages	8901058180003	\N	["E132", "E330"]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 6, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	C	83	f	2026-07-02 08:12:55.978492+00	2026-07-02 08:12:55.980854+00	\N
10cd85ae-ecf8-4d5e-af3a-09414978a7d1	Lipton Ice Tea Lemon	Lipton	Beverages	8901058181001	\N	["E330", "E202"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 7, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	C	96	f	2026-07-02 08:12:56.051624+00	2026-07-02 08:12:56.054381+00	\N
3a3dd6d9-ab01-4366-b6a7-5f5e6cdbc500	Nestea Lemon Tea	Nestle	Beverages	8901058181002	\N	["E330", "E202"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 7.5, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	C	96	f	2026-07-02 08:12:56.125175+00	2026-07-02 08:12:56.12747+00	\N
5ae0decc-a2d6-4004-b42f-16e118986b0b	Fresh Dahi	Sujal	Dairy	8901234567890	\N	[]	{"salt_100g": 0.12, "fiber_100g": 0, "sugars_100g": 4.5, "proteins_100g": 3.5, "saturated_fat_100g": 1}	\N	B	100	f	2026-07-02 08:12:56.199529+00	2026-07-02 08:12:56.201507+00	\N
c7f71efa-3f0c-4cef-b71d-455ac86887a1	Sujal Full Cream Milk	Sujal	Dairy	8901234567891	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.8, "proteins_100g": 3.2, "saturated_fat_100g": 3.5}	\N	C	98	f	2026-07-02 08:12:56.266692+00	2026-07-02 08:12:56.268438+00	\N
593b94b5-33ab-4cfd-9ac8-107cfc85813a	Pasteurized Milk	Nepal Dairy	Dairy	8909876543210	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.8, "proteins_100g": 3.2, "saturated_fat_100g": 1.2}	\N	B	100	f	2026-07-02 08:12:56.329212+00	2026-07-02 08:12:56.331218+00	\N
adfa9f97-5389-4ac6-a8b6-0d7753711db4	Toned Milk	Nepal Dairy	Dairy	8909876543211	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.8, "proteins_100g": 3.5, "saturated_fat_100g": 0.5}	\N	B	100	f	2026-07-02 08:12:56.393568+00	2026-07-02 08:12:56.39547+00	\N
07029a5e-4e69-4794-8c55-402750e442fd	Amul Butter	Amul	Dairy	8901234567892	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0.1, "proteins_100g": 0.9, "saturated_fat_100g": 32}	\N	E	80	f	2026-07-02 08:12:56.460463+00	2026-07-02 08:12:56.463257+00	\N
0c6fa9e8-0a37-4051-81c6-f2ea7639fac3	Amul Processed Cheese	Amul	Dairy	8901234567893	\N	["E339", "E452"]	{"salt_100g": 1.6, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 17}	\N	D	74	f	2026-07-02 08:12:56.527217+00	2026-07-02 08:12:56.529598+00	\N
96595679-b228-47d8-9145-5abdc1fddecb	Amul Mozzarella Cheese	Amul	Dairy	8901234567894	\N	[]	{"salt_100g": 0.7, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 14}	\N	D	91	f	2026-07-02 08:12:56.594923+00	2026-07-02 08:12:56.5971+00	\N
dc20f1b9-ca02-4933-a099-79a933065959	Milkpak UHT Milk	Milkpak	Dairy	8901234567895	\N	["E306"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.8, "proteins_100g": 3.2, "saturated_fat_100g": 3.5}	\N	C	96	f	2026-07-02 08:12:56.661691+00	2026-07-02 08:12:56.663814+00	\N
6ecd8c34-e3c0-4d76-a0cd-448a01b4f506	Sujal Lassi	Sujal	Dairy	8901234567896	\N	["E330"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 12, "proteins_100g": 3, "saturated_fat_100g": 0.8}	\N	C	96	f	2026-07-02 08:12:56.728891+00	2026-07-02 08:12:56.730849+00	\N
0fad246c-7e5e-4317-b06b-6472238b5758	Himalayan Yak Cheese	Himalayan	Dairy	8901234567897	\N	[]	{"salt_100g": 1.2, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 18}	\N	D	91	f	2026-07-02 08:12:56.795787+00	2026-07-02 08:12:56.796912+00	\N
6f15eb4b-a7f1-487b-a639-40eb9ded70d9	Oreo Original	Mondelez	Biscuits	8901725004400	\N	["E322", "E476", "E500"]	{"salt_100g": 0.6, "fiber_100g": 2, "sugars_100g": 35, "proteins_100g": 5, "saturated_fat_100g": 5}	\N	E	72	f	2026-07-02 08:12:56.858827+00	2026-07-02 08:12:56.86176+00	\N
0aae908a-fb68-4814-abd2-0dbf266d4aa9	Oreo Chocolate Cream	Mondelez	Biscuits	8901725004401	\N	["E322", "E476", "E500"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 36, "proteins_100g": 5, "saturated_fat_100g": 5.5}	\N	E	74	f	2026-07-02 08:12:56.932994+00	2026-07-02 08:12:56.935605+00	\N
b4deeab4-bb72-4dde-b3fe-8cca2684376b	Parle G Original	Parle	Biscuits	8901058100004	\N	["E503"]	{"salt_100g": 0.4, "fiber_100g": 2.5, "sugars_100g": 25, "proteins_100g": 7, "saturated_fat_100g": 2.5}	\N	D	86	f	2026-07-02 08:12:57.00834+00	2026-07-02 08:12:57.010645+00	\N
1ca690c3-89fa-432e-8b75-96404d456a33	Good Day Cashew Cookies	Britannia	Biscuits	8901725004417	\N	["E322", "E503"]	{"salt_100g": 0.5, "fiber_100g": 1.5, "sugars_100g": 28, "proteins_100g": 6, "saturated_fat_100g": 3.5}	\N	D	84	f	2026-07-02 08:12:57.079134+00	2026-07-02 08:12:57.081903+00	\N
fbae416e-96ad-47e4-a068-954530d194d5	Bourbon Chocolate Cream	Britannia	Biscuits	8901725004418	\N	["E322", "E476"]	{"salt_100g": 0.4, "fiber_100g": 1.5, "sugars_100g": 38, "proteins_100g": 5, "saturated_fat_100g": 6}	\N	E	76	f	2026-07-02 08:12:57.15297+00	2026-07-02 08:12:57.155904+00	\N
b427de3b-5fa4-46b4-af92-f528730451ae	Tiger Cream Biscuit	Britannia	Biscuits	8901725004419	\N	["E322", "E503"]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 6, "saturated_fat_100g": 4}	\N	D	84	f	2026-07-02 08:12:57.225565+00	2026-07-02 08:12:57.227719+00	\N
d220336d-8a80-4747-8eb4-490b9ede7470	Glucose Biscuit	Parle	Biscuits	8901725004420	\N	["E503"]	{"salt_100g": 0.4, "fiber_100g": 2, "sugars_100g": 22, "proteins_100g": 7, "saturated_fat_100g": 2}	\N	C	91	f	2026-07-02 08:12:57.291384+00	2026-07-02 08:12:57.293128+00	\N
2d67948e-8bcb-4d37-8489-92b0b1e5a34f	Hide and Seek Chocolate Chip	Parle	Biscuits	8901725004421	\N	["E322", "E476", "E503"]	{"salt_100g": 0.4, "fiber_100g": 1.5, "sugars_100g": 32, "proteins_100g": 5, "saturated_fat_100g": 7}	\N	E	74	f	2026-07-02 08:12:57.356522+00	2026-07-02 08:12:57.358777+00	\N
e084db98-b176-4f8c-85ff-9acdc172e1f8	Marie Lite Biscuit	Britannia	Biscuits	8901725004422	\N	["E503"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 20, "proteins_100g": 7, "saturated_fat_100g": 2}	\N	C	91	f	2026-07-02 08:12:57.425756+00	2026-07-02 08:12:57.428014+00	\N
def06114-32e6-4f53-9a40-807a88175478	Monaco Salted Crackers	Parle	Biscuits	8901725004423	\N	["E503", "E322"]	{"salt_100g": 1.2, "fiber_100g": 1.5, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 3}	\N	C	92	f	2026-07-02 08:12:57.495736+00	2026-07-02 08:12:57.498309+00	\N
2acb8ad8-71fe-4af4-bb90-5b5ab5f5344e	Pringles Original	Kellogg's	Chips	5055060101212	\N	["E621", "E631", "E627"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 6}	\N	D	67	f	2026-07-02 08:12:57.565669+00	2026-07-02 08:12:57.567671+00	\N
9e604c81-cb6d-4394-a090-99cae0e3e1d0	Pringles Sour Cream	Kellogg's	Chips	5055060101213	\N	["E621", "E631", "E627", "E160A"]	{"salt_100g": 1.3, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 5, "saturated_fat_100g": 6.5}	\N	D	65	f	2026-07-02 08:12:57.635543+00	2026-07-02 08:12:57.637562+00	\N
7bbec508-3c1e-426d-bf11-c9c19b9de3e9	Moth Beans	Local	Pulses	8901234567513	\N	[]	{"salt_100g": 0.02, "fiber_100g": 12, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:44.78505+00	2026-07-02 08:26:44.792729+00	\N
837cc3bb-65d8-4e2d-bd61-9ff4f2cb2dd1	Lays Classic Salted	PepsiCo	Chips	8901443010710	\N	["E621"]	{"salt_100g": 1.0, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 5, "saturated_fat_100g": 4}	\N	C	89	f	2026-07-02 08:12:57.709041+00	2026-07-02 08:12:57.710987+00	\N
782ae9e2-c653-46e0-a81c-90cd8d1add08	Lays Magic Masala	PepsiCo	Chips	8901443010711	\N	["E621", "E631", "E627", "E160C"]	{"salt_100g": 1.3, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 4.5}	\N	D	68	f	2026-07-02 08:12:57.780665+00	2026-07-02 08:12:57.782737+00	\N
9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Kurkure Masala Munch	PepsiCo	Chips	8901443010712	\N	["E621", "E631", "E627", "E102", "E110"]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 5}	\N	D	34	f	2026-07-02 08:12:57.848966+00	2026-07-02 08:12:57.849976+00	\N
a109051a-cd9f-44a4-9dcd-38cef6a1c3e2	Doritos Nacho Cheese	PepsiCo	Chips	8901443010713	\N	["E621", "E635", "E160A"]	{"salt_100g": 1.4, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 4}	\N	D	75	f	2026-07-02 08:12:57.910679+00	2026-07-02 08:12:57.912264+00	\N
ebc51a53-e6d2-434f-826e-b49c7235d39b	Uncle Chips Spicy Treat	PepsiCo	Chips	8901443010714	\N	["E621", "E160C"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 1.5, "proteins_100g": 5.5, "saturated_fat_100g": 4}	\N	D	82	f	2026-07-02 08:12:57.973444+00	2026-07-02 08:12:57.974365+00	\N
5f9633c8-edd4-4c16-a7bd-67c1b4ec2d08	KitKat 4 Finger	Nestle	Chocolate	7622210951861	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 6, "saturated_fat_100g": 12}	\N	E	76	f	2026-07-02 08:12:58.034721+00	2026-07-02 08:12:58.036529+00	\N
ea5f1802-7015-4b3a-a8e3-3ea16d07bd27	Dairy Milk Silk	Cadbury	Chocolate	7622210951862	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 56, "proteins_100g": 6, "saturated_fat_100g": 18}	\N	E	76	f	2026-07-02 08:12:58.104051+00	2026-07-02 08:12:58.105831+00	\N
7b0d94bd-3f0f-4b67-a6a0-52590e7fe615	Dairy Milk Fruit Nut	Cadbury	Chocolate	7622210951863	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1.5, "sugars_100g": 54, "proteins_100g": 6, "saturated_fat_100g": 16}	\N	E	76	f	2026-07-02 08:12:58.173992+00	2026-07-02 08:12:58.175812+00	\N
bc8b4f57-4b5d-4874-ac68-79ffb61f4465	Snickers Bar	Mars	Chocolate	7622210951864	\N	["E322", "E471"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 48, "proteins_100g": 7, "saturated_fat_100g": 10}	\N	E	76	f	2026-07-02 08:12:58.244608+00	2026-07-02 08:12:58.246796+00	\N
5c896f21-076f-438c-8eae-91f5499eee0c	Munch Chocolate Bar	Nestle	Chocolate	7622210951865	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 52, "proteins_100g": 5, "saturated_fat_100g": 11}	\N	E	76	f	2026-07-02 08:12:58.313815+00	2026-07-02 08:12:58.315609+00	\N
f6228d5c-3896-4f06-95dc-5f1162692b88	5 Star Chocolate	Cadbury	Chocolate	7622210951866	\N	["E322", "E471"]	{"salt_100g": 0.25, "fiber_100g": 0.5, "sugars_100g": 55, "proteins_100g": 4, "saturated_fat_100g": 12}	\N	E	76	f	2026-07-02 08:12:58.384806+00	2026-07-02 08:12:58.386986+00	\N
72165aca-8c84-4afb-b54c-44c121e046ea	Bounty Chocolate	Mars	Chocolate	7622210951867	\N	["E322"]	{"salt_100g": 0.15, "fiber_100g": 2, "sugars_100g": 50, "proteins_100g": 4, "saturated_fat_100g": 15}	\N	E	78	f	2026-07-02 08:12:58.454283+00	2026-07-02 08:12:58.456736+00	\N
7ad38d07-c78f-4616-ae29-9e00d4c24424	India Gate Basmati Rice	India Gate	Grains	8901725000457	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0.1, "proteins_100g": 7, "saturated_fat_100g": 0.03}	\N	B	100	f	2026-07-02 08:12:58.525553+00	2026-07-02 08:12:58.527962+00	\N
71ab9d48-6394-4bb4-be67-4a0e48a29cf2	Aashirvaad Atta Whole Wheat	Aashirvaad	Grains	8901725000458	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 0.4}	\N	A	100	f	2026-07-02 08:12:58.599626+00	2026-07-02 08:12:58.601942+00	\N
b61e1c23-43be-4988-9323-e36ad28f6530	Fortune Sunflower Oil	Fortune	Cooking Oils	8901050501013	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 10}	\N	B	98	f	2026-07-02 08:12:58.672275+00	2026-07-02 08:12:58.674108+00	\N
8661597e-6c0e-463e-a239-d785f92079a3	Fortune Mustard Oil	Fortune	Cooking Oils	8901050501014	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 6}	\N	B	98	f	2026-07-02 08:12:58.740171+00	2026-07-02 08:12:58.742661+00	\N
22cda7e9-390c-4a38-bc4d-9c8679a3ce1e	Saffola Gold Oil	Saffola	Cooking Oils	8901050501015	\N	["E306"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 8}	\N	B	96	f	2026-07-02 08:12:58.808955+00	2026-07-02 08:12:58.811322+00	\N
a885ba16-d8b3-44c0-9bb8-445e15a37710	Patanjali Desi Ghee	Patanjali	Cooking Oils	8901050501016	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 60}	\N	E	85	f	2026-07-02 08:12:58.879269+00	2026-07-02 08:12:58.881675+00	\N
58573b7f-c9cd-4a51-a93c-a0c25a4ccba9	Amul Pure Ghee	Amul	Cooking Oils	8901050501017	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 60}	\N	E	85	f	2026-07-02 08:12:58.946928+00	2026-07-02 08:12:58.948704+00	\N
0520372b-d05a-4db5-a268-969456d20148	Tata Salt Iodized	Tata	Condiments	8901050501018	\N	[]	{"salt_100g": 95, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	85	f	2026-07-02 08:12:59.015471+00	2026-07-02 08:12:59.017808+00	\N
5745e1f4-3dcf-468a-9af8-5f64465c8288	Catch Black Pepper	Catch	Spices	8901050501019	\N	[]	{"salt_100g": 0.1, "fiber_100g": 25, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 1}	\N	A	100	f	2026-07-02 08:12:59.089817+00	2026-07-02 08:12:59.092394+00	\N
d7152f30-1060-4f9f-b040-dd31845dcf54	MDH Garam Masala	MDH	Spices	8901050501020	\N	[]	{"salt_100g": 0.5, "fiber_100g": 20, "sugars_100g": 5, "proteins_100g": 12, "saturated_fat_100g": 2}	\N	A	100	f	2026-07-02 08:12:59.159876+00	2026-07-02 08:12:59.162034+00	\N
07a869fd-8f64-4568-975d-c18bdab9368c	Everest Chaat Masala	Everest	Spices	8901050501021	\N	["E330"]	{"salt_100g": 15, "fiber_100g": 18, "sugars_100g": 3, "proteins_100g": 10, "saturated_fat_100g": 1}	\N	E	91	f	2026-07-02 08:12:59.228042+00	2026-07-02 08:12:59.229409+00	\N
ca2dfa92-b7a3-4699-a91d-282439f916c2	Maggi 2 Minute Noodles	Nestle	Noodles	8901058190001	\N	["E621", "E627", "E631", "E330"]	{"salt_100g": 1.9, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 2}	\N	D	65	f	2026-07-02 08:12:59.294227+00	2026-07-02 08:12:59.296067+00	\N
7c913e74-b472-45a7-b9b5-6633f3f1e7e5	Maggi Masala Noodles	Nestle	Noodles	8901058190002	\N	["E621", "E627", "E102"]	{"salt_100g": 2.0, "fiber_100g": 0.5, "sugars_100g": 1.5, "proteins_100g": 8, "saturated_fat_100g": 2.5}	\N	D	59	f	2026-07-02 08:12:59.365851+00	2026-07-02 08:12:59.368754+00	\N
b9387e82-66f1-4922-9caa-029b23843d8e	Bara (Lentil Patty)	Newari Kitchen	Newari Cuisine	8901234590001	\N	[]	{"salt_100g": 0.8, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 2}	2	B	100	f	2026-07-02 08:42:34.128165+00	2026-07-02 08:42:34.130284+00	\N
6d59b34c-6b80-4174-a13a-84ddc97782da	Knorr Chicken Soup	Unilever	Instant Foods	8901058191001	\N	["E621", "E627", "E631", "E150D"]	{"salt_100g": 3.5, "fiber_100g": 0.5, "sugars_100g": 4, "proteins_100g": 5, "saturated_fat_100g": 0.5}	\N	E	57	f	2026-07-02 08:12:59.439185+00	2026-07-02 08:12:59.44153+00	\N
4ace2e61-b0a8-449f-8d17-1027bfe9b7be	Knorr Tomato Soup	Unilever	Instant Foods	8901058191002	\N	["E621", "E330", "E150D"]	{"salt_100g": 2.5, "fiber_100g": 1, "sugars_100g": 6, "proteins_100g": 3, "saturated_fat_100g": 0.3}	\N	D	74	f	2026-07-02 08:12:59.513493+00	2026-07-02 08:12:59.515513+00	\N
7a233423-2bc3-4f55-b048-af6fa2ea7d07	Patanjali Poha	Patanjali	Instant Foods	8901058192001	\N	[]	{"salt_100g": 0.1, "fiber_100g": 1.5, "sugars_100g": 1, "proteins_100g": 7, "saturated_fat_100g": 0.5}	\N	A	100	f	2026-07-02 08:12:59.583928+00	2026-07-02 08:12:59.586652+00	\N
10db3f41-4bc5-4592-864f-a573db276629	Wai Wai Tea Masala	CG Foods	Beverages	8901058200001	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:12:59.655569+00	2026-07-02 08:12:59.657859+00	\N
e24664c4-afe6-412d-a4ad-5e8806b2e6f1	Goldtip Ilam Tea	Goldtip	Beverages	8901058200002	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:12:59.720428+00	2026-07-02 08:12:59.721758+00	\N
c262857f-0866-4946-8c41-ca91ec6925d9	Tata Tea Premium	Tata	Beverages	8901058200003	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:12:59.783323+00	2026-07-02 08:12:59.785179+00	\N
647b64ac-6065-48df-9c21-55b4b4e10615	Red Label Tea	Brooke Bond	Beverages	8901058200004	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:12:59.848157+00	2026-07-02 08:12:59.850183+00	\N
22a8eb82-6196-4475-992f-d48cf980ee5b	Nescafe Classic	Nestle	Beverages	8901058200005	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.3}	\N	A	100	f	2026-07-02 08:12:59.915058+00	2026-07-02 08:12:59.917007+00	\N
160d34c7-200a-49fd-adec-b4d944367124	Bru Instant Coffee	Hindustan Unilever	Beverages	8901058200006	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 10, "saturated_fat_100g": 0.2}	\N	A	100	f	2026-07-02 08:12:59.981877+00	2026-07-02 08:12:59.984065+00	\N
df2840a7-935d-45ed-b970-61176920740c	Himalayan Java Coffee	Himalayan Java	Beverages	8901058200007	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.5}	\N	A	100	f	2026-07-02 08:13:00.049311+00	2026-07-02 08:13:00.051533+00	\N
c4820084-a58b-4457-a7f3-966da8e54589	Horlicks Original	GSK	Health Drinks	8901058210001	\N	["E322", "E471"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 15, "saturated_fat_100g": 1.5}	\N	D	89	f	2026-07-02 08:13:00.119224+00	2026-07-02 08:13:00.12203+00	\N
828cfca5-521e-4a9f-922c-1a75f5a2dbc2	Complan Chocolate	Zydus Wellness	Health Drinks	8901058210002	\N	["E322", "E471", "E415"]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 35, "proteins_100g": 18, "saturated_fat_100g": 2}	\N	D	85	f	2026-07-02 08:13:00.192181+00	2026-07-02 08:13:00.194811+00	\N
07df5678-ddcd-4429-9328-12e1a9d7bd20	Boost Chocolate Malt	GSK	Health Drinks	8901058210003	\N	["E322", "E471"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 32, "proteins_100g": 12, "saturated_fat_100g": 1.5}	\N	D	89	f	2026-07-02 08:13:00.264804+00	2026-07-02 08:13:00.266754+00	\N
5b64b1d0-30e7-416a-ab20-8f9d4427cbf6	Bournvita Chocolate	Cadbury	Health Drinks	8901058210004	\N	["E322", "E471", "E330"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 40, "proteins_100g": 8, "saturated_fat_100g": 2}	\N	D	82	f	2026-07-02 08:13:00.332864+00	2026-07-02 08:13:00.335287+00	\N
66654607-1f40-4148-bf10-ccee08a4e498	Chyawanprash Dabur	Dabur	Health Foods	8901058210005	\N	["E202"]	{"salt_100g": 0.1, "fiber_100g": 2, "sugars_100g": 60, "proteins_100g": 2, "saturated_fat_100g": 0.5}	\N	D	88	f	2026-07-02 08:13:00.404072+00	2026-07-02 08:13:00.406443+00	\N
c5735fb5-5e76-4fc2-93b6-56636d574fbd	Kellogg's Corn Flakes	Kellogg's	Cereals	8901058220001	\N	["E330", "E300"]	{"salt_100g": 0.7, "fiber_100g": 3, "sugars_100g": 8, "proteins_100g": 7, "saturated_fat_100g": 0.1}	\N	C	94	f	2026-07-02 08:13:00.475125+00	2026-07-02 08:13:00.477581+00	\N
1dd36b4d-edd7-4e4d-9331-73469a92d1bf	Kellogg's Chocos	Kellogg's	Cereals	8901058220002	\N	["E330", "E322"]	{"salt_100g": 0.5, "fiber_100g": 3, "sugars_100g": 35, "proteins_100g": 6, "saturated_fat_100g": 1}	\N	D	86	f	2026-07-02 08:13:00.546073+00	2026-07-02 08:13:00.548728+00	\N
fb9d6b62-3d82-4622-a387-14e8a3b8b0c2	Quaker Oats	Quaker	Cereals	8901058220003	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 13, "saturated_fat_100g": 1}	\N	A	100	f	2026-07-02 08:13:00.619048+00	2026-07-02 08:13:00.621584+00	\N
6ba27efd-d717-4003-9834-e81f7fa248a4	Nestle Milo Cereal	Nestle	Cereals	8901058220004	\N	["E322", "E330"]	{"salt_100g": 0.4, "fiber_100g": 4, "sugars_100g": 25, "proteins_100g": 8, "saturated_fat_100g": 0.5}	\N	D	86	f	2026-07-02 08:13:00.690552+00	2026-07-02 08:13:00.693548+00	\N
2ff1c472-89cf-4ab3-ac21-cb575343840b	Patanjali Dalia	Patanjali	Cereals	8901058220005	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 1.5, "proteins_100g": 10, "saturated_fat_100g": 0.5}	\N	A	100	f	2026-07-02 08:13:00.764549+00	2026-07-02 08:13:00.767001+00	\N
c11ed91b-ee4c-4588-9295-f7674d973920	Maggi Tomato Ketchup	Nestle	Condiments	8901058230001	\N	["E211", "E330", "E160C"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 22, "proteins_100g": 1, "saturated_fat_100g": 0}	\N	D	74	f	2026-07-02 08:13:00.837059+00	2026-07-02 08:13:00.839261+00	\N
b1fac4c9-249c-49e4-9da1-0e4465d6dad1	Heinz Tomato Ketchup	Heinz	Condiments	8901058230002	\N	["E330", "E160C"]	{"salt_100g": 1.9, "fiber_100g": 0.4, "sugars_100g": 24, "proteins_100g": 1, "saturated_fat_100g": 0}	\N	D	81	f	2026-07-02 08:13:00.908315+00	2026-07-02 08:13:00.910112+00	\N
050a4d93-3a06-4761-b9b6-fe214a82804e	Kissan Mixed Fruit Jam	HUL	Condiments	8901058230003	\N	["E202", "E440", "E330"]	{"salt_100g": 0.05, "fiber_100g": 1, "sugars_100g": 48, "proteins_100g": 0.5, "saturated_fat_100g": 0}	\N	D	84	f	2026-07-02 08:13:00.975396+00	2026-07-02 08:13:00.977662+00	\N
3d4f5922-de6f-4af7-8371-ee499f62ab3c	Maggi Hot and Sweet Sauce	Nestle	Condiments	8901058230004	\N	["E211", "E330", "E160C", "E102"]	{"salt_100g": 2.5, "fiber_100g": 0.5, "sugars_100g": 30, "proteins_100g": 1, "saturated_fat_100g": 0}	\N	E	54	f	2026-07-02 08:13:01.043798+00	2026-07-02 08:13:01.046389+00	\N
2a02fe47-1d3a-417b-b6fd-ab4e066763ec	Ching's Red Chilli Sauce	Ching's	Condiments	8901058230005	\N	["E211", "E330"]	{"salt_100g": 3, "fiber_100g": 0.5, "sugars_100g": 15, "proteins_100g": 1, "saturated_fat_100g": 0}	\N	E	74	f	2026-07-02 08:13:01.114682+00	2026-07-02 08:13:01.116702+00	\N
559bd87b-452b-4c93-8497-9dde13c7a4ef	Modern White Bread	Modern	Bakery	8901058240001	\N	["E282", "E471", "E322", "E300"]	{"salt_100g": 0.9, "fiber_100g": 2.5, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 1}	\N	C	85	f	2026-07-02 08:13:01.182917+00	2026-07-02 08:13:01.185367+00	\N
1e2c62d9-0b97-4d61-8633-87e595712c25	Harvest Gold Whole Wheat Bread	Harvest Gold	Bakery	8901058240002	\N	["E282", "E471"]	{"salt_100g": 0.8, "fiber_100g": 5, "sugars_100g": 4, "proteins_100g": 9, "saturated_fat_100g": 0.5}	\N	A	94	f	2026-07-02 08:13:01.250244+00	2026-07-02 08:13:01.252361+00	\N
89b8e3d5-3942-406a-b503-596a8d550025	Pillsbury Maida	Pillsbury	Grains	8901058240003	\N	["E300"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 0.3}	\N	A	100	f	2026-07-02 08:13:01.31667+00	2026-07-02 08:13:01.318805+00	\N
ba9965cc-1891-44a3-ab55-083f44cffd6a	Gyan Atta Whole Wheat	Gyan	Grains	8901058240004	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 0.4}	\N	A	100	f	2026-07-02 08:13:01.38745+00	2026-07-02 08:13:01.389929+00	\N
ba036528-1e11-40fe-9dd7-f73a16267ed5	Hulas Refined Oil	Hulas	Cooking Oils	9771234560001	\N	["E306"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 9}	\N	B	96	f	2026-07-02 08:13:01.459491+00	2026-07-02 08:13:01.462038+00	\N
4bef7dae-3de4-4dc1-899b-fa499e263d92	Gyan Full Cream Milk Powder	Gyan	Dairy	9771234560002	\N	["E322"]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 38, "proteins_100g": 25, "saturated_fat_100g": 10}	\N	E	81	f	2026-07-02 08:13:01.52571+00	2026-07-02 08:13:01.52687+00	\N
cfb1b60f-eafe-4e3f-8e6b-fce0f411b236	CG Corn Flakes	CG Foods	Cereals	9771234560003	\N	["E300"]	{"salt_100g": 0.6, "fiber_100g": 3, "sugars_100g": 7, "proteins_100g": 7, "saturated_fat_100g": 0.1}	\N	C	96	f	2026-07-02 08:13:01.587312+00	2026-07-02 08:13:01.589499+00	\N
f6dbbbb1-dd90-45aa-bbc7-4383729fee98	Patanjali Amla Juice	Patanjali	Beverages	9771234560004	\N	["E300", "E202"]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 8, "proteins_100g": 0.2, "saturated_fat_100g": 0}	\N	C	96	f	2026-07-02 08:13:01.658045+00	2026-07-02 08:13:01.660382+00	\N
3559afca-4190-4b02-b069-dd47a8164c52	Dabur Honey	Dabur	Condiments	9771234560005	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 82, "proteins_100g": 0.3, "saturated_fat_100g": 0}	\N	E	85	f	2026-07-02 08:13:01.730464+00	2026-07-02 08:13:01.73302+00	\N
a5857b2e-f0fb-4808-ad9e-47a250033109	Chitwan Honey	Chitwan	Condiments	9771234560006	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 80, "proteins_100g": 0.3, "saturated_fat_100g": 0}	\N	E	85	f	2026-07-02 08:13:01.800243+00	2026-07-02 08:13:01.802042+00	\N
6fbfe6cf-89af-44d5-9f06-396873edd3b3	Sujal Paneer	Sujal	Dairy	9771234560007	\N	[]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 18, "saturated_fat_100g": 12}	\N	D	93	f	2026-07-02 08:13:01.869829+00	2026-07-02 08:13:01.872337+00	\N
d6337681-ba37-4f7c-8b2c-5edb3558c2f8	Sujal Ghee	Sujal	Cooking Oils	9771234560008	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 58}	\N	E	85	f	2026-07-02 08:13:01.939732+00	2026-07-02 08:13:01.941813+00	\N
d2cf56be-f41c-479e-89e8-bf1b4f393be8	CG Mustard Oil	CG Foods	Cooking Oils	9771234560009	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 5}	\N	B	98	f	2026-07-02 08:13:02.006663+00	2026-07-02 08:13:02.008402+00	\N
82ec6dca-c289-4fc8-a376-6942d27ed7c4	Pearl Refined Oil	Pearl	Cooking Oils	9771234560010	\N	["E306"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 9}	\N	B	96	f	2026-07-02 08:13:02.07192+00	2026-07-02 08:13:02.073109+00	\N
ae8046fb-18d2-4a6d-aec5-dc933fe149fc	RTC Noodles Chicken	RTC	Noodles	9771234560011	\N	["E621", "E501"]	{"salt_100g": 1.7, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 3}	\N	D	79	f	2026-07-02 08:13:02.134238+00	2026-07-02 08:13:02.13581+00	\N
09737bac-1db4-4042-b064-2e070c3f92df	RTC Noodles Veg	RTC	Noodles	9771234560012	\N	["E621"]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 1.5, "proteins_100g": 6.5, "saturated_fat_100g": 2.5}	\N	D	81	f	2026-07-02 08:13:02.199336+00	2026-07-02 08:13:02.20104+00	\N
c9d92473-a96d-4958-af57-125523365490	Gorkha Tea Premium	Gorkha Tea	Beverages	9771234560013	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:13:02.265123+00	2026-07-02 08:13:02.266651+00	\N
b9ec4642-efae-4baa-a16e-2dd36ab7650b	Himalayan Sparkling Water	Himalayan	Beverages	9771234560014	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	B	100	f	2026-07-02 08:13:02.329432+00	2026-07-02 08:13:02.330473+00	\N
6ad20bd4-d72a-49bb-a730-8c61f814461c	Coke Original Taste	Coca-Cola	Beverages	9771234560015	\N	["E150D", "E338"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 10.6, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	74	f	2026-07-02 08:13:02.391827+00	2026-07-02 08:13:02.393896+00	\N
b9347ad5-f3fa-405f-b716-e396523b3148	Thumbs Up Cola	Coca-Cola	Beverages	9771234560016	\N	["E150D", "E338"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 11, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	74	f	2026-07-02 08:13:02.463798+00	2026-07-02 08:13:02.466248+00	\N
e0cf5436-3537-4b24-a535-4cc60925e1b8	Limca Lemon Drink	Coca-Cola	Beverages	9771234560017	\N	["E330", "E102"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 9.5, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	73	f	2026-07-02 08:13:02.533776+00	2026-07-02 08:13:02.535616+00	\N
16110c8e-120a-4b96-be66-35f2615743df	Hajmola Candy	Dabur	Confectionery	9771234560018	\N	["E330", "E160C"]	{"salt_100g": 5, "fiber_100g": 1, "sugars_100g": 60, "proteins_100g": 1, "saturated_fat_100g": 0}	\N	E	76	f	2026-07-02 08:13:02.596715+00	2026-07-02 08:13:02.597768+00	\N
28f658ed-6b28-4199-a571-910423efbf57	Pulse Candy Kacchi Kairi	DS Group	Confectionery	9771234560019	\N	["E330", "E102", "E110"]	{"salt_100g": 3, "fiber_100g": 0, "sugars_100g": 65, "proteins_100g": 0, "saturated_fat_100g": 0}	\N	E	48	f	2026-07-02 08:13:02.658224+00	2026-07-02 08:13:02.659943+00	\N
88f106a2-3932-4b23-8157-16bf9fa0cc10	Eclairs Toffee	Cadbury	Confectionery	9771234560020	\N	["E322", "E471"]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 55, "proteins_100g": 2, "saturated_fat_100g": 8}	\N	E	76	f	2026-07-02 08:13:02.728997+00	2026-07-02 08:13:02.731571+00	\N
c253b8f2-5879-48ec-ae8e-3daedbb4d377	Mustang Masoor Dal Red Lentils	Mustang	Pulses	9771234570001	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 2, "proteins_100g": 25, "saturated_fat_100g": 0.2}	\N	A	100	f	2026-07-02 08:13:02.802099+00	2026-07-02 08:13:02.80477+00	\N
42151194-65d6-4474-9da1-4cc8d895fee8	Mustang Moong Dal	Mustang	Pulses	9771234570002	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 2, "proteins_100g": 24, "saturated_fat_100g": 0.3}	\N	A	100	f	2026-07-02 08:13:02.874571+00	2026-07-02 08:13:02.87703+00	\N
8b5010aa-3709-4cf4-ad5f-6703ae3d9e77	Masoor Whole Brown	Local	Pulses	8901234567514	\N	[]	{"salt_100g": 0.02, "fiber_100g": 8, "sugars_100g": 1, "proteins_100g": 25, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:44.911771+00	2026-07-02 08:26:44.919219+00	\N
3c2093e8-1380-4372-9f5c-b043e1c3f53e	Chana Dal Split Chickpea	Patanjali	Pulses	9771234570003	\N	[]	{"salt_100g": 0.01, "fiber_100g": 9, "sugars_100g": 3, "proteins_100g": 22, "saturated_fat_100g": 0.3}	\N	A	100	f	2026-07-02 08:13:02.938976+00	2026-07-02 08:13:02.940761+00	\N
e579a641-ae62-4e1f-aed7-a0588f4e198e	Toor Dal	Patanjali	Pulses	9771234570004	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 2.5, "proteins_100g": 22, "saturated_fat_100g": 0.3}	\N	A	100	f	2026-07-02 08:13:02.998602+00	2026-07-02 08:13:02.999649+00	\N
bbb5ecd1-a7ba-437d-8dd2-f9d750ae6cb6	Rajma Red Kidney Beans	Everest	Pulses	9771234570005	\N	[]	{"salt_100g": 0.01, "fiber_100g": 15, "sugars_100g": 2, "proteins_100g": 24, "saturated_fat_100g": 0.2}	\N	A	100	f	2026-07-02 08:13:03.060631+00	2026-07-02 08:13:03.062893+00	\N
b6ba4b00-8c7c-43af-9426-0c1c774b356f	McCain French Fries	McCain	Frozen Foods	9771234580001	\N	["E621", "E450", "E330"]	{"salt_100g": 0.5, "fiber_100g": 3, "sugars_100g": 0.5, "proteins_100g": 3, "saturated_fat_100g": 2}	\N	C	82	f	2026-07-02 08:13:03.128949+00	2026-07-02 08:13:03.131161+00	\N
0cd2a7f1-88ba-4b8d-a6a8-4056d9c37c2f	Dolly Momo Pork	Dolly	Frozen Foods	9771234580002	\N	["E621"]	{"salt_100g": 1.2, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 4}	\N	D	87	f	2026-07-02 08:13:03.200918+00	2026-07-02 08:13:03.203227+00	\N
dcd81afd-996d-4250-85c2-fa5be43a3ece	Dolly Momo Chicken	Dolly	Frozen Foods	9771234580003	\N	["E621"]	{"salt_100g": 1.1, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 3}	\N	C	92	f	2026-07-02 08:13:03.272076+00	2026-07-02 08:13:03.274678+00	\N
48021e7c-0eed-4d3e-b85c-ea4dba525465	Dolly Momo Veg	Dolly	Frozen Foods	9771234580004	\N	["E621"]	{"salt_100g": 1.0, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 1.5}	\N	C	91	f	2026-07-02 08:13:03.341221+00	2026-07-02 08:13:03.343591+00	\N
b13f26f1-b5bb-491c-8af4-a83ca94a7c3c	Ching's Secret Schezwan Noodles	Ching's	Noodles	8901058177002	\N	["E621", "E501"]	{"salt_100g": 1.2, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	84	f	2026-07-02 08:24:40.035167+00	2026-07-02 08:24:40.039103+00	\N
f7eea792-7008-4cf7-964d-3937ed7cd634	Maggi Masala Noodles	Nestlé	Noodles	8901058177003	\N	["E621", "E627", "E631"]	{"salt_100g": 1.9, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 7.5, "saturated_fat_100g": 3.5}	4	D	57	f	2026-07-02 08:24:40.164363+00	2026-07-02 08:24:40.167533+00	\N
59a2f4f3-b096-466e-af62-2b73006c59ad	Maggi Chicken Noodles	Nestlé	Noodles	8901058177004	\N	["E621", "E627"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 1.5, "proteins_100g": 8, "saturated_fat_100g": 3}	4	D	64	f	2026-07-02 08:24:40.290651+00	2026-07-02 08:24:40.298299+00	\N
196fe87a-b9cf-4cde-918e-e57e2262d433	Yippee Masala Noodles	ITC	Noodles	8901058178001	\N	["E621", "E501"]	{"salt_100g": 1.5, "fiber_100g": 0.8, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 3}	4	D	69	f	2026-07-02 08:24:40.419607+00	2026-07-02 08:24:40.42176+00	\N
e8ea367a-6f80-41aa-bc43-6ba73665d462	Yippee Magic Masala	ITC	Noodles	8901058178002	\N	["E621", "E627"]	{"salt_100g": 1.7, "fiber_100g": 0.8, "sugars_100g": 2.5, "proteins_100g": 7.5, "saturated_fat_100g": 3}	4	D	64	f	2026-07-02 08:24:40.54151+00	2026-07-02 08:24:40.549328+00	\N
a5604b96-7bd9-4f6f-a2c1-030a8a086729	Mirinda Orange	PepsiCo	Beverages	5449000212181	\N	["E110"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 10.5, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	63	f	2026-07-02 08:24:41.467095+00	2026-07-02 08:24:41.475074+00	\N
bb5ce0a0-b859-4b19-9b66-0eb8b719159e	Dew Fresh	PepsiCo	Beverages	5449000212182	\N	["E102"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 10.0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	63	f	2026-07-02 08:24:41.592802+00	2026-07-02 08:24:41.600832+00	\N
2bee57b4-f635-4c96-8ced-47b8f45102a2	Real Mango Juice	Dabur	Beverages	5449000212183	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 12.0, "proteins_100g": 0.5, "saturated_fat_100g": 0}	3	C	93	f	2026-07-02 08:24:41.720566+00	2026-07-02 08:24:41.728276+00	\N
9a479e93-ba48-4106-b56e-1b5392d51b50	Real Orange Juice	Dabur	Beverages	5449000212184	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.3, "sugars_100g": 11.0, "proteins_100g": 0.3, "saturated_fat_100g": 0}	3	C	93	f	2026-07-02 08:24:41.848895+00	2026-07-02 08:24:41.85613+00	\N
b2a43f29-577d-403f-a550-1c3f21d196b6	Real Guava Juice	Dabur	Beverages	5449000212185	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.8, "sugars_100g": 10.5, "proteins_100g": 0.4, "saturated_fat_100g": 0}	3	A	98	f	2026-07-02 08:24:41.975371+00	2026-07-02 08:24:41.982942+00	\N
d4e4dba8-a298-4a96-a1e8-2ec21a3c33bb	Tropicana Apple Juice	PepsiCo	Beverages	5449000212186	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 10.0, "proteins_100g": 0.2, "saturated_fat_100g": 0}	3	C	93	f	2026-07-02 08:24:42.105142+00	2026-07-02 08:24:42.112596+00	\N
b3614db4-31ce-4b1f-b5ff-a0fe8e4e2be9	Red Bull Energy Drink	Red Bull	Beverages	5449000212187	\N	["E330", "E150D"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 11.0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	69	f	2026-07-02 08:24:42.232908+00	2026-07-02 08:24:42.240102+00	\N
ca45e81d-d8b9-45b6-9c21-ededce0796b4	Monster Energy Drink	Monster	Beverages	5449000212188	\N	["E330", "E150D"]	{"salt_100g": 0.08, "fiber_100g": 0, "sugars_100g": 11.5, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	69	f	2026-07-02 08:24:42.35977+00	2026-07-02 08:24:42.367415+00	\N
cddb21b3-739e-4e2c-be70-032d9109eaf8	Sting Energy Drink	PepsiCo	Beverages	5449000212189	\N	["E102", "E330"]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 10.0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	61	f	2026-07-02 08:24:42.487462+00	2026-07-02 08:24:42.494804+00	\N
f52db7ec-d828-4fb4-b538-11053edfb506	Tokla CTC Tea	Tokla	Beverages	5449000212190	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:24:42.614619+00	2026-07-02 08:24:42.622162+00	\N
9f77c88a-bb42-4027-9ac0-6194a6364525	Nepal Tea Ilam Special	Nepal Tea	Beverages	5449000212191	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:24:42.74155+00	2026-07-02 08:24:42.74886+00	\N
a00468b3-7a91-4060-bd22-55f14e578e22	Nescafe Classic Coffee	Nestlé	Beverages	5449000212192	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	2	B	100	f	2026-07-02 08:24:42.866611+00	2026-07-02 08:24:42.873921+00	\N
ad0a8d86-fc44-4f08-84d9-bbaa750a5f5a	Bru Instant Coffee	HUL	Beverages	5449000212193	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	2	B	100	f	2026-07-02 08:24:42.993864+00	2026-07-02 08:24:43.001572+00	\N
c7e215ce-4cf5-4f4e-8903-6acb4dad0e9f	Alpenliebe Lollipop Mango	Perfetti	Candies	8901234570002	\N	["E102", "E110", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:33:54.266293+00	2026-07-02 08:33:54.268411+00	\N
e7cbc2af-cc23-497a-a28e-e7481c5980b4	Horlicks Classic Malt	GSK	Beverages	5449000212194	\N	[]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 40, "proteins_100g": 8, "saturated_fat_100g": 0.5}	3	D	85	f	2026-07-02 08:24:43.122466+00	2026-07-02 08:24:43.13005+00	\N
586930c0-1e4a-41d7-bb9f-18c3a6e7d5da	Bournvita Health Drink	Cadbury	Beverages	5449000212195	\N	[]	{"salt_100g": 0.2, "fiber_100g": 3, "sugars_100g": 35, "proteins_100g": 7, "saturated_fat_100g": 1}	3	D	85	f	2026-07-02 08:24:43.2502+00	2026-07-02 08:24:43.258162+00	\N
f7da59c7-69c0-43e3-b7a0-861c7f2ba9b6	Viva Horlicks	GSK	Beverages	5449000212196	\N	[]	{"salt_100g": 0.25, "fiber_100g": 4, "sugars_100g": 30, "proteins_100g": 9, "saturated_fat_100g": 0.3}	3	D	85	f	2026-07-02 08:24:43.378798+00	2026-07-02 08:24:43.386096+00	\N
f23ab0a1-cc0b-40d7-9471-13c5424208a5	Amul Kool Milk Drink	Amul	Beverages	5449000212197	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 8, "proteins_100g": 3.5, "saturated_fat_100g": 2}	2	C	98	f	2026-07-02 08:24:43.504029+00	2026-07-02 08:24:43.511697+00	\N
f313998b-9d92-4510-9d50-de8b4cf699c6	Gluco Biscuits	Nebico	Biscuits	8901063090035	\N	[]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 20, "proteins_100g": 6, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:24:43.630259+00	2026-07-02 08:24:43.636956+00	\N
7d028ee0-1fdf-458c-8769-358863ae9681	Marie Biscuits	Nebico	Biscuits	8901063090011	\N	[]	{"salt_100g": 0.4, "fiber_100g": 1.5, "sugars_100g": 15, "proteins_100g": 7, "saturated_fat_100g": 4}	3	C	91	f	2026-07-02 08:24:43.758617+00	2026-07-02 08:24:43.766849+00	\N
38db3169-fdeb-4d8a-a3f8-a2548ddcf9ff	Nebico Crackers	Nebico	Biscuits	8901063090028	\N	[]	{"salt_100g": 1.0, "fiber_100g": 1, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 3}	3	C	91	f	2026-07-02 08:24:43.886398+00	2026-07-02 08:24:43.888784+00	\N
69ecd505-0e6c-41e2-9f3e-2bcb782c57a0	Nebico Cream Biscuits	Nebico	Biscuits	8901063090042	\N	["E102"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 6}	3	E	60	f	2026-07-02 08:24:44.005883+00	2026-07-02 08:24:44.013544+00	\N
12f6949b-3c00-4f80-8450-e53fd073295d	Parle-G Original	Parle	Biscuits	8901063090059	\N	[]	{"salt_100g": 0.6, "fiber_100g": 1.5, "sugars_100g": 18, "proteins_100g": 6.5, "saturated_fat_100g": 4}	3	D	84	f	2026-07-02 08:24:44.131936+00	2026-07-02 08:24:44.139761+00	\N
9da4f0f1-31ed-452f-8235-330c48f5944a	Parle Hide & Seek	Parle	Biscuits	8901063090066	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 22, "proteins_100g": 5, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:24:44.259569+00	2026-07-02 08:24:44.267184+00	\N
52b994c9-b354-40b7-86bb-cd6ede222803	Parle Monaco	Parle	Biscuits	8901063090073	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 8, "proteins_100g": 7, "saturated_fat_100g": 3}	3	D	86	f	2026-07-02 08:24:44.388488+00	2026-07-02 08:24:44.396427+00	\N
42c25916-0d40-4c08-976b-7851c7e3c4fd	Britannia Good Day	Britannia	Biscuits	8901063090080	\N	[]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 22, "proteins_100g": 5.5, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:24:44.516865+00	2026-07-02 08:24:44.524561+00	\N
2c7dddc5-db58-4a4d-82d2-da7a6b593ac7	Britannia Tiger	Britannia	Biscuits	8901063090097	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1.5, "sugars_100g": 18, "proteins_100g": 6, "saturated_fat_100g": 4}	3	D	86	f	2026-07-02 08:24:44.643676+00	2026-07-02 08:24:44.651408+00	\N
e117826a-dbb6-4416-84aa-b975a1419c4e	Britannia Milk Bikis	Britannia	Biscuits	8901063090103	\N	[]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 20, "proteins_100g": 6, "saturated_fat_100g": 4}	3	D	83	f	2026-07-02 08:24:44.768858+00	2026-07-02 08:24:44.77609+00	\N
eba144f9-5f91-4d0e-b2d9-a22db3823584	Oreo Chocolate Cookies	Cadbury	Biscuits	8901063090110	\N	["E322"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 35, "proteins_100g": 4, "saturated_fat_100g": 6}	4	E	68	f	2026-07-02 08:24:44.896107+00	2026-07-02 08:24:44.90405+00	\N
7bc06a6f-b43f-4e52-a520-a240c3b53fb6	Coconut Crunch	Nebico	Biscuits	8901063090127	\N	[]	{"salt_100g": 0.4, "fiber_100g": 2, "sugars_100g": 20, "proteins_100g": 5, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:24:45.021805+00	2026-07-02 08:24:45.028875+00	\N
392a3bcb-eb07-421c-ad8d-7a400b7af7a6	Digestive Biscuits	Nebico	Biscuits	8901063090134	\N	[]	{"salt_100g": 0.5, "fiber_100g": 4, "sugars_100g": 15, "proteins_100g": 7, "saturated_fat_100g": 3}	3	C	91	f	2026-07-02 08:24:45.147361+00	2026-07-02 08:24:45.155183+00	\N
c485fb77-74d8-4144-8bbf-0b61bdc906c9	Bourbon Cream Biscuits	Britannia	Biscuits	8901063090141	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 28, "proteins_100g": 4.5, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:24:45.274513+00	2026-07-02 08:24:45.282414+00	\N
4139c97a-113a-4a3e-82a8-65aaabe3dd43	Nice Biscuits	Britannia	Biscuits	8901063090158	\N	[]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 18, "proteins_100g": 6, "saturated_fat_100g": 4}	3	D	86	f	2026-07-02 08:24:45.401686+00	2026-07-02 08:24:45.409605+00	\N
add3fa61-a92d-4b74-9221-5e63d4add208	DDC Fresh Full Cream Milk	DDC	Dairy	8901234567010	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.7, "proteins_100g": 3.2, "saturated_fat_100g": 2.2}	1	C	100	f	2026-07-02 08:24:45.52693+00	2026-07-02 08:24:45.534991+00	\N
2c10ae46-940b-43e6-88dd-ca899e797833	DDC Skimmed Milk	DDC	Dairy	8901234567011	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.9, "proteins_100g": 3.4, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:24:45.653631+00	2026-07-02 08:24:45.661438+00	\N
2a25f3ba-3392-4407-b49d-82b0e277e14e	DDC Yoghurt Plain	DDC	Dairy	8901234567012	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4.5, "proteins_100g": 4, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:24:45.780957+00	2026-07-02 08:24:45.788927+00	\N
ef256bb1-3c12-493f-80fb-6a1828deadc3	DDC Mango Lassi	DDC	Dairy	8901234567013	\N	[]	{"salt_100g": 0.15, "fiber_100g": 0, "sugars_100g": 14, "proteins_100g": 3, "saturated_fat_100g": 1.5}	2	C	98	f	2026-07-02 08:24:45.908114+00	2026-07-02 08:24:45.916033+00	\N
668b2a20-e6e9-4fb6-b2ba-30b94b1e44ae	DDC Paneer	DDC	Dairy	8901234567014	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 15}	1	D	98	f	2026-07-02 08:24:46.036756+00	2026-07-02 08:24:46.044776+00	\N
582289da-cf0f-45e0-b5e3-5ac8826ad194	DDC Butter	DDC	Dairy	8901234567015	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0.5, "saturated_fat_100g": 50}	2	E	85	f	2026-07-02 08:24:46.164204+00	2026-07-02 08:24:46.171695+00	\N
3bdb075f-5ec7-4403-9dbf-a78365172caa	DDC Ghee	DDC	Dairy	8901234567016	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 62}	2	E	85	f	2026-07-02 08:24:46.291302+00	2026-07-02 08:24:46.298946+00	\N
056e2761-fa28-4498-80ed-29f62e1c2be6	Eastern Chicken Masala	Eastern	Spices	8901234567600	\N	[]	{"salt_100g": 8, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:45.039661+00	2026-07-02 08:26:45.04734+00	\N
7fae53ae-333c-4546-b345-52a198492014	DDC Cheese Slices	DDC	Dairy	8901234567017	\N	["E331"]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 18}	3	D	81	f	2026-07-02 08:24:46.417276+00	2026-07-02 08:24:46.424588+00	\N
b2df4ed4-e3aa-4309-9958-99920d890d18	Amul Butter	Amul	Dairy	8901234567018	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0.5, "saturated_fat_100g": 48}	2	E	85	f	2026-07-02 08:24:46.546223+00	2026-07-02 08:24:46.554116+00	\N
c89a9470-9981-4f5b-9c77-d6310829652d	Amul Cheese	Amul	Dairy	8901234567019	\N	["E331"]	{"salt_100g": 1.4, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 21, "saturated_fat_100g": 18}	3	D	84	f	2026-07-02 08:24:46.671672+00	2026-07-02 08:24:46.6783+00	\N
c4f593fd-fce6-4c8d-9ed6-e81ab6a09c62	Yakult Probiotic Drink	Yakult	Dairy	8901234567020	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 15, "proteins_100g": 1.5, "saturated_fat_100g": 0}	2	C	98	f	2026-07-02 08:24:46.789387+00	2026-07-02 08:24:46.796741+00	\N
8d74fae0-a49d-4c08-968b-8767ba0dd71d	Lays Classic Salted	PepsiCo	Snacks	8901234567021	\N	["E621", "E627"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 6, "saturated_fat_100g": 5}	4	D	64	f	2026-07-02 08:24:46.915887+00	2026-07-02 08:24:46.923538+00	\N
d7185766-4cfb-450e-80e6-b723d9dd0f0c	Lays Masala Magic	PepsiCo	Snacks	8901234567022	\N	["E621", "E627", "E631"]	{"salt_100g": 1.3, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 5}	4	D	57	f	2026-07-02 08:24:47.045165+00	2026-07-02 08:24:47.05267+00	\N
0bd87317-09d5-4e03-a7ed-89041e3177c7	Kurkure Masala Munch	PepsiCo	Snacks	8901234567023	\N	["E621", "E102", "E110"]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 5, "saturated_fat_100g": 8}	4	D	38	f	2026-07-02 08:24:47.173801+00	2026-07-02 08:24:47.182761+00	\N
711b9359-dade-4c63-a9cb-31990dad39cd	Kurkure Chilli Chatka	PepsiCo	Snacks	8901234567024	\N	["E621", "E129"]	{"salt_100g": 1.4, "fiber_100g": 1, "sugars_100g": 2.5, "proteins_100g": 5, "saturated_fat_100g": 7}	4	D	56	f	2026-07-02 08:24:47.307676+00	2026-07-02 08:24:47.315435+00	\N
a8b8d023-6c15-465e-84d1-c6ea565748c1	Uncle Chips Plain Salted	PepsiCo	Snacks	8901234567025	\N	["E621"]	{"salt_100g": 1.0, "fiber_100g": 2, "sugars_100g": 0.5, "proteins_100g": 5, "saturated_fat_100g": 4}	4	C	79	f	2026-07-02 08:24:47.437022+00	2026-07-02 08:24:47.446163+00	\N
d8f8495b-1ef2-4770-871a-66f24dc43fe0	Pringles Original	Kellogg's	Snacks	8901234567026	\N	["E621", "E471"]	{"salt_100g": 1.0, "fiber_100g": 1.5, "sugars_100g": 1, "proteins_100g": 5, "saturated_fat_100g": 4}	4	C	77	f	2026-07-02 08:24:47.565367+00	2026-07-02 08:24:47.573018+00	\N
30079409-cb2c-4581-aeea-521c38fb47b2	Cheetos Cheese	PepsiCo	Snacks	8901234567027	\N	["E621", "E102"]	{"salt_100g": 1.2, "fiber_100g": 0.5, "sugars_100g": 3, "proteins_100g": 4, "saturated_fat_100g": 6}	4	D	56	f	2026-07-02 08:24:47.694153+00	2026-07-02 08:24:47.701782+00	\N
e104d706-a920-4569-889b-f10d7130a61e	Doritos Nacho Cheese	PepsiCo	Snacks	8901234567028	\N	["E621", "E110"]	{"salt_100g": 1.1, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 5}	4	D	56	f	2026-07-02 08:24:47.822662+00	2026-07-02 08:24:47.825942+00	\N
5408272f-e279-4978-adb7-116c469e11d5	Bingo Tedhe Medhe	ITC	Snacks	8901234567029	\N	["E621", "E627"]	{"salt_100g": 1.3, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 6}	4	D	64	f	2026-07-02 08:24:47.94164+00	2026-07-02 08:24:47.948538+00	\N
5945762c-b46e-43bb-8f0b-d7d7fd25836b	Bingo Mad Angles	ITC	Snacks	8901234567030	\N	["E621"]	{"salt_100g": 1.0, "fiber_100g": 0.5, "sugars_100g": 1.5, "proteins_100g": 4, "saturated_fat_100g": 5}	4	D	71	f	2026-07-02 08:24:48.064413+00	2026-07-02 08:24:48.070899+00	\N
bf4b4ae0-0444-44bb-8741-9649eaa002a7	Dairy Milk Chocolate	Cadbury	Chocolates	8901234567031	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 55, "proteins_100g": 7, "saturated_fat_100g": 15}	4	E	66	f	2026-07-02 08:24:48.179582+00	2026-07-02 08:24:48.185654+00	\N
56b33d5e-6588-49a6-b847-17967b7f88c5	Dairy Milk Fruit & Nut	Cadbury	Chocolates	8901234567032	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 2, "sugars_100g": 50, "proteins_100g": 8, "saturated_fat_100g": 14}	4	E	68	f	2026-07-02 08:24:48.302833+00	2026-07-02 08:24:48.309425+00	\N
f2cc5bc0-e450-487f-83c9-947bcf17a22c	KitKat 4 Finger	Nestlé	Chocolates	8901234567033	\N	["E322", "E476"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 48, "proteins_100g": 6, "saturated_fat_100g": 12}	4	E	66	f	2026-07-02 08:24:48.421257+00	2026-07-02 08:24:48.427632+00	\N
8f8862fd-0cea-4081-b351-0d061dd576c9	Snickers	Mars	Chocolates	8901234567034	\N	["E322"]	{"salt_100g": 0.4, "fiber_100g": 2, "sugars_100g": 47, "proteins_100g": 9, "saturated_fat_100g": 8}	4	E	68	f	2026-07-02 08:24:48.541013+00	2026-07-02 08:24:48.547919+00	\N
c45bafbe-e167-475a-92d5-930c7ad9b9ba	Mars Bar	Mars	Chocolates	8901234567035	\N	["E322"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 4, "saturated_fat_100g": 9}	4	E	68	f	2026-07-02 08:24:48.664822+00	2026-07-02 08:24:48.672008+00	\N
967f3c8e-54b5-4d19-86dc-7803f714b7d1	Bounty Coconut	Mars	Chocolates	8901234567036	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 3, "sugars_100g": 45, "proteins_100g": 3, "saturated_fat_100g": 20}	4	E	68	f	2026-07-02 08:24:48.792889+00	2026-07-02 08:24:48.794946+00	\N
0812499b-42e1-422e-b24b-e4ccb72fca2d	Munch Wafer	Nestlé	Chocolates	8901234567037	\N	["E322"]	{"salt_100g": 0.15, "fiber_100g": 1, "sugars_100g": 45, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	68	f	2026-07-02 08:24:48.914804+00	2026-07-02 08:24:48.922277+00	\N
8c6779c2-b82f-404b-9387-1475eac99313	Bar One	Nestlé	Chocolates	8901234567038	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	66	f	2026-07-02 08:24:49.037131+00	2026-07-02 08:24:49.044003+00	\N
a4d1f3a9-c003-4f1d-8a58-503ddc54a04f	Hajmola Candy	Dabur	Sweets	8901234567039	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 60, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	75	f	2026-07-02 08:24:49.161046+00	2026-07-02 08:24:49.169519+00	\N
27b3b5ea-fca4-4a70-b110-b882755fbd6e	Halls Mentho Lyptus	Mondelez	Sweets	8901234567040	\N	["E129"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 70, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	65	f	2026-07-02 08:24:49.293597+00	2026-07-02 08:24:49.300636+00	\N
b3f74984-6a05-47eb-a56d-407e2882080f	Eastern Chicken Masala	Eastern	Spices	8901234567041	\N	[]	{"salt_100g": 8, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:24:49.415319+00	2026-07-02 08:24:49.417441+00	\N
30c18bd0-e790-4031-98d4-75aa4168bdd5	Eastern Garam Masala	Eastern	Spices	8901234567042	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 1, "proteins_100g": 2, "saturated_fat_100g": 0.5}	2	A	100	f	2026-07-02 08:24:49.532359+00	2026-07-02 08:24:49.540671+00	\N
802e0d65-a723-4ef4-984b-826b970a1a81	Eastern Garam Masala	Eastern	Spices	8901234567601	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 1, "proteins_100g": 2, "saturated_fat_100g": 0.5}	2	A	100	f	2026-07-02 08:26:45.166936+00	2026-07-02 08:26:45.17494+00	\N
e9eb3314-26af-48d1-a028-2a1735045ef9	Eastern Turmeric Powder	Eastern	Spices	8901234567043	\N	[]	{"salt_100g": 0.1, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:24:49.660948+00	2026-07-02 08:24:49.668973+00	\N
746b117e-48e9-4aab-9209-b11e8eb1256a	Eastern Chilli Powder	Eastern	Spices	8901234567044	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:24:49.792662+00	2026-07-02 08:24:49.801628+00	\N
0936c294-8c45-4e24-9693-a949b4eaa512	Eastern Turmeric Powder	Eastern	Spices	8901234567602	\N	[]	{"salt_100g": 0.1, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:26:45.295365+00	2026-07-02 08:26:45.30297+00	\N
b2fd9e37-f9b8-4a36-86c4-8559520e5ac1	Eastern Cumin Powder	Eastern	Spices	8901234567045	\N	[]	{"salt_100g": 0.1, "fiber_100g": 6, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:24:49.922807+00	2026-07-02 08:24:49.930958+00	\N
05866fd3-2dfb-4931-bbf0-fc2b40af4015	Eastern Coriander Powder	Eastern	Spices	8901234567046	\N	[]	{"salt_100g": 0.1, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:24:50.053431+00	2026-07-02 08:24:50.061382+00	\N
de5a8c76-4ec0-4685-9fbe-82ecf2924094	Eastern Chilli Powder	Eastern	Spices	8901234567603	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:26:45.424051+00	2026-07-02 08:26:45.432607+00	\N
f4fdc510-8ec4-4191-8865-338f8ba4b119	MDH Kitchen King Masala	MDH	Spices	8901234567047	\N	[]	{"salt_100g": 10, "fiber_100g": 5, "sugars_100g": 3, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:24:50.184658+00	2026-07-02 08:24:50.192648+00	\N
3f888c23-74b1-4ffb-a997-9679b7bbfcc9	MDH Biryani Masala	MDH	Spices	8901234567048	\N	[]	{"salt_100g": 8, "fiber_100g": 6, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	85	f	2026-07-02 08:24:50.310692+00	2026-07-02 08:24:50.31874+00	\N
cd544dbe-6a2e-4fce-a43d-d7f14de0d09f	Eastern Cumin Powder	Eastern	Spices	8901234567604	\N	[]	{"salt_100g": 0.1, "fiber_100g": 6, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:26:45.553841+00	2026-07-02 08:26:45.561295+00	\N
348f8ac1-0d2c-406d-a830-33374f9f3eab	Aaha Chicken Masala	Aaha	Spices	8901234567049	\N	[]	{"salt_100g": 7, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:24:50.43913+00	2026-07-02 08:24:50.446711+00	\N
3fc9f710-197e-4fc0-a1c8-4403e30ec786	Aaha Curry Masala	Aaha	Spices	8901234567050	\N	[]	{"salt_100g": 6, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:24:50.566906+00	2026-07-02 08:24:50.574544+00	\N
2565505f-12f4-4875-9e2e-fe33cfb28a5d	Eastern Coriander Powder	Eastern	Spices	8901234567605	\N	[]	{"salt_100g": 0.1, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:26:46.081953+00	2026-07-02 08:26:46.089231+00	\N
c5c25f89-d527-421d-80c6-eaa1ef0a5bab	Nepali Nanglo Cumin	Nanglo	Spices	8901234567051	\N	[]	{"salt_100g": 0.1, "fiber_100g": 6, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:24:50.693524+00	2026-07-02 08:24:50.701423+00	\N
da8a20ab-9721-442e-a48c-a0f17f40e1a8	Himalayan Pink Salt	Local	Spices	8901234567052	\N	[]	{"salt_100g": 98, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	E	90	f	2026-07-02 08:24:50.821759+00	2026-07-02 08:24:50.829603+00	\N
d9386aef-4503-456a-b146-b877a8c8cf54	MDH Kitchen King Masala	MDH	Spices	8901234567606	\N	[]	{"salt_100g": 10, "fiber_100g": 5, "sugars_100g": 3, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:46.209969+00	2026-07-02 08:26:46.217938+00	\N
72d36f15-9eac-4b79-9ffc-6249029b3643	MDH Biryani Masala	MDH	Spices	8901234567607	\N	[]	{"salt_100g": 8, "fiber_100g": 6, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	85	f	2026-07-02 08:26:46.336996+00	2026-07-02 08:26:46.344522+00	\N
8b669121-65ef-4e8b-a220-08b93b82fd8f	Aaha Chicken Masala	Aaha	Spices	8901234567608	\N	[]	{"salt_100g": 7, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:46.464223+00	2026-07-02 08:26:46.471869+00	\N
deb23715-eefc-42a4-9f29-5f3871b6d695	Aaha Curry Masala	Aaha	Spices	8901234567609	\N	[]	{"salt_100g": 6, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:46.589223+00	2026-07-02 08:26:46.597291+00	\N
79759e20-75d4-4e8f-ba52-5d690c9e2ac3	Himalayan Pink Salt	Local	Spices	8901234567610	\N	[]	{"salt_100g": 98, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	E	90	f	2026-07-02 08:26:46.717206+00	2026-07-02 08:26:46.72505+00	\N
99af8c98-9395-4e2a-9c37-49e36b8b4741	Everest Shahi Paneer	Everest	Spices	8901234567611	\N	[]	{"salt_100g": 8, "fiber_100g": 5, "sugars_100g": 3, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:46.845692+00	2026-07-02 08:26:46.853366+00	\N
0f1c6776-e829-4f2f-997e-891934f5e110	Everest Chhole Masala	Everest	Spices	8901234567612	\N	[]	{"salt_100g": 7, "fiber_100g": 6, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	85	f	2026-07-02 08:26:46.972685+00	2026-07-02 08:26:46.980602+00	\N
4c508b3a-5a3a-4dee-9e16-2bad164573ea	Aaha Meat Masala	Aaha	Spices	8901234567613	\N	[]	{"salt_100g": 7, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0.5}	3	E	80	f	2026-07-02 08:26:47.101111+00	2026-07-02 08:26:47.108769+00	\N
31187764-6558-41ec-9f1f-adfef990b8b8	Tata Salt Iodized	Tata	Spices	8901234567614	\N	["E536"]	{"salt_100g": 99, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	2	E	85	f	2026-07-02 08:26:47.22797+00	2026-07-02 08:26:47.235861+00	\N
f4322105-e7e5-4739-a98d-a82b62168f88	Kissan Tomato Ketchup	Kissan	Sauces	8901234567700	\N	["E260"]	{"salt_100g": 2, "fiber_100g": 0.5, "sugars_100g": 28, "proteins_100g": 1, "saturated_fat_100g": 0}	3	D	78	f	2026-07-02 08:26:47.755466+00	2026-07-02 08:26:47.762958+00	\N
94a0f146-225f-4639-842a-b5805bc1891d	Mango Bite Candy	Parle	Candies	8901234570003	\N	["E102", "E110", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:33:54.38054+00	2026-07-02 08:33:54.386903+00	\N
d0de6fde-1fdc-4d90-a15f-3df4fe394d66	Maggi Tomato Ketchup	Nestlé	Sauces	8901234567701	\N	["E260"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 30, "proteins_100g": 1, "saturated_fat_100g": 0}	3	D	78	f	2026-07-02 08:26:47.874013+00	2026-07-02 08:26:47.875109+00	\N
59f06ce3-e72f-490c-bd40-bfe271deb17b	Ching's Soy Sauce	Ching's	Sauces	8901234567702	\N	["E150D"]	{"salt_100g": 15, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 3, "saturated_fat_100g": 0}	3	E	73	f	2026-07-02 08:26:47.986565+00	2026-07-02 08:26:47.993214+00	\N
ea9b0bc5-2a78-46d6-87f7-92776808cf64	Ching's Red Chilli Sauce	Ching's	Sauces	8901234567703	\N	["E260"]	{"salt_100g": 5, "fiber_100g": 0.5, "sugars_100g": 15, "proteins_100g": 1, "saturated_fat_100g": 0}	3	E	76	f	2026-07-02 08:26:48.108001+00	2026-07-02 08:26:48.115306+00	\N
f247cfdc-b506-4653-b9f4-5f925f968353	Maggi Hot & Sweet	Nestlé	Sauces	8901234567704	\N	["E260", "E415"]	{"salt_100g": 3, "fiber_100g": 0.5, "sugars_100g": 35, "proteins_100g": 1, "saturated_fat_100g": 0}	3	E	71	f	2026-07-02 08:26:48.235921+00	2026-07-02 08:26:48.242107+00	\N
efaadeab-ac8d-4400-a2f2-630bcfb21bc8	Mango Pickle	Eastern	Pickles	8901234567705	\N	["E260", "E211"]	{"salt_100g": 12, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 1, "saturated_fat_100g": 1}	2	E	76	f	2026-07-02 08:26:48.364232+00	2026-07-02 08:26:48.371437+00	\N
ac4f855a-b384-47df-893f-faebf91821fe	Lime Pickle	Eastern	Pickles	8901234567706	\N	["E260", "E211"]	{"salt_100g": 12, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 1, "saturated_fat_100g": 1}	2	E	76	f	2026-07-02 08:26:48.491117+00	2026-07-02 08:26:48.498309+00	\N
f3e8b0ed-4a8d-4724-ae51-298a9330fa58	Mixed Pickle	Eastern	Pickles	8901234567707	\N	["E260", "E211"]	{"salt_100g": 12, "fiber_100g": 2, "sugars_100g": 4, "proteins_100g": 1, "saturated_fat_100g": 1}	2	E	76	f	2026-07-02 08:26:48.613408+00	2026-07-02 08:26:48.621257+00	\N
4258a87b-ee6a-407f-bcd5-8b41ba152e27	Gundruk Achar	Nepali Local	Pickles	8901234567708	\N	[]	{"salt_100g": 8, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 2, "saturated_fat_100g": 0.5}	1	E	90	f	2026-07-02 08:26:48.739437+00	2026-07-02 08:26:48.746087+00	\N
6efbc925-a97d-4de8-bc85-6c9b5d565723	Timbur Achar	Nepali Local	Pickles	8901234567709	\N	[]	{"salt_100g": 8, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 2, "saturated_fat_100g": 0.5}	1	E	90	f	2026-07-02 08:26:48.859698+00	2026-07-02 08:26:48.866539+00	\N
5108669d-ea17-4c63-96cd-2c4b69a1e436	Mother's Recipe Mango	Mother's Recipe	Pickles	8901234567710	\N	["E260", "E211"]	{"salt_100g": 12, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 1, "saturated_fat_100g": 1}	2	E	76	f	2026-07-02 08:26:49.385508+00	2026-07-02 08:26:49.393635+00	\N
ad86f8c5-e9c1-479c-af7c-313c482ad139	Rasna Instant Drink	Rasna	Beverages	5449000212198	\N	["E102", "E110"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	45	f	2026-07-02 08:26:25.465615+00	2026-07-02 08:26:25.46786+00	\N
57ec8683-14a9-4ad0-add2-78802c3359d9	Druk Peanut Butter	Druk	Sauces	8901234567711	\N	[]	{"salt_100g": 0.5, "fiber_100g": 5, "sugars_100g": 10, "proteins_100g": 25, "saturated_fat_100g": 8}	2	C	96	f	2026-07-02 08:26:49.509321+00	2026-07-02 08:26:49.516849+00	\N
b4244120-1d5a-4534-9c60-da5f36ef7ee9	Tang Orange Drink	Mondelez	Beverages	5449000212199	\N	["E330", "E110"]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 90, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	58	f	2026-07-02 08:26:25.587016+00	2026-07-02 08:26:25.594511+00	\N
91d01be9-13ae-4d43-9bcd-ed4f43464818	Frooti Mango Drink	Parle Agro	Beverages	5449000212200	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0.2, "sugars_100g": 14, "proteins_100g": 0.2, "saturated_fat_100g": 0}	3	E	83	f	2026-07-02 08:26:25.713646+00	2026-07-02 08:26:25.716978+00	\N
7591f1e6-a6b2-41bf-81c7-ccd10568f56b	Kissan Jam Mixed Fruit	Kissan	Sauces	8901234567712	\N	["E440"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 60, "proteins_100g": 0.5, "saturated_fat_100g": 0}	3	D	83	f	2026-07-02 08:26:49.633453+00	2026-07-02 08:26:49.640888+00	\N
dba9838f-cd5d-4716-999f-bb7917e38ae1	Appy Fizz	Parle Agro	Beverages	5449000212201	\N	["E330"]	{"salt_100g": 0.02, "fiber_100g": 0, "sugars_100g": 12, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	81	f	2026-07-02 08:26:25.832899+00	2026-07-02 08:26:25.840297+00	\N
00ad2a3a-ca13-4e5d-80a8-8b0e45a2a4d5	Slice Mango Drink	PepsiCo	Beverages	5449000212202	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0.3, "sugars_100g": 14, "proteins_100g": 0.2, "saturated_fat_100g": 0}	3	E	83	f	2026-07-02 08:26:25.955566+00	2026-07-02 08:26:25.962835+00	\N
fd5c5aaf-d712-4248-b1c7-b677ae7119d8	Funfoods Mayonnaise	Dr. Oetker	Sauces	8901234567713	\N	["E260", "E415"]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 1, "saturated_fat_100g": 10}	3	E	71	f	2026-07-02 08:26:49.75657+00	2026-07-02 08:26:49.764007+00	\N
9d64a6da-e1cf-4911-b21a-8bf889352200	Maaza Mango Drink	Coca-Cola	Beverages	5449000212203	\N	[]	{"salt_100g": 0.02, "fiber_100g": 0.3, "sugars_100g": 13, "proteins_100g": 0.2, "saturated_fat_100g": 0}	3	E	83	f	2026-07-02 08:26:26.080982+00	2026-07-02 08:26:26.08784+00	\N
02cceb52-9afc-4fdc-a8b9-0059b3485acb	Ching's Green Chilli Sauce	Ching's	Sauces	8901234567714	\N	["E260"]	{"salt_100g": 6, "fiber_100g": 0.5, "sugars_100g": 12, "proteins_100g": 1, "saturated_fat_100g": 0}	3	E	76	f	2026-07-02 08:26:49.880688+00	2026-07-02 08:26:49.887746+00	\N
e12197e9-3bab-4173-b6cb-d519e6fa422a	Dark Fantasy Cookies	ITC	Biscuits	8901063090165	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 4, "saturated_fat_100g": 7}	4	E	68	f	2026-07-02 08:26:28.708978+00	2026-07-02 08:26:28.716913+00	\N
a57658b7-d359-4ea7-9802-7c8a9e0358f4	Sunfeast Glucose	ITC	Biscuits	8901063090172	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1.5, "sugars_100g": 20, "proteins_100g": 6, "saturated_fat_100g": 4}	3	D	83	f	2026-07-02 08:26:28.836222+00	2026-07-02 08:26:28.843683+00	\N
59fdcf87-fc00-456a-81f9-07d95d063a73	Anmol Yummy Cream	Anmol	Biscuits	8901063090189	\N	["E102"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 5}	3	D	65	f	2026-07-02 08:26:28.96001+00	2026-07-02 08:26:28.967258+00	\N
6b366c62-8dfd-4e10-b33e-b0bed9c108af	Priyagold Butter Bite	Priyagold	Biscuits	8901063090196	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 18, "proteins_100g": 6, "saturated_fat_100g": 4}	3	D	86	f	2026-07-02 08:26:29.086934+00	2026-07-02 08:26:29.090989+00	\N
09bff28b-83b6-4619-b406-5d80bee5f2dd	Unibic Cookies	Unibic	Biscuits	8901063090202	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1.5, "sugars_100g": 22, "proteins_100g": 5, "saturated_fat_100g": 5}	3	D	80	f	2026-07-02 08:26:29.211978+00	2026-07-02 08:26:29.216338+00	\N
db75d719-13ae-4d3d-8101-11580a3e7f8b	Chatamari (Newari Pizza)	Newari Kitchen	Newari Cuisine	8901234590002	\N	[]	{"salt_100g": 1, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 2}	2	C	99	f	2026-07-02 08:42:34.242895+00	2026-07-02 08:42:34.249331+00	\N
4d8ed6aa-8321-4617-a82e-30fe0566c1f4	Dairy Milk Chocolate	Cadbury	Chocolates	8901234567100	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 55, "proteins_100g": 7, "saturated_fat_100g": 15}	4	E	66	f	2026-07-02 08:26:34.372116+00	2026-07-02 08:26:34.379178+00	\N
44a25c78-4655-4adc-9ccf-3f62cf877dde	Dairy Milk Fruit & Nut	Cadbury	Chocolates	8901234567101	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 2, "sugars_100g": 50, "proteins_100g": 8, "saturated_fat_100g": 14}	4	E	68	f	2026-07-02 08:26:34.49987+00	2026-07-02 08:26:34.507917+00	\N
646e8597-d4ad-4feb-ba67-3f831a5afe58	KitKat 4 Finger	Nestlé	Chocolates	8901234567102	\N	["E322", "E476"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 48, "proteins_100g": 6, "saturated_fat_100g": 12}	4	E	66	f	2026-07-02 08:26:34.630188+00	2026-07-02 08:26:34.637855+00	\N
b1370922-5d96-4009-82a2-23e9bcac3a41	Snickers	Mars	Chocolates	8901234567103	\N	["E322"]	{"salt_100g": 0.4, "fiber_100g": 2, "sugars_100g": 47, "proteins_100g": 9, "saturated_fat_100g": 8}	4	E	68	f	2026-07-02 08:26:34.760939+00	2026-07-02 08:26:34.768309+00	\N
c83192a5-8fa5-42c1-9980-56767fd0fb62	Mars Bar	Mars	Chocolates	8901234567104	\N	["E322"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 4, "saturated_fat_100g": 9}	4	E	68	f	2026-07-02 08:26:34.882961+00	2026-07-02 08:26:34.890509+00	\N
6d273774-54fe-4ab9-af6a-0c31a6ab729c	Bounty Coconut	Mars	Chocolates	8901234567105	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 3, "sugars_100g": 45, "proteins_100g": 3, "saturated_fat_100g": 20}	4	E	68	f	2026-07-02 08:26:35.013432+00	2026-07-02 08:26:35.021465+00	\N
eb707302-2192-45d5-988c-511a1e2e15ae	Munch Wafer	Nestlé	Chocolates	8901234567106	\N	["E322"]	{"salt_100g": 0.15, "fiber_100g": 1, "sugars_100g": 45, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	68	f	2026-07-02 08:26:35.141799+00	2026-07-02 08:26:35.149771+00	\N
1fd9f1a0-1909-4694-a8ad-0f0154c47da9	Bar One	Nestlé	Chocolates	8901234567107	\N	["E322", "E476"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	66	f	2026-07-02 08:26:35.26931+00	2026-07-02 08:26:35.277261+00	\N
4d637007-f473-4944-9ba4-b7a58ae3257f	Hajmola Candy	Dabur	Sweets	8901234567108	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 60, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	75	f	2026-07-02 08:26:35.399008+00	2026-07-02 08:26:35.406528+00	\N
8368af0b-02ae-45ee-aae6-f43fc1571b94	Halls Mentho Lyptus	Mondelez	Sweets	8901234567109	\N	["E129"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 70, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	65	f	2026-07-02 08:26:35.525401+00	2026-07-02 08:26:35.533454+00	\N
c6c226d8-1b9f-4bac-9e4e-e168198eb098	Amul Dark Chocolate	Amul	Chocolates	8901234567110	\N	["E322"]	{"salt_100g": 0.1, "fiber_100g": 5, "sugars_100g": 25, "proteins_100g": 8, "saturated_fat_100g": 18}	3	E	73	f	2026-07-02 08:26:36.054653+00	2026-07-02 08:26:36.062114+00	\N
27cb9dbb-4faa-4379-ab56-238b82913a48	5 Star	Cadbury	Chocolates	8901234567111	\N	["E322"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 50, "proteins_100g": 5, "saturated_fat_100g": 12}	4	E	68	f	2026-07-02 08:26:36.183862+00	2026-07-02 08:26:36.191818+00	\N
ee1eb2ab-9a0f-4827-aed5-e6ab6e093f90	Gems Chocolate	Cadbury	Chocolates	8901234567112	\N	["E102", "E110", "E129"]	{"salt_100g": 0.1, "fiber_100g": 0.5, "sugars_100g": 60, "proteins_100g": 3, "saturated_fat_100g": 10}	4	E	25	f	2026-07-02 08:26:36.312732+00	2026-07-02 08:26:36.320415+00	\N
9ed72570-2162-4632-ae7d-a6db561795c7	Lacto King Candy	Lacto	Sweets	8901234567113	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 75, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	80	f	2026-07-02 08:26:36.442507+00	2026-07-02 08:26:36.450459+00	\N
88d132b6-1e22-4683-abe9-1add3aab947f	Popping Candy	Local	Sweets	8901234567114	\N	["E129", "E102"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	45	f	2026-07-02 08:26:36.569934+00	2026-07-02 08:26:36.577771+00	\N
6a66fc5c-91ea-4905-b046-4fe89b50ed88	Mustard Oil	Nepali Local	Cooking Oil	8901234567200	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 12}	2	B	98	f	2026-07-02 08:26:36.698804+00	2026-07-02 08:26:36.706743+00	\N
f9b48688-40f1-46a2-9a56-9551604f24f0	Fortune Sunflower Oil	Fortune	Cooking Oil	8901234567201	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 10}	3	B	93	f	2026-07-02 08:26:36.826865+00	2026-07-02 08:26:36.834457+00	\N
0d890a77-763e-4f9d-9d1f-1bfdf7fbb453	Fortune Soybean Oil	Fortune	Cooking Oil	8901234567202	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 14}	3	B	93	f	2026-07-02 08:26:36.954766+00	2026-07-02 08:26:36.962742+00	\N
49cbb290-fb1e-4cee-a6a4-32bf75aaae5b	Fortune Rice Bran Oil	Fortune	Cooking Oil	8901234567203	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 20}	3	D	85	f	2026-07-02 08:26:37.086808+00	2026-07-02 08:26:37.094807+00	\N
0b35a9b8-eb95-48ed-9f9c-c3667146a833	Saffola Gold Oil	Saffola	Cooking Oil	8901234567204	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 10}	3	B	93	f	2026-07-02 08:26:37.21494+00	2026-07-02 08:26:37.22253+00	\N
0243e29e-f090-4eb6-a0fe-58168efbaa45	Olive Oil Extra Virgin	Figaro	Cooking Oil	8901234567205	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 14}	2	B	98	f	2026-07-02 08:26:37.742945+00	2026-07-02 08:26:37.751526+00	\N
e9629a1d-97d0-4e11-877f-8e18d83637b0	Dhara Mustard Oil	Dhara	Cooking Oil	8901234567206	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 12}	2	B	98	f	2026-07-02 08:26:37.873193+00	2026-07-02 08:26:37.880956+00	\N
1eec470b-d37d-4a0b-bb34-fc0e1c269793	Gemini Sunflower Oil	Gemini	Cooking Oil	8901234567207	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 10}	3	B	93	f	2026-07-02 08:26:38.003204+00	2026-07-02 08:26:38.01129+00	\N
1850ebff-05de-42b1-9f03-c5aff422c16f	Patanjali Mustard Oil	Patanjali	Cooking Oil	8901234567208	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 12}	2	B	98	f	2026-07-02 08:26:38.130988+00	2026-07-02 08:26:38.13881+00	\N
3795cd03-6c99-46e6-9805-36bfcc2984a6	Patanjali Coconut Oil	Patanjali	Cooking Oil	8901234567209	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 87}	2	E	85	f	2026-07-02 08:26:38.259995+00	2026-07-02 08:26:38.268204+00	\N
e775614a-b598-4b24-bdb9-a3d2e8a799a5	Kellogg's Corn Flakes	Kellogg's	Breakfast	8901234567800	\N	[]	{"salt_100g": 1.8, "fiber_100g": 3, "sugars_100g": 8, "proteins_100g": 7, "saturated_fat_100g": 0.5}	3	D	85	f	2026-07-02 08:26:50.004186+00	2026-07-02 08:26:50.011138+00	\N
9e9c06cd-6fab-4382-8533-dd98475ebd26	Basmati Rice	India Gate	Rice	8901234567300	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 0, "proteins_100g": 7, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:26:38.391872+00	2026-07-02 08:26:38.399941+00	\N
1c6caac4-b27f-4a24-8192-40447f6b336c	Mansuli Rice	Nepal Local	Rice	8901234567301	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:38.516804+00	2026-07-02 08:26:38.524426+00	\N
eb75b8ba-d332-49a7-8341-ff528637de1b	Sona Mansuli Rice	Nepal Local	Rice	8901234567302	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.2, "sugars_100g": 0, "proteins_100g": 7, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:38.642524+00	2026-07-02 08:26:38.649966+00	\N
cd715c2f-f67b-404b-b116-c835ba45b88f	Jeera Masino Rice	Nepal Local	Rice	8901234567303	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.8, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:26:38.770792+00	2026-07-02 08:26:38.779552+00	\N
99eb296f-0d0e-4513-a21c-40a182cc221c	Brown Rice	Nepal Local	Rice	8901234567304	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.5, "sugars_100g": 0, "proteins_100g": 7.5, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:38.895736+00	2026-07-02 08:26:38.90267+00	\N
0c8d0fb8-537a-4644-889d-478d8ad2959c	Chiura (Beaten Rice)	Nepal Local	Rice	8901234567305	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:39.417734+00	2026-07-02 08:26:39.425153+00	\N
452a5573-136d-4c90-a539-32d7651f33df	Poha Thick	Nepal Local	Rice	8901234567306	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:26:39.543733+00	2026-07-02 08:26:39.551398+00	\N
8b1d43b4-3400-4629-9ff1-8eab78d4ed16	Basmati Rice Premium	Daawat	Rice	8901234567307	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 0, "proteins_100g": 7, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:26:39.672851+00	2026-07-02 08:26:39.680209+00	\N
f0f2564e-b084-49a0-81dd-5eb4597407d3	Parboiled Rice	Nepal Local	Rice	8901234567308	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:39.799211+00	2026-07-02 08:26:39.807317+00	\N
c3b5e78f-606d-4246-b399-a9852b005d2e	Fortune Biryani Basmati	Fortune	Rice	8901234567309	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 0, "proteins_100g": 7, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:26:39.925654+00	2026-07-02 08:26:39.93319+00	\N
ef797229-def6-4c81-98d1-e88e4335f3e9	Matta Rice	Nepal Local	Rice	8901234567310	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3, "sugars_100g": 0, "proteins_100g": 7, "saturated_fat_100g": 0.3}	1	B	100	f	2026-07-02 08:26:40.051422+00	2026-07-02 08:26:40.058489+00	\N
a03634cc-adbf-480c-972e-e1075ec5b6af	Sushi Rice	Imported	Rice	8901234567311	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 0, "proteins_100g": 5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:40.177581+00	2026-07-02 08:26:40.185454+00	\N
ff44d2cb-8d5c-4377-9c11-3134e443e718	Bansi Rice	Nepal Local	Rice	8901234567312	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:40.305562+00	2026-07-02 08:26:40.313268+00	\N
b14af4ab-8970-4ef5-ae6e-1eb55fa72072	Basmati Rice 1121	India Gate	Rice	8901234567313	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 0, "proteins_100g": 7.2, "saturated_fat_100g": 0.2}	1	B	100	f	2026-07-02 08:26:40.431804+00	2026-07-02 08:26:40.439439+00	\N
889f8e69-584e-488f-be0f-8f3f644d34d4	Taichin Rice	Nepal Local	Rice	8901234567314	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:40.560187+00	2026-07-02 08:26:40.567671+00	\N
a7fef9cc-c724-4cf3-aef5-9d6c63a837fa	Wheat Flour (Atta)	Patanjali	Flour	8901234567400	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:41.08769+00	2026-07-02 08:26:41.095739+00	\N
86092185-e4a6-4a44-b1ca-f3733a751277	Maida Refined Flour	Local	Flour	8901234567401	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3, "sugars_100g": 0.5, "proteins_100g": 10, "saturated_fat_100g": 0.2}	3	A	100	f	2026-07-02 08:26:41.215668+00	2026-07-02 08:26:41.22359+00	\N
1cae1872-29f8-4561-9a0a-42c3cf3d5413	Besan Gram Flour	Local	Flour	8901234567402	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:41.341436+00	2026-07-02 08:26:41.348667+00	\N
52e908fb-d241-4676-b38a-f22605fd67e8	Corn Flour	Brown & Polson	Flour	8901234567403	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 0.5, "saturated_fat_100g": 0.1}	2	A	100	f	2026-07-02 08:26:41.464836+00	2026-07-02 08:26:41.472479+00	\N
b7591621-f3c1-46da-9044-d8051c96e3b5	Atta Whole Wheat	Aashirvaad	Flour	8901234567404	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:41.592688+00	2026-07-02 08:26:41.600154+00	\N
4a5d519f-a364-497f-a45e-2f51d8eeb064	Sooji Semolina	Local	Flour	8901234567405	\N	[]	{"salt_100g": 0.01, "fiber_100g": 4, "sugars_100g": 0.5, "proteins_100g": 11, "saturated_fat_100g": 0.2}	2	A	100	f	2026-07-02 08:26:41.717623+00	2026-07-02 08:26:41.724646+00	\N
d0f96eeb-59bc-4ccd-86c2-7ed6f9f6b06d	Baking Powder	Weikfield	Flour	8901234567406	\N	["E500"]	{"salt_100g": 30, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	3	E	78	f	2026-07-02 08:26:41.838771+00	2026-07-02 08:26:41.84646+00	\N
5c6c9e5e-3b18-4ff9-b015-e2c3314f0329	Rice Flour	Local	Flour	8901234567407	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.5, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:26:41.967704+00	2026-07-02 08:26:41.975555+00	\N
c73695ae-54ab-4304-b00d-69fc63bc9ad8	Bajra Flour	Local	Flour	8901234567408	\N	[]	{"salt_100g": 0.01, "fiber_100g": 12, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:42.093685+00	2026-07-02 08:26:42.097492+00	\N
742a662c-a2ec-411b-8ced-cb09a69cbc0d	Makki Ka Atta	Local	Flour	8901234567409	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 8, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:42.214139+00	2026-07-02 08:26:42.221238+00	\N
c23c7a81-e61d-4563-8f44-b4bef30a02e0	Masoor Dal Red Lentil	Local	Pulses	8901234567500	\N	[]	{"salt_100g": 0.02, "fiber_100g": 8, "sugars_100g": 1, "proteins_100g": 25, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:42.738592+00	2026-07-02 08:26:42.746592+00	\N
3f34f8c6-da59-42e0-9c7e-715a9f839f62	Orange Bite Candy	Parle	Candies	8901234570004	\N	["E102", "E110", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:33:54.496981+00	2026-07-02 08:33:54.503237+00	\N
499751c6-8155-49cd-9169-0dc2492dfb18	Moong Dal Yellow	Local	Pulses	8901234567501	\N	[]	{"salt_100g": 0.02, "fiber_100g": 16, "sugars_100g": 1, "proteins_100g": 24, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:42.866913+00	2026-07-02 08:26:42.874261+00	\N
5f9ee9ce-43db-4f7d-818b-ddfe50671ccb	Kellogg's Chocos	Kellogg's	Breakfast	8901234567801	\N	[]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 30, "proteins_100g": 6, "saturated_fat_100g": 2}	4	D	76	f	2026-07-02 08:26:50.12493+00	2026-07-02 08:26:50.132785+00	\N
5802bf6c-ad74-42e3-8b09-4d86f20a2720	Chana Dal Bengal Gram	Local	Pulses	8901234567502	\N	[]	{"salt_100g": 0.02, "fiber_100g": 12, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:42.990786+00	2026-07-02 08:26:42.998187+00	\N
72003a49-ade2-4ab3-a206-0cea8e460f77	Rajma Red Kidney Beans	Local	Pulses	8901234567503	\N	[]	{"salt_100g": 0.02, "fiber_100g": 15, "sugars_100g": 1, "proteins_100g": 24, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:43.118242+00	2026-07-02 08:26:43.126142+00	\N
97fcc670-df87-484d-993e-868120e80180	Quaker Oats	PepsiCo	Breakfast	8901234567802	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 13, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:26:50.253341+00	2026-07-02 08:26:50.261345+00	\N
4a306f60-43d8-498e-a48b-179f4a2e5899	Kabuli Chana Chickpeas	Local	Pulses	8901234567504	\N	[]	{"salt_100g": 0.02, "fiber_100g": 12, "sugars_100g": 1, "proteins_100g": 19, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:43.246352+00	2026-07-02 08:26:43.253881+00	\N
512c9905-ff6e-406f-9e31-d0611f9c5577	Urad Dal Black Gram	Local	Pulses	8901234567505	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:43.374108+00	2026-07-02 08:26:43.381431+00	\N
628c5c2c-df1e-4a53-8e94-87d8a65ab364	Saffola Masala Oats	Saffola	Breakfast	8901234567803	\N	[]	{"salt_100g": 1.5, "fiber_100g": 8, "sugars_100g": 5, "proteins_100g": 12, "saturated_fat_100g": 1}	3	C	98	f	2026-07-02 08:26:50.381829+00	2026-07-02 08:26:50.389942+00	\N
a20a076d-30de-43b6-b3a8-1f4d81f72556	Toor Dal Pigeon Pea	Local	Pulses	8901234567506	\N	[]	{"salt_100g": 0.02, "fiber_100g": 15, "sugars_100g": 1, "proteins_100g": 22, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:43.501329+00	2026-07-02 08:26:43.50905+00	\N
15e3eaa0-89cf-411e-9ea6-dd8017db96a6	Soybean White	Local	Pulses	8901234567507	\N	[]	{"salt_100g": 0.02, "fiber_100g": 9, "sugars_100g": 0, "proteins_100g": 36, "saturated_fat_100g": 2}	1	A	100	f	2026-07-02 08:26:43.626835+00	2026-07-02 08:26:43.634051+00	\N
338814ef-da83-4365-97d1-b3de8326ac0a	Muesli Fruit & Nut	Kellogg's	Breakfast	8901234567804	\N	[]	{"salt_100g": 0.3, "fiber_100g": 6, "sugars_100g": 15, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	98	f	2026-07-02 08:26:50.509509+00	2026-07-02 08:26:50.518005+00	\N
c32c80be-baef-42ce-9091-5145ce64149f	Mung Bean Whole	Local	Pulses	8901234567508	\N	[]	{"salt_100g": 0.02, "fiber_100g": 16, "sugars_100g": 1, "proteins_100g": 24, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:43.752515+00	2026-07-02 08:26:43.760134+00	\N
e55bc40f-70da-42e9-8a13-e1ce3c1faff9	Black Eyed Beans	Local	Pulses	8901234567509	\N	[]	{"salt_100g": 0.02, "fiber_100g": 11, "sugars_100g": 1, "proteins_100g": 23, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:43.879856+00	2026-07-02 08:26:43.887829+00	\N
814719aa-2847-4c4e-a47c-46cf37d19dab	Nepali Chiura Beaten Rice	Local	Breakfast	8901234567805	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:26:51.037256+00	2026-07-02 08:26:51.044551+00	\N
fb44848b-f1c1-46a7-80b1-9eaf5b0bcce4	Green Peas Dried	Local	Pulses	8901234567510	\N	[]	{"salt_100g": 0.02, "fiber_100g": 25, "sugars_100g": 3, "proteins_100g": 23, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:44.408377+00	2026-07-02 08:26:44.415823+00	\N
810504be-2824-4a6e-9af3-06a9599f263c	Sattu Powder	Local	Pulses	8901234567511	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:44.537975+00	2026-07-02 08:26:44.545872+00	\N
9f044419-e611-4f9c-bfa4-4ae250b7f156	Corn Flakes Real	Saffola	Breakfast	8901234567806	\N	[]	{"salt_100g": 1.2, "fiber_100g": 4, "sugars_100g": 6, "proteins_100g": 8, "saturated_fat_100g": 0.5}	3	C	93	f	2026-07-02 08:26:51.165345+00	2026-07-02 08:26:51.173217+00	\N
534fc264-9173-4d81-95fd-c9e198b73574	Granola Bar	Yoga Bar	Breakfast	8901234567807	\N	[]	{"salt_100g": 0.2, "fiber_100g": 5, "sugars_100g": 18, "proteins_100g": 8, "saturated_fat_100g": 3}	3	C	91	f	2026-07-02 08:26:51.291008+00	2026-07-02 08:26:51.298029+00	\N
141e6ba3-52a5-4e5f-b9ce-d4676325cee6	Sattu Atta Mix	Local	Breakfast	8901234567808	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:51.411803+00	2026-07-02 08:26:51.419628+00	\N
bd66688a-4920-4532-8397-b8077f6a6183	Wheat Porridge	Local	Breakfast	8901234567809	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:51.536191+00	2026-07-02 08:26:51.543737+00	\N
d1194f51-87c4-44aa-b53a-5a94c60bdc32	Frozen Chicken Momo	Nepali Local	Frozen	8901234567900	\N	["E621"]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 3}	3	C	84	f	2026-07-02 08:26:51.664789+00	2026-07-02 08:26:51.67272+00	\N
e26c245a-5694-4da8-bb93-213c7c04dddf	Frozen Veg Momo	Nepali Local	Frozen	8901234567901	\N	[]	{"salt_100g": 1.0, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 1}	3	C	93	f	2026-07-02 08:26:51.791621+00	2026-07-02 08:26:51.793427+00	\N
48513933-15dd-440f-89e5-d749c442d28c	Frozen Paratha	Local	Frozen	8901234567902	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 6, "saturated_fat_100g": 5}	3	C	88	f	2026-07-02 08:26:51.903547+00	2026-07-02 08:26:51.909669+00	\N
8ace2e74-bae6-410b-a20e-b35b3e458534	Frozen French Fries	McCain	Frozen	8901234567903	\N	[]	{"salt_100g": 0.3, "fiber_100g": 3, "sugars_100g": 0.5, "proteins_100g": 3, "saturated_fat_100g": 1}	3	B	98	f	2026-07-02 08:26:52.02349+00	2026-07-02 08:26:52.030863+00	\N
b9f593cb-387f-4d21-b88e-c5808facc044	Instant Chowmein	CG Foods	Frozen	8901234567904	\N	["E621", "E501"]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 3}	4	D	69	f	2026-07-02 08:26:52.146523+00	2026-07-02 08:26:52.153968+00	\N
50e69978-0bdb-4952-bd29-605308cb1272	Frozen Green Peas	Safal	Frozen	8901234567905	\N	[]	{"salt_100g": 0.02, "fiber_100g": 5, "sugars_100g": 3, "proteins_100g": 5, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:52.667636+00	2026-07-02 08:26:52.673724+00	\N
6e197c34-e14e-4548-8489-c6abed04305e	Frozen Mixed Vegetables	Safal	Frozen	8901234567906	\N	[]	{"salt_100g": 0.05, "fiber_100g": 4, "sugars_100g": 3, "proteins_100g": 3, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:52.784047+00	2026-07-02 08:26:52.790792+00	\N
76a602a9-2b7e-4a9b-b5d2-b8b61b8fddec	Frozen Sausages Chicken	Venky's	Frozen	8901234567907	\N	["E250", "E621"]	{"salt_100g": 2, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 5}	4	D	0	t	2026-07-02 08:26:52.905891+00	2026-07-02 08:26:52.913831+00	\N
147c19bf-0b94-476e-8662-198ab1cd7404	Ready-to-Eat Paneer Makhani	ITC Kitchens	Frozen	8901234567908	\N	["E331"]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 8}	3	D	81	f	2026-07-02 08:26:53.03544+00	2026-07-02 08:26:53.043048+00	\N
5d685b46-2589-4e7f-9540-c7287f221d98	Frozen Aloo Tikki	Local	Frozen	8901234567909	\N	[]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 4}	3	C	91	f	2026-07-02 08:26:53.162282+00	2026-07-02 08:26:53.169155+00	\N
5955c06d-0e1b-4593-9397-552f2383ab79	Sliced White Bread	Local Bakery	Bakery	8901234568000	\N	["E282"]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	86	f	2026-07-02 08:26:53.284291+00	2026-07-02 08:26:53.291725+00	\N
5c8bba2d-53e0-41a5-8eb9-0ecb2602812b	Brown Bread	Modern Bread	Bakery	8901234568001	\N	["E282"]	{"salt_100g": 0.8, "fiber_100g": 5, "sugars_100g": 4, "proteins_100g": 9, "saturated_fat_100g": 0.5}	3	A	91	f	2026-07-02 08:26:53.410443+00	2026-07-02 08:26:53.417933+00	\N
1eebfb56-03b4-4561-a43f-49e0e6d66433	Pav Buns	Local Bakery	Bakery	8901234568002	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 7, "saturated_fat_100g": 1}	3	C	93	f	2026-07-02 08:26:53.539776+00	2026-07-02 08:26:53.547584+00	\N
1f18ca02-2d63-4157-b119-40c7ed81b599	Croissant Butter	Local Bakery	Bakery	8901234568003	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 7, "saturated_fat_100g": 12}	3	E	78	f	2026-07-02 08:26:53.668564+00	2026-07-02 08:26:53.676029+00	\N
0cb844c2-7980-4724-ba3c-cadd042143b6	Cake Sponge	Local Bakery	Bakery	8901234568004	\N	["E500"]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 5, "saturated_fat_100g": 5}	3	E	73	f	2026-07-02 08:26:53.793766+00	2026-07-02 08:26:53.801594+00	\N
d68a8103-5816-446c-85e2-955925fbf04f	Donut Chocolate	Local Bakery	Bakery	8901234568005	\N	["E322"]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 8}	4	E	68	f	2026-07-02 08:26:54.317117+00	2026-07-02 08:26:54.323775+00	\N
75ce5221-5442-48f2-bf38-18914ba68704	Puff Pastry	Local Bakery	Bakery	8901234568006	\N	[]	{"salt_100g": 1, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 10}	3	D	83	f	2026-07-02 08:26:54.436553+00	2026-07-02 08:26:54.438892+00	\N
66427204-aaa6-4b68-9456-7ee69b2c807c	Rusk Toast	Local Bakery	Bakery	8901234568007	\N	[]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 12, "proteins_100g": 10, "saturated_fat_100g": 2}	3	C	94	f	2026-07-02 08:26:54.556522+00	2026-07-02 08:26:54.56384+00	\N
161dfdd1-4acc-4816-9aea-9bec6859b311	Pizza Base	Local Bakery	Bakery	8901234568008	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	93	f	2026-07-02 08:26:54.684793+00	2026-07-02 08:26:54.692312+00	\N
8e27f2dd-fb63-4278-aaf7-4d3340a48079	Burger Buns	Local Bakery	Bakery	8901234568009	\N	["E282"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	86	f	2026-07-02 08:26:54.811918+00	2026-07-02 08:26:54.819105+00	\N
a9a344d8-4378-4bc7-a11a-b45ea39ec5c0	Sel Roti	Local	Traditional	8901234568100	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 15, "proteins_100g": 5, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:26:54.938677+00	2026-07-02 08:26:54.945969+00	\N
c3f96a53-087c-4103-9098-14c04d45953a	Gundruk Dried	Local	Traditional	8901234568101	\N	[]	{"salt_100g": 3, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 3, "saturated_fat_100g": 0}	1	D	100	f	2026-07-02 08:26:55.064581+00	2026-07-02 08:26:55.071645+00	\N
5bb618e1-a162-4a77-a57f-dc49910eb3ca	Kinema Fermented Soy	Local	Traditional	8901234568102	\N	[]	{"salt_100g": 1, "fiber_100g": 5, "sugars_100g": 0, "proteins_100g": 35, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:26:55.190754+00	2026-07-02 08:26:55.198317+00	\N
6eaaca89-6eda-4075-8d5c-fd77bd9df81d	Yomari	Local	Traditional	8901234568103	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 20, "proteins_100g": 5, "saturated_fat_100g": 3}	2	C	93	f	2026-07-02 08:26:55.316912+00	2026-07-02 08:26:55.324118+00	\N
487bf2a9-c3fb-4eda-b127-94679dcf9296	Sukuti Dried Meat	Local	Traditional	8901234568104	\N	["E250"]	{"salt_100g": 4, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 55, "saturated_fat_100g": 5}	1	E	0	t	2026-07-02 08:26:55.439444+00	2026-07-02 08:26:55.4475+00	\N
e9925ea8-cd37-4dd6-be42-e1f68c6e6678	Chhurpi Hard Cheese	Local	Traditional	8901234568105	\N	[]	{"salt_100g": 2, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 70, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:26:55.964464+00	2026-07-02 08:26:55.971144+00	\N
06bbd5af-d7b5-4563-a19a-0629ab5a4f2d	Makai Bhatmas Sadeko	Local	Traditional	8901234568106	\N	[]	{"salt_100g": 1.5, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 15, "saturated_fat_100g": 3}	2	D	91	f	2026-07-02 08:26:56.081749+00	2026-07-02 08:26:56.088462+00	\N
46a74e59-fb14-4e40-9954-f229f1b0896d	Jeri Sweet	Local	Traditional	8901234568107	\N	["E102"]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 50, "proteins_100g": 3, "saturated_fat_100g": 10}	3	E	60	f	2026-07-02 08:26:56.199776+00	2026-07-02 08:26:56.201401+00	\N
662b9de1-611f-466b-ac0c-8511421462bf	Lapsi Pickle	Local	Traditional	8901234568108	\N	[]	{"salt_100g": 8, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 1, "saturated_fat_100g": 0.5}	2	E	85	f	2026-07-02 08:26:56.310056+00	2026-07-02 08:26:56.316337+00	\N
567f2ee3-5d1c-49c0-bb7c-d3a2e6e84668	Satuwa Powder	Local	Traditional	8901234568109	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:26:56.42609+00	2026-07-02 08:26:56.427458+00	\N
f4a2f5c4-7830-4135-ab58-aee76c13a864	Bara Lentil Patty	Local	Traditional	8901234568110	\N	[]	{"salt_100g": 1, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 3}	2	C	99	f	2026-07-02 08:26:56.539403+00	2026-07-02 08:26:56.547656+00	\N
d6a0bc5e-9136-4f0a-9a31-b648676dd9a0	Kwati Mixed Beans	Local	Traditional	8901234568111	\N	[]	{"salt_100g": 0.02, "fiber_100g": 15, "sugars_100g": 1, "proteins_100g": 22, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:26:56.666053+00	2026-07-02 08:26:56.673391+00	\N
3f7f1e44-1d1b-4aa5-8784-7cda02f529ac	Kaccha Mango Bite	Parle	Candies	8901234570005	\N	["E102", "E110", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:33:54.613437+00	2026-07-02 08:33:54.615049+00	\N
bdf09f9f-38d5-438a-ae7f-e433ee2713ba	Sisno Powder	Local	Traditional	8901234568112	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:26:56.787256+00	2026-07-02 08:26:56.794427+00	\N
11c50688-50fc-44f5-b217-2005d7496d83	Titaura Fruit Leather	Local	Traditional	8901234568113	\N	["E102", "E129"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 60, "proteins_100g": 0.5, "saturated_fat_100g": 0}	2	E	55	f	2026-07-02 08:26:56.910722+00	2026-07-02 08:26:56.917687+00	\N
96acbcf6-aebc-41a6-bcea-c45dafc7bf16	Maseura Dry Balls	Local	Traditional	8901234568114	\N	[]	{"salt_100g": 0.5, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:26:57.030904+00	2026-07-02 08:26:57.037696+00	\N
501f1783-5c9d-4d44-807f-370922bb015b	Banana (Kera)	Local Farm	Fruits	8901234569001	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.6, "sugars_100g": 12, "proteins_100g": 1.1, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:33.17136+00	2026-07-02 08:32:33.173614+00	\N
39339c48-7f15-45e0-927b-5682fd1dcc0b	Apple (Shyau)	Local Farm	Fruits	8901234569002	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.4, "sugars_100g": 10, "proteins_100g": 0.3, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:33.287634+00	2026-07-02 08:32:33.289588+00	\N
a78272b8-05b1-4f14-8d65-dfff8c1c3e49	Orange (Suntala)	Local Farm	Fruits	8901234569003	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.4, "sugars_100g": 9, "proteins_100g": 0.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:33.404591+00	2026-07-02 08:32:33.411605+00	\N
304dd92a-bbad-4e76-8b5d-91b56d68dcde	Mango (Aanp)	Local Farm	Fruits	8901234569004	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.6, "sugars_100g": 14, "proteins_100g": 0.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:33.524624+00	2026-07-02 08:32:33.531565+00	\N
c246b511-5d90-4c7e-b1e3-b7bafd8e159e	Pomegranate (Anar)	Local Farm	Fruits	8901234569005	\N	[]	{"salt_100g": 0.01, "fiber_100g": 4, "sugars_100g": 14, "proteins_100g": 1.7, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:33.645673+00	2026-07-02 08:32:33.652902+00	\N
91dd3846-02a5-4b04-a1ec-e11b205a266b	Papaya (Mewa)	Local Farm	Fruits	8901234569006	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.7, "sugars_100g": 8, "proteins_100g": 0.5, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:33.7665+00	2026-07-02 08:32:33.773479+00	\N
106b9e12-ba62-4bca-8da9-c7f4bac1cec9	Guava (Amba)	Local Farm	Fruits	8901234569007	\N	[]	{"salt_100g": 0.01, "fiber_100g": 5.4, "sugars_100g": 9, "proteins_100g": 2.6, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:33.891727+00	2026-07-02 08:32:33.893597+00	\N
1eb838db-90c7-4427-b145-5c2d500cd1c0	Grapes (Angur)	Local Farm	Fruits	8901234569008	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.9, "sugars_100g": 16, "proteins_100g": 0.7, "saturated_fat_100g": 0.1}	1	C	100	f	2026-07-02 08:32:34.002204+00	2026-07-02 08:32:34.008679+00	\N
d649ee6a-bc4c-4cdb-a3fe-258954699407	Watermelon (Tarbuja)	Local Farm	Fruits	8901234569009	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.4, "sugars_100g": 6, "proteins_100g": 0.6, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:32:34.119264+00	2026-07-02 08:32:34.125514+00	\N
13b9ca86-559b-4610-b92f-f3a9ae863556	Pineapple (Bhui Katahar)	Local Farm	Fruits	8901234569010	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.4, "sugars_100g": 10, "proteins_100g": 0.5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:34.233918+00	2026-07-02 08:32:34.235661+00	\N
a720d16c-f0c8-4349-b84a-6faa8c9fd71c	Lemon (Kagati)	Local Farm	Fruits	8901234569011	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.8, "sugars_100g": 2.5, "proteins_100g": 1.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:34.343875+00	2026-07-02 08:32:34.345974+00	\N
32c84382-132c-4ad1-9fe8-7b8a3a2f1830	Lime (Nibuwa)	Local Farm	Fruits	8901234569012	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.8, "sugars_100g": 1.7, "proteins_100g": 0.7, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:34.453646+00	2026-07-02 08:32:34.459579+00	\N
cd0676f5-31f9-447d-bc23-4e32ac422dfa	Lychee (Litchi)	Local Farm	Fruits	8901234569013	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.3, "sugars_100g": 15, "proteins_100g": 0.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:34.567005+00	2026-07-02 08:32:34.573526+00	\N
a233d458-757a-4b47-8cb8-5d444a47a582	Jackfruit (Katahar)	Local Farm	Fruits	8901234569014	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 19, "proteins_100g": 1.7, "saturated_fat_100g": 0.1}	1	C	100	f	2026-07-02 08:32:34.682782+00	2026-07-02 08:32:34.689218+00	\N
840e35df-1809-408f-a63a-9ce0aba32967	Coconut Fresh (Nariwal)	Local Farm	Fruits	8901234569015	\N	[]	{"salt_100g": 0.05, "fiber_100g": 9, "sugars_100g": 6, "proteins_100g": 3.3, "saturated_fat_100g": 30}	1	D	100	f	2026-07-02 08:32:34.798148+00	2026-07-02 08:32:34.804082+00	\N
77eb4e2a-e3d3-41c9-bb08-57c36e7933fd	Pear (Nashpati)	Local Farm	Fruits	8901234569016	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.1, "sugars_100g": 10, "proteins_100g": 0.4, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:34.913225+00	2026-07-02 08:32:34.919181+00	\N
62019df5-7904-4954-a1bc-16908d313ed9	Peach (Aru)	Local Farm	Fruits	8901234569017	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 8, "proteins_100g": 0.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.027778+00	2026-07-02 08:32:35.034027+00	\N
f99ac29a-fae5-4b94-b79b-6db6353f9b1c	Plum (Alubukhara)	Local Farm	Fruits	8901234569018	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.4, "sugars_100g": 10, "proteins_100g": 0.7, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.14331+00	2026-07-02 08:32:35.15009+00	\N
4c826c6a-087d-4565-a979-94d579abea79	Kiwi Fruit	Local Farm	Fruits	8901234569019	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3, "sugars_100g": 9, "proteins_100g": 1.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.259575+00	2026-07-02 08:32:35.266166+00	\N
683474e2-bd19-4327-b2ff-9e98b018f23b	Avocado	Local Farm	Fruits	8901234569020	\N	[]	{"salt_100g": 0.01, "fiber_100g": 6.7, "sugars_100g": 0.7, "proteins_100g": 2, "saturated_fat_100g": 2.1}	1	A	100	f	2026-07-02 08:32:35.374633+00	2026-07-02 08:32:35.381025+00	\N
65cdeac6-5bd9-4855-ada1-9e4aaa9f5725	Potato (Alu)	Local Farm	Vegetables	8901234569101	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.2, "sugars_100g": 0.8, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.489043+00	2026-07-02 08:32:35.495072+00	\N
d48709c4-c09c-4596-98a0-1b984e0d0efd	Onion (Pyaj)	Local Farm	Vegetables	8901234569102	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.7, "sugars_100g": 4.2, "proteins_100g": 1.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.602606+00	2026-07-02 08:32:35.608538+00	\N
1a1d235d-8d86-4007-bfa6-b0136281a412	Yomari (Sweet Dumpling)	Newari Kitchen	Newari Cuisine	8901234590003	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1.5, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:42:34.360776+00	2026-07-02 08:42:34.367548+00	\N
d74e899b-3269-478f-99e9-b11f111a4cb6	Tomato (Golbheda)	Local Farm	Vegetables	8901234569103	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.2, "sugars_100g": 2.6, "proteins_100g": 0.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.717132+00	2026-07-02 08:32:35.723796+00	\N
b6bed046-2838-4343-9bea-268850c1ec12	Cauliflower (Kauli)	Local Farm	Vegetables	8901234569104	\N	[]	{"salt_100g": 0.03, "fiber_100g": 2, "sugars_100g": 1.9, "proteins_100g": 1.9, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:35.832937+00	2026-07-02 08:32:35.834207+00	\N
401a029d-192e-4851-af2f-90cdcb4c7867	Cabbage (Banda)	Local Farm	Vegetables	8901234569105	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2.5, "sugars_100g": 3.2, "proteins_100g": 1.3, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:35.94344+00	2026-07-02 08:32:35.950002+00	\N
73ab61cd-2363-4ca7-b60c-e65702a59299	Spinach (Palungo)	Local Farm	Vegetables	8901234569106	\N	[]	{"salt_100g": 0.08, "fiber_100g": 2.2, "sugars_100g": 0.4, "proteins_100g": 2.9, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:36.061296+00	2026-07-02 08:32:36.067599+00	\N
9b97726e-683a-4ae9-bd45-3882301bfa24	Carrot (Gajar)	Local Farm	Vegetables	8901234569107	\N	[]	{"salt_100g": 0.07, "fiber_100g": 2.8, "sugars_100g": 4.7, "proteins_100g": 0.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:36.179707+00	2026-07-02 08:32:36.186116+00	\N
f9a08dfd-90d1-42a1-8104-0506cc23bcc2	Cucumber (Kakro)	Local Farm	Vegetables	8901234569108	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 1.7, "proteins_100g": 0.7, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:32:36.298001+00	2026-07-02 08:32:36.304492+00	\N
fd73eeb4-33d0-4957-be38-c5dc2c68cffc	Green Beans (Simi)	Local Farm	Vegetables	8901234569109	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.7, "sugars_100g": 3.3, "proteins_100g": 1.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:36.416604+00	2026-07-02 08:32:36.422935+00	\N
e5434547-6d2f-498b-9e88-c65de5c00461	Peas (Kerau)	Local Farm	Vegetables	8901234569110	\N	[]	{"salt_100g": 0.01, "fiber_100g": 5.1, "sugars_100g": 5.7, "proteins_100g": 5.4, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:36.535031+00	2026-07-02 08:32:36.54137+00	\N
7eaecc9d-afa9-4cd8-9aee-9bdc9cde2ede	Eggplant (Bhanta)	Local Farm	Vegetables	8901234569111	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3, "sugars_100g": 3.5, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:36.65223+00	2026-07-02 08:32:36.658606+00	\N
0bc06962-b6f0-4802-8292-c48e86e35e8f	Okra (Bhindi)	Local Farm	Vegetables	8901234569112	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.2, "sugars_100g": 1.5, "proteins_100g": 1.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:36.767218+00	2026-07-02 08:32:36.773242+00	\N
9e277caa-1618-4158-a09b-21257b6a73d1	Bitter Gourd (Karela)	Local Farm	Vegetables	8901234569113	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.8, "sugars_100g": 0, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:36.882217+00	2026-07-02 08:32:36.887993+00	\N
453e9d1f-f3ea-4259-b9ec-a35cf321d302	Bottle Gourd (Lauka)	Local Farm	Vegetables	8901234569114	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 0.6, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:32:36.99642+00	2026-07-02 08:32:37.002529+00	\N
79137fd7-e4af-499d-b08f-fc33f153f85f	Pumpkin (Pharsi)	Local Farm	Vegetables	8901234569115	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 2.8, "proteins_100g": 1, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:32:37.110774+00	2026-07-02 08:32:37.11725+00	\N
ffe579bf-8484-4f08-b84f-b3b703f543f6	Radish (Mula)	Local Farm	Vegetables	8901234569116	\N	[]	{"salt_100g": 0.04, "fiber_100g": 1.6, "sugars_100g": 1.9, "proteins_100g": 0.7, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:37.226327+00	2026-07-02 08:32:37.232495+00	\N
c5fd7e72-e0d4-4126-aae5-0c1b5996f69a	Garlic (Lasun)	Local Farm	Vegetables	8901234569117	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2.1, "sugars_100g": 1, "proteins_100g": 6.4, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:37.340144+00	2026-07-02 08:32:37.346486+00	\N
af0bc11e-6ea6-4d35-ab4f-48185c875849	Ginger (Aduwa)	Local Farm	Vegetables	8901234569118	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2, "sugars_100g": 1.7, "proteins_100g": 1.8, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:32:37.455861+00	2026-07-02 08:32:37.461884+00	\N
48b70bf6-eac5-44c6-83a9-21c840bc1957	Green Chilli (Hariyo Khursani)	Local Farm	Vegetables	8901234569119	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 4.6, "proteins_100g": 2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:37.57168+00	2026-07-02 08:32:37.577631+00	\N
8698c896-fd00-4fda-80b7-ecd1abf7ae8d	Coriander Leaves (Dhaniya)	Local Farm	Vegetables	8901234569120	\N	[]	{"salt_100g": 0.05, "fiber_100g": 2.8, "sugars_100g": 0.9, "proteins_100g": 2.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:37.686944+00	2026-07-02 08:32:37.693255+00	\N
7b866b3f-c908-4bb6-8fe3-83749b9eb631	Mushroom (Chyau)	Local Farm	Vegetables	8901234569121	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 3.1, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:37.802068+00	2026-07-02 08:32:37.808509+00	\N
e22419f5-750a-4ca2-bd85-c5a9ec5e6fdc	Broccoli	Local Farm	Vegetables	8901234569122	\N	[]	{"salt_100g": 0.03, "fiber_100g": 2.6, "sugars_100g": 1.7, "proteins_100g": 2.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:37.917064+00	2026-07-02 08:32:37.923102+00	\N
b70c64ba-23dc-441e-b3e9-b7b0dd54a829	Sweet Potato (Sakarkhand)	Local Farm	Vegetables	8901234569123	\N	[]	{"salt_100g": 0.06, "fiber_100g": 3, "sugars_100g": 4.2, "proteins_100g": 1.6, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:38.031255+00	2026-07-02 08:32:38.037393+00	\N
e3e13eeb-c7dd-47d6-8fee-7e2b5165d2de	Taro Root (Pindalu)	Local Farm	Vegetables	8901234569124	\N	[]	{"salt_100g": 0.01, "fiber_100g": 4.1, "sugars_100g": 0.4, "proteins_100g": 1.5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:38.146343+00	2026-07-02 08:32:38.152475+00	\N
f453d76c-57b2-4c4f-bb32-e0e6f69500dd	Yam (Tarul)	Local Farm	Vegetables	8901234569125	\N	[]	{"salt_100g": 0.01, "fiber_100g": 4.1, "sugars_100g": 0.5, "proteins_100g": 1.5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:38.261277+00	2026-07-02 08:32:38.267913+00	\N
b052ba42-be0b-4499-970c-9ff52276cb28	Almonds (Badam)	Local	Nuts & Seeds	8901234569201	\N	[]	{"salt_100g": 0.01, "fiber_100g": 12.5, "sugars_100g": 4.4, "proteins_100g": 21, "saturated_fat_100g": 3.8}	1	A	100	f	2026-07-02 08:32:38.377791+00	2026-07-02 08:32:38.384097+00	\N
1b99e6e4-991f-4ffb-bbe4-3851df98ed5e	Walnuts (Okhar)	Local	Nuts & Seeds	8901234569202	\N	[]	{"salt_100g": 0.01, "fiber_100g": 6.7, "sugars_100g": 2.6, "proteins_100g": 15, "saturated_fat_100g": 6.1}	1	A	100	f	2026-07-02 08:32:38.492327+00	2026-07-02 08:32:38.498228+00	\N
01a0cacd-7780-4808-a712-f02315c037b6	Melody Chocolate	Parle	Candies	8901234570006	\N	["E322", "E476", "E150D"]	{"salt_100g": 0.1, "fiber_100g": 0.5, "sugars_100g": 55, "proteins_100g": 3, "saturated_fat_100g": 8}	4	E	59	f	2026-07-02 08:33:54.725302+00	2026-07-02 08:33:54.731483+00	\N
d6a5d120-e124-4f36-84d3-28a42f042e54	Cashew Nuts (Kaju)	Local	Nuts & Seeds	8901234569203	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.3, "sugars_100g": 5.9, "proteins_100g": 18, "saturated_fat_100g": 7.8}	1	B	100	f	2026-07-02 08:32:38.606601+00	2026-07-02 08:32:38.612898+00	\N
85066721-7fb0-4dca-939a-2356b74ffb91	Pistachio (Pista)	Local	Nuts & Seeds	8901234569204	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10.6, "sugars_100g": 7.7, "proteins_100g": 20, "saturated_fat_100g": 5.9}	1	A	100	f	2026-07-02 08:32:38.720916+00	2026-07-02 08:32:38.726974+00	\N
9a05e42e-0369-4a2d-92aa-aee83a98caea	Peanuts (Badam)	Local	Nuts & Seeds	8901234569205	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8.5, "sugars_100g": 4.7, "proteins_100g": 26, "saturated_fat_100g": 6.3}	1	A	100	f	2026-07-02 08:32:38.835317+00	2026-07-02 08:32:38.841454+00	\N
4681ef5a-c9bc-4c6a-85df-e93586e35f85	Raisins (Kismis)	Local	Nuts & Seeds	8901234569206	\N	[]	{"salt_100g": 0.03, "fiber_100g": 3.7, "sugars_100g": 59, "proteins_100g": 3.1, "saturated_fat_100g": 0.1}	1	D	95	f	2026-07-02 08:32:38.949026+00	2026-07-02 08:32:38.955037+00	\N
4cfdf3bb-264a-4415-8c5f-0e377425e85a	Dates (Khajur)	Local	Nuts & Seeds	8901234569207	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 63, "proteins_100g": 2.5, "saturated_fat_100g": 0}	1	D	100	f	2026-07-02 08:32:39.063335+00	2026-07-02 08:32:39.069605+00	\N
7daa8e5b-fc93-4465-ad70-57865e730f96	Pumpkin Seeds	Local	Nuts & Seeds	8901234569208	\N	[]	{"salt_100g": 0.02, "fiber_100g": 6, "sugars_100g": 1.4, "proteins_100g": 30, "saturated_fat_100g": 8.7}	1	A	100	f	2026-07-02 08:32:39.177842+00	2026-07-02 08:32:39.18385+00	\N
d0d40c5f-4dc4-410d-9ef3-fc2ba91be83a	Sunflower Seeds	Local	Nuts & Seeds	8901234569209	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8.6, "sugars_100g": 2.6, "proteins_100g": 21, "saturated_fat_100g": 4.5}	1	A	100	f	2026-07-02 08:32:39.294289+00	2026-07-02 08:32:39.296359+00	\N
693eb8da-0236-49a3-839a-d4beb8a48290	Flax Seeds (Alsi)	Local	Nuts & Seeds	8901234569210	\N	[]	{"salt_100g": 0.03, "fiber_100g": 27, "sugars_100g": 1.6, "proteins_100g": 18, "saturated_fat_100g": 3.7}	1	A	100	f	2026-07-02 08:32:39.405309+00	2026-07-02 08:32:39.411527+00	\N
eed9398a-bedb-4d67-ae74-fc4d68c69605	Chia Seeds	Imported	Nuts & Seeds	8901234569211	\N	[]	{"salt_100g": 0.01, "fiber_100g": 34, "sugars_100g": 0, "proteins_100g": 17, "saturated_fat_100g": 3.3}	1	A	100	f	2026-07-02 08:32:39.520266+00	2026-07-02 08:32:39.526949+00	\N
4c4f9604-8abf-499b-8108-79ebacb0c42f	Sesame Seeds (Til)	Local	Nuts & Seeds	8901234569212	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11.8, "sugars_100g": 0.3, "proteins_100g": 18, "saturated_fat_100g": 7}	1	A	100	f	2026-07-02 08:32:39.635471+00	2026-07-02 08:32:39.641676+00	\N
8c06d623-9f55-4ce9-a65a-e7174900b012	Dried Apricot (Khurpani)	Local	Nuts & Seeds	8901234569213	\N	["E220"]	{"salt_100g": 0.01, "fiber_100g": 7.3, "sugars_100g": 53, "proteins_100g": 3.4, "saturated_fat_100g": 0}	1	D	85	f	2026-07-02 08:32:39.749696+00	2026-07-02 08:32:39.755828+00	\N
c352bbf9-1cdf-4aa6-8a05-7d7f045cb068	Dried Fig (Anjir)	Local	Nuts & Seeds	8901234569214	\N	[]	{"salt_100g": 0.01, "fiber_100g": 9.8, "sugars_100g": 48, "proteins_100g": 3.3, "saturated_fat_100g": 0.1}	1	D	100	f	2026-07-02 08:32:39.864013+00	2026-07-02 08:32:39.865323+00	\N
089f6659-13d0-402e-998e-c65437b26667	Mixed Dry Fruits	Local	Nuts & Seeds	8901234569215	\N	[]	{"salt_100g": 0.02, "fiber_100g": 7, "sugars_100g": 35, "proteins_100g": 12, "saturated_fat_100g": 3}	1	D	100	f	2026-07-02 08:32:39.973246+00	2026-07-02 08:32:39.979892+00	\N
7c3c5dd4-6b23-42c2-b39d-f2c0fbd4ab4f	Honey Pure (Mah)	Nepal Honey	Healthy Foods	8901234569301	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 82, "proteins_100g": 0.3, "saturated_fat_100g": 0}	1	E	90	f	2026-07-02 08:32:40.088938+00	2026-07-02 08:32:40.095518+00	\N
af249b54-be76-4cb5-93e6-f9a46391b080	Tofu Fresh	Local	Healthy Foods	8901234569302	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.3, "sugars_100g": 0.7, "proteins_100g": 8, "saturated_fat_100g": 0.7}	1	A	100	f	2026-07-02 08:32:40.204897+00	2026-07-02 08:32:40.20618+00	\N
2b5203a4-b3ec-4aee-81c5-54343f7e7723	Brown Rice Organic	Organic Nepal	Healthy Foods	8901234569303	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.5, "sugars_100g": 0, "proteins_100g": 7.5, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:32:40.314607+00	2026-07-02 08:32:40.321023+00	\N
6757ff13-c1b2-4580-a203-bae2694828e6	Millet Flour (Kodo)	Local	Healthy Foods	8901234569304	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:32:40.430265+00	2026-07-02 08:32:40.436409+00	\N
2270c3ee-a02d-40f4-8b30-afa2f7c99b6d	Buckwheat Flour (Phapar)	Local	Healthy Foods	8901234569305	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 13, "saturated_fat_100g": 0.7}	1	A	100	f	2026-07-02 08:32:40.54599+00	2026-07-02 08:32:40.552843+00	\N
21bc7a28-6b00-4c97-890a-b9dc96e1a378	Green Tea Organic	Nepal Tea	Healthy Foods	8901234569306	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:32:40.664776+00	2026-07-02 08:32:40.671703+00	\N
3d2fe5a4-e512-4d03-b22e-6fe6132a06a2	Herbal Tea (Tulsi)	Organic Nepal	Healthy Foods	8901234569307	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:32:40.781677+00	2026-07-02 08:32:40.788091+00	\N
1a9cf9c1-b196-4362-b6ed-1df78b3c68c5	Apple Cider Vinegar	American Garden	Healthy Foods	8901234569308	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 0.4, "proteins_100g": 0, "saturated_fat_100g": 0}	2	B	100	f	2026-07-02 08:32:40.897676+00	2026-07-02 08:32:40.904116+00	\N
b99c00a9-da9e-4a31-b220-8909affe8a4c	Olive Oil Extra Virgin	Figaro	Healthy Foods	8901234569309	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 14}	2	B	98	f	2026-07-02 08:32:41.017387+00	2026-07-02 08:32:41.023806+00	\N
0cd1d19a-9884-4ddd-8dd6-8af6375915de	Coconut Water Fresh	Local	Healthy Foods	8901234569310	\N	[]	{"salt_100g": 0.1, "fiber_100g": 1.1, "sugars_100g": 2.6, "proteins_100g": 0.7, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:32:41.134429+00	2026-07-02 08:32:41.140765+00	\N
73eee30e-3757-4e93-82d0-72d4376da6fe	Sattu Flour Mix	Local	Healthy Foods	8901234569311	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:32:41.249708+00	2026-07-02 08:32:41.250798+00	\N
a9587157-fbed-4caa-9325-ec7033381c27	Makhana Fox Nuts	Local	Healthy Foods	8901234569312	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 9.7, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:41.359865+00	2026-07-02 08:32:41.366472+00	\N
c4121a6c-fc13-4a4a-84c0-2b66ced45fb9	Ragi Flour (Finger Millet)	Local	Healthy Foods	8901234569313	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 0, "proteins_100g": 7.3, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:32:41.478773+00	2026-07-02 08:32:41.48503+00	\N
52be5bfd-5fb1-4bde-9f33-6d4312d0fe7e	Jaggery (Gud)	Local	Healthy Foods	8901234569314	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0.4, "saturated_fat_100g": 0}	1	E	90	f	2026-07-02 08:32:41.593697+00	2026-07-02 08:32:41.600286+00	\N
86754abe-86a0-401a-9efa-b981beba30ba	Muskmelon Seeds (Magaj)	Local	Healthy Foods	8901234569315	\N	[]	{"salt_100g": 0.01, "fiber_100g": 4, "sugars_100g": 0, "proteins_100g": 28, "saturated_fat_100g": 4}	1	A	100	f	2026-07-02 08:32:41.709577+00	2026-07-02 08:32:41.716228+00	\N
7ccbcc0a-28c0-45e3-a1c5-40f3882f1319	Amaranth Flour (Latte)	Local	Healthy Foods	8901234569316	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 14, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:32:41.827444+00	2026-07-02 08:32:41.831262+00	\N
6caae591-8017-481f-a524-7cd6674f4948	Yogurt Plain (Dahi)	DDC	Healthy Foods	8901234569317	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4, "proteins_100g": 5, "saturated_fat_100g": 2}	1	B	100	f	2026-07-02 08:32:41.942874+00	2026-07-02 08:32:41.944116+00	\N
52e41d7d-da12-4ea0-a138-88810cf2622a	Buttermilk (Mohi)	DDC	Healthy Foods	8901234569318	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4, "proteins_100g": 3.3, "saturated_fat_100g": 0.5}	1	B	100	f	2026-07-02 08:32:42.055745+00	2026-07-02 08:32:42.057989+00	\N
a224514a-0412-46e3-8dd4-32db47e61435	Eggs Farm Fresh	Local Farm	Healthy Foods	8901234569319	\N	[]	{"salt_100g": 0.14, "fiber_100g": 0, "sugars_100g": 0.4, "proteins_100g": 13, "saturated_fat_100g": 3.3}	1	A	100	f	2026-07-02 08:32:42.170003+00	2026-07-02 08:32:42.176842+00	\N
30c5d05d-05e6-4997-9411-4d4d155314f8	Paneer Fresh (Cottage Cheese)	Local Dairy	Healthy Foods	8901234569320	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 14}	1	D	98	f	2026-07-02 08:32:42.289799+00	2026-07-02 08:32:42.296162+00	\N
8c39c99f-fa74-4075-aa63-b8da476865aa	Quinoa Seeds	Imported	Healthy Foods	8901234569321	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 14, "saturated_fat_100g": 0.7}	1	A	100	f	2026-07-02 08:32:42.408156+00	2026-07-02 08:32:42.414774+00	\N
f15b7d6c-d228-45aa-a71d-6af120112dcc	Oats Rolled	Quaker	Healthy Foods	8901234569322	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 13, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:32:42.526836+00	2026-07-02 08:32:42.533611+00	\N
28c813ee-1aea-4335-8de9-f8b2bdfcf0d4	Sprouts Mixed	Local	Healthy Foods	8901234569323	\N	[]	{"salt_100g": 0.02, "fiber_100g": 8, "sugars_100g": 1, "proteins_100g": 15, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:32:42.645255+00	2026-07-02 08:32:42.652074+00	\N
53d61eba-62d0-459b-87aa-1ea58fad1572	Aloe Vera Juice	Patanjali	Healthy Foods	8901234569324	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0.5, "sugars_100g": 5, "proteins_100g": 0, "saturated_fat_100g": 0}	2	C	100	f	2026-07-02 08:32:42.763166+00	2026-07-02 08:32:42.769405+00	\N
23c3ea65-8064-4e96-a2aa-7687b514b3da	Amla Juice (Indian Gooseberry)	Patanjali	Healthy Foods	8901234569325	\N	[]	{"salt_100g": 0.05, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 0.5, "saturated_fat_100g": 0}	2	A	100	f	2026-07-02 08:32:42.88146+00	2026-07-02 08:32:42.888173+00	\N
3574279b-2c5c-41d8-a9c3-60feefd3ca26	Fenugreek Leaves (Methi)	Local Farm	Vegetables	8901234569401	\N	[]	{"salt_100g": 0.07, "fiber_100g": 2.5, "sugars_100g": 0, "proteins_100g": 4.4, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:42.999856+00	2026-07-02 08:32:43.002612+00	\N
8a50c4ee-3ee6-475d-8c77-f3388a476762	Mustard Greens (Rayo Saag)	Local Farm	Vegetables	8901234569402	\N	[]	{"salt_100g": 0.02, "fiber_100g": 3.2, "sugars_100g": 1.5, "proteins_100g": 2.7, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:43.113566+00	2026-07-02 08:32:43.11616+00	\N
d67e8166-5878-4d8b-aade-da21df47cec1	Watercress (Sim Saag)	Local Farm	Vegetables	8901234569403	\N	[]	{"salt_100g": 0.04, "fiber_100g": 0.5, "sugars_100g": 0.2, "proteins_100g": 2.3, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:32:43.227965+00	2026-07-02 08:32:43.234591+00	\N
337ff074-9df9-4b28-bfb3-8350ad249d24	Taro Leaves (Karkalo)	Local Farm	Vegetables	8901234569404	\N	[]	{"salt_100g": 0.02, "fiber_100g": 3.7, "sugars_100g": 0, "proteins_100g": 5, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:43.345887+00	2026-07-02 08:32:43.354762+00	\N
47dc47d5-b2db-433c-9d32-02d116713fcf	Bok Choy	Local Farm	Vegetables	8901234569405	\N	[]	{"salt_100g": 0.07, "fiber_100g": 1, "sugars_100g": 1.2, "proteins_100g": 1.5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:43.465367+00	2026-07-02 08:32:43.471672+00	\N
0c621bdd-bb5a-461b-8463-491af95cd279	Amaranth Leaves (Latte Saag)	Local Farm	Vegetables	8901234569406	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 3.5, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:43.580729+00	2026-07-02 08:32:43.587224+00	\N
c755d315-170b-4631-a4a2-5d44bd6996c1	Drumstick Leaves (Sajana)	Local Farm	Vegetables	8901234569407	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 9.4, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:32:43.697939+00	2026-07-02 08:32:43.704479+00	\N
e44db57e-0cb5-4bfd-92b2-2a067d25e726	Curry Leaves (Kari Patta)	Local Farm	Vegetables	8901234569408	\N	[]	{"salt_100g": 0.01, "fiber_100g": 6.4, "sugars_100g": 0, "proteins_100g": 6.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:43.813787+00	2026-07-02 08:32:43.820044+00	\N
497cbdad-a33a-4fb5-b5e7-364b3f3e9ed8	Mint Leaves (Pudina)	Local Farm	Vegetables	8901234569409	\N	[]	{"salt_100g": 0.03, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 3.8, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:32:43.929255+00	2026-07-02 08:32:43.93565+00	\N
4f04f656-c63b-4532-a7d3-b123f0895891	Basil Leaves (Tulsi)	Local Farm	Vegetables	8901234569410	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1.6, "sugars_100g": 0.3, "proteins_100g": 3.2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:44.047295+00	2026-07-02 08:32:44.053706+00	\N
366a00a1-269e-4d50-ae85-0c40d3fd42b5	Asparagus (Kurilo)	Local Farm	Vegetables	8901234569411	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.1, "sugars_100g": 1.9, "proteins_100g": 2.2, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:44.164706+00	2026-07-02 08:32:44.171106+00	\N
d763141a-8927-4fc4-86f5-601ab878eb48	Jute Leaves (Patwa Saag)	Local Farm	Vegetables	8901234569412	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 4.7, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:32:44.282824+00	2026-07-02 08:32:44.289384+00	\N
964afb10-9c57-4d3b-a860-4d0e766a9fc9	Coffee Bite	Candico	Candies	8901234570007	\N	["E150D", "E330", "E471"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 75, "proteins_100g": 0.5, "saturated_fat_100g": 2}	4	E	62	f	2026-07-02 08:33:54.84293+00	2026-07-02 08:33:54.849051+00	\N
c0901b47-f381-45c6-90f0-e0c787c1d70c	Colocasia Leaves (Karkalo)	Local Farm	Vegetables	8901234569413	\N	[]	{"salt_100g": 0.02, "fiber_100g": 3.7, "sugars_100g": 0, "proteins_100g": 5, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:44.401443+00	2026-07-02 08:32:44.408125+00	\N
3c0992e2-d303-4fd7-a542-607692acd140	Samay Baji Set	Newari Kitchen	Newari Cuisine	8901234590004	\N	[]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 14, "saturated_fat_100g": 3}	1	C	100	f	2026-07-02 08:42:34.477957+00	2026-07-02 08:42:34.484566+00	\N
cb78f0e8-4344-456a-abd9-6576ac650e9c	Dill Leaves (Sowa)	Local Farm	Vegetables	8901234569414	\N	[]	{"salt_100g": 0.06, "fiber_100g": 2.1, "sugars_100g": 0, "proteins_100g": 3.5, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:44.517042+00	2026-07-02 08:32:44.523824+00	\N
70ffef33-d32f-4ed7-91a9-ffdd1aa07867	Pan Pasand Candy	Ravalgam	Candies	8901234570008	\N	["E102", "E129", "E133", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	28	f	2026-07-02 08:33:54.957781+00	2026-07-02 08:33:54.964202+00	\N
f4213b65-0f6a-4903-963a-aad8b5ac6ac1	Bamboo Shoots (Tama)	Local Farm	Vegetables	8901234569415	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.2, "sugars_100g": 3, "proteins_100g": 2.6, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:32:44.633544+00	2026-07-02 08:32:44.639623+00	\N
b8efa7c5-0619-4e1d-8440-aa141326af30	Pulse Candy Kachcha Aam	Pass Pass	Candies	8901234570009	\N	["E102", "E110", "E330", "E471"]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 78, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	41	f	2026-07-02 08:33:55.072776+00	2026-07-02 08:33:55.079427+00	\N
a6c1c1b3-646f-4980-b50a-f4076ab8f1c4	Maha Lacto Candy	Lacto	Candies	8901234570010	\N	["E102", "E129", "E330"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 82, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:33:55.189596+00	2026-07-02 08:33:55.1963+00	\N
5743fdb2-1ae8-4c1f-af3e-b6cdf2e1dd55	Kopiko Coffee Candy	Mayora	Candies	8901234570011	\N	["E150D", "E322", "E471"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 70, "proteins_100g": 1, "saturated_fat_100g": 3}	4	E	62	f	2026-07-02 08:33:55.306724+00	2026-07-02 08:33:55.313417+00	\N
3d1ed315-540b-4c9b-b5b8-8d92a4939efe	Mentos Mint	Perfetti	Candies	8901234570012	\N	["E422", "E471", "E903"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 70, "proteins_100g": 0, "saturated_fat_100g": 1}	4	E	69	f	2026-07-02 08:33:55.426382+00	2026-07-02 08:33:55.432761+00	\N
8331c96b-2655-40f0-8130-0c0b830566b1	Mentos Fruit	Perfetti	Candies	8901234570013	\N	["E422", "E471", "E903", "E120"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 70, "proteins_100g": 0, "saturated_fat_100g": 1}	4	E	69	f	2026-07-02 08:33:55.546555+00	2026-07-02 08:33:55.553255+00	\N
8a82dff6-7305-46c5-9611-4463fc3933f8	Chupa Chups Strawberry	Perfetti	Candies	8901234570014	\N	["E129", "E330", "E471"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	56	f	2026-07-02 08:33:55.666847+00	2026-07-02 08:33:55.673572+00	\N
ed229e52-f109-4bc3-baa4-581cf2a13885	Center Fruit Chewing Gum	Perfetti	Candies	8901234570015	\N	["E321", "E422", "E471", "E950", "E951"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 60, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	42	f	2026-07-02 08:33:55.786044+00	2026-07-02 08:33:55.792741+00	\N
b3169849-6642-4b7a-9b26-50c512e97e39	Knorr Chicken Soup	Unilever	Instant Soups	8901234570016	\N	["E621", "E627", "E631", "E150D", "E471"]	{"salt_100g": 8, "fiber_100g": 0.5, "sugars_100g": 5, "proteins_100g": 5, "saturated_fat_100g": 3}	4	E	43	f	2026-07-02 08:33:55.905797+00	2026-07-02 08:33:55.912482+00	\N
17582dca-225e-4f1a-bd28-74aa0dbe9d82	Knorr Tomato Soup	Unilever	Instant Soups	8901234570017	\N	["E621", "E627", "E150D", "E471", "E466"]	{"salt_100g": 7, "fiber_100g": 0.5, "sugars_100g": 15, "proteins_100g": 3, "saturated_fat_100g": 2}	4	E	46	f	2026-07-02 08:33:56.025699+00	2026-07-02 08:33:56.032301+00	\N
926dd52b-10f4-4da4-90bc-9905662de31d	Knorr Sweet Corn Soup	Unilever	Instant Soups	8901234570018	\N	["E621", "E627", "E631", "E471"]	{"salt_100g": 7, "fiber_100g": 0.5, "sugars_100g": 10, "proteins_100g": 4, "saturated_fat_100g": 2}	4	E	48	f	2026-07-02 08:33:56.142961+00	2026-07-02 08:33:56.149175+00	\N
98c9e063-913f-4838-957a-ff225904138d	Knorr Manchow Soup	Unilever	Instant Soups	8901234570019	\N	["E621", "E627", "E631", "E150D", "E330"]	{"salt_100g": 8, "fiber_100g": 0.3, "sugars_100g": 4, "proteins_100g": 4, "saturated_fat_100g": 2}	4	E	43	f	2026-07-02 08:33:56.259155+00	2026-07-02 08:33:56.261571+00	\N
d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Maggi Cup Noodles Masala	Nestlé	Instant Soups	8901234570020	\N	["E621", "E627", "E631", "E471", "E501"]	{"salt_100g": 5, "fiber_100g": 0.5, "sugars_100g": 3, "proteins_100g": 6, "saturated_fat_100g": 4}	4	E	48	f	2026-07-02 08:33:56.370863+00	2026-07-02 08:33:56.376981+00	\N
3472b518-797f-4ac7-abce-ec944dc6000a	Wai Wai Cup Chicken Soup	CG Foods	Instant Soups	8901234570021	\N	["E621", "E627", "E631", "E102"]	{"salt_100g": 6, "fiber_100g": 0.5, "sugars_100g": 3, "proteins_100g": 5, "saturated_fat_100g": 3}	4	E	37	f	2026-07-02 08:33:56.487731+00	2026-07-02 08:33:56.494438+00	\N
d0de52af-bada-4793-9c31-58b1690f506a	Nissin Cup Noodles Chicken	Nissin	Instant Soups	8901234570022	\N	["E621", "E627", "E631", "E150D", "E471"]	{"salt_100g": 5.5, "fiber_100g": 0.3, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 3}	4	E	43	f	2026-07-02 08:33:56.608054+00	2026-07-02 08:33:56.614298+00	\N
8533c9e4-cbe4-4500-9e10-d22689f1d9de	Yippee Cup Noodles	ITC	Instant Soups	8901234570023	\N	["E621", "E627", "E631", "E501"]	{"salt_100g": 5, "fiber_100g": 0.5, "sugars_100g": 2.5, "proteins_100g": 5, "saturated_fat_100g": 3}	4	E	50	f	2026-07-02 08:33:56.724788+00	2026-07-02 08:33:56.730906+00	\N
dc7b37ee-b9d1-483b-a57a-5636deb91100	Ching's Instant Soup Hot & Sour	Ching's	Instant Soups	8901234570024	\N	["E621", "E627", "E631", "E150D", "E330", "E415"]	{"salt_100g": 7, "fiber_100g": 0.5, "sugars_100g": 4, "proteins_100g": 3, "saturated_fat_100g": 1}	4	E	43	f	2026-07-02 08:33:56.839687+00	2026-07-02 08:33:56.846075+00	\N
7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Top Ramen Cup Noodles	Nissin	Instant Soups	8901234570025	\N	["E621", "E627", "E631", "E471", "E102"]	{"salt_100g": 6, "fiber_100g": 0.3, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 3}	4	E	35	f	2026-07-02 08:33:56.95585+00	2026-07-02 08:33:56.962316+00	\N
e647d742-e364-4659-b69b-c8909596e94f	Rara Cup Noodles Chicken	Rara	Instant Soups	8901234570026	\N	["E621", "E627", "E631", "E501"]	{"salt_100g": 5.5, "fiber_100g": 0.5, "sugars_100g": 2.5, "proteins_100g": 5, "saturated_fat_100g": 3.5}	4	E	50	f	2026-07-02 08:33:57.072195+00	2026-07-02 08:33:57.078744+00	\N
854ddbe8-d255-427b-af96-13426408a698	Ruchi Cup Noodles Veg	CG Foods	Instant Soups	8901234570027	\N	["E621", "E627", "E501"]	{"salt_100g": 4.5, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 2.5}	4	E	57	f	2026-07-02 08:33:57.190232+00	2026-07-02 08:33:57.196628+00	\N
edb5cc7b-6b86-4bf7-b278-c86606572327	Knorr Chicken Stock Cube	Unilever	Instant Soups	8901234570028	\N	["E621", "E627", "E631", "E150D", "E250"]	{"salt_100g": 50, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 10, "saturated_fat_100g": 10}	4	E	0	t	2026-07-02 08:33:57.309299+00	2026-07-02 08:33:57.315934+00	\N
d3480181-9185-443e-9e69-c244e30a738d	Maggi Magic Cubes Chicken	Nestlé	Instant Soups	8901234570029	\N	["E621", "E627", "E631", "E150D", "E250"]	{"salt_100g": 45, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 8}	4	E	0	t	2026-07-02 08:33:57.428665+00	2026-07-02 08:33:57.434899+00	\N
0953f9bc-c25f-4da3-a58e-cbc2b928acc8	Knorr Vegetable Stock Cube	Unilever	Instant Soups	8901234570030	\N	["E621", "E627", "E631", "E150D", "E250"]	{"salt_100g": 48, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 8, "saturated_fat_100g": 10}	4	E	0	t	2026-07-02 08:33:57.547161+00	2026-07-02 08:33:57.553447+00	\N
665b0388-b46e-4e88-8ab9-36a444297ee9	Cheese Balls	Balaji	Snacks	8901234570031	\N	["E621", "E102", "E110", "E627"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 3, "proteins_100g": 4, "saturated_fat_100g": 8}	4	E	26	f	2026-07-02 08:33:57.665655+00	2026-07-02 08:33:57.671864+00	\N
9c0a0e1d-76b7-43b5-b1fc-64bb29b4bc78	Banana Chips Salted	Haldiram's	Snacks	8901234570032	\N	["E621", "E330"]	{"salt_100g": 1.2, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 2, "saturated_fat_100g": 15}	3	E	69	f	2026-07-02 08:33:57.785265+00	2026-07-02 08:33:57.79162+00	\N
1cc7812a-894d-46b4-8235-9c4f262da749	Aloo Bhujia Sev	Bikaji	Snacks	8901234570033	\N	["E621", "E627", "E631", "E102"]	{"salt_100g": 2, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 8}	4	E	34	f	2026-07-02 08:33:57.904621+00	2026-07-02 08:33:57.911226+00	\N
9d2d86a8-5abb-4ac3-a91b-c80d052be83c	Ratlami Sev	Bikaji	Snacks	8901234570034	\N	["E621", "E627", "E102"]	{"salt_100g": 2, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 7}	4	E	41	f	2026-07-02 08:33:58.023896+00	2026-07-02 08:33:58.030153+00	\N
72a9dd9d-1c35-44df-ab58-92fe80a704be	Khatta Meetha Mix	Haldiram's	Snacks	8901234570035	\N	["E621", "E627", "E102", "E110"]	{"salt_100g": 1.8, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 7, "saturated_fat_100g": 6}	4	E	26	f	2026-07-02 08:33:58.142713+00	2026-07-02 08:33:58.149178+00	\N
a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Corn Puffs Masala	Local	Snacks	8901234570036	\N	["E621", "E627", "E102", "E110", "E129"]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 5}	4	D	16	f	2026-07-02 08:33:58.259222+00	2026-07-02 08:33:58.265565+00	\N
ffed87e5-2486-46f2-bc83-4da1c78b8747	Banana Wafers Masala	Local	Snacks	8901234570037	\N	["E621", "E627", "E102"]	{"salt_100g": 1.3, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 2, "saturated_fat_100g": 14}	3	E	49	f	2026-07-02 08:33:58.375718+00	2026-07-02 08:33:58.382378+00	\N
ce6dab29-eeca-4d31-aa01-24f757037c97	Potato Chips Chilli	Balaji	Snacks	8901234570038	\N	["E621", "E627", "E631", "E102", "E129"]	{"salt_100g": 1.6, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 6}	4	D	24	f	2026-07-02 08:33:58.492065+00	2026-07-02 08:33:58.498461+00	\N
c24edac9-ff9f-4874-8b21-3941de2ea1cf	Ring Chips Masala	Local	Snacks	8901234570039	\N	["E621", "E627", "E102", "E110"]	{"salt_100g": 1.4, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 5}	4	D	34	f	2026-07-02 08:33:58.607572+00	2026-07-02 08:33:58.613829+00	\N
721ec833-791b-42f2-97ea-30171eb575c6	Puff Corn Cheese	Local	Snacks	8901234570040	\N	["E621", "E627", "E102", "E110", "E129", "E471"]	{"salt_100g": 1.7, "fiber_100g": 0.3, "sugars_100g": 4, "proteins_100g": 3, "saturated_fat_100g": 7}	4	E	9	f	2026-07-02 08:33:58.72388+00	2026-07-02 08:33:58.730069+00	\N
0b068756-73cd-4e27-9e36-ac128432b268	Moong Dal Plain	Haldiram's	Snacks	8901234570041	\N	["E621", "E627"]	{"salt_100g": 1.2, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 9, "saturated_fat_100g": 5}	3	D	69	f	2026-07-02 08:33:58.8402+00	2026-07-02 08:33:58.841358+00	\N
09eccd96-3e34-43f1-aab7-65a704a790d9	Chana Dal Crunchy	Haldiram's	Snacks	8901234570042	\N	["E621", "E627"]	{"salt_100g": 1.3, "fiber_100g": 5, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 4}	3	D	75	f	2026-07-02 08:33:58.954454+00	2026-07-02 08:33:58.956621+00	\N
7307a1c1-ee5d-4a5b-9e4a-d31830470456	Chana Jor Garam	Local	Snacks	8901234570043	\N	["E621", "E627", "E631"]	{"salt_100g": 1.5, "fiber_100g": 6, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 3}	3	D	70	f	2026-07-02 08:33:59.06773+00	2026-07-02 08:33:59.074044+00	\N
dec7011b-bac1-44b7-b0c2-a0d23a273605	Papdi Chaat Mix	Bikaji	Snacks	8901234570044	\N	["E621", "E627", "E102", "E110", "E129"]	{"salt_100g": 1.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 6, "saturated_fat_100g": 5}	4	D	16	f	2026-07-02 08:33:59.184765+00	2026-07-02 08:33:59.187233+00	\N
65d65462-4d79-44b7-af5e-ebba6f634354	Bhel Puri Mix	Bikaji	Snacks	8901234570045	\N	["E621", "E627", "E631", "E102", "E110"]	{"salt_100g": 1.6, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 7, "saturated_fat_100g": 4}	4	D	27	f	2026-07-02 08:33:59.297403+00	2026-07-02 08:33:59.303643+00	\N
b91dd866-8c04-41c5-af1b-224fe1c51757	Mixed Fruit Jam	Kissan	Spreads	8901234570046	\N	["E440", "E330", "E260", "E202"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 60, "proteins_100g": 0.5, "saturated_fat_100g": 0}	4	D	72	f	2026-07-02 08:33:59.414561+00	2026-07-02 08:33:59.420861+00	\N
3385cc71-48d8-4894-9179-88fe789a72e2	Mango Jam	Kissan	Spreads	8901234570047	\N	["E440", "E330", "E260", "E202", "E102"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 58, "proteins_100g": 0.5, "saturated_fat_100g": 0}	4	D	57	f	2026-07-02 08:33:59.530914+00	2026-07-02 08:33:59.5371+00	\N
87c3d219-9b92-4b77-9981-eafe41a1e322	Orange Marmalade	Kissan	Spreads	8901234570048	\N	["E440", "E330", "E260", "E202", "E110"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 60, "proteins_100g": 0.5, "saturated_fat_100g": 0}	4	D	57	f	2026-07-02 08:33:59.648767+00	2026-07-02 08:33:59.655057+00	\N
0ae763fe-02b2-42a9-b57c-c80b737265b8	Nutella Chocolate Spread	Ferrero	Spreads	8901234570049	\N	["E322", "E476", "E471"]	{"salt_100g": 0.1, "fiber_100g": 3, "sugars_100g": 56, "proteins_100g": 6, "saturated_fat_100g": 10}	4	E	64	f	2026-07-02 08:33:59.769468+00	2026-07-02 08:33:59.776416+00	\N
e3c87d3a-6713-4af0-82f7-1e7ee7c7ec1c	Chhwela (Spiced Meat)	Newari Kitchen	Newari Cuisine	8901234590005	\N	[]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:42:34.595985+00	2026-07-02 08:42:34.602384+00	\N
de40a436-b81e-47c3-9e58-b5303dd91a91	Druk Strawberry Jam	Druk	Spreads	8901234570050	\N	["E440", "E330", "E260", "E129"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 55, "proteins_100g": 0.5, "saturated_fat_100g": 0}	4	D	59	f	2026-07-02 08:33:59.889502+00	2026-07-02 08:33:59.896188+00	\N
6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Hershey's Chocolate Syrup	Hershey's	Spreads	8901234570051	\N	["E415", "E466", "E202", "E150D", "E322"]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 55, "proteins_100g": 2, "saturated_fat_100g": 2}	4	E	58	f	2026-07-02 08:34:00.005938+00	2026-07-02 08:34:00.012345+00	\N
fd7017c1-dc34-48b5-8183-fc8fa79dc688	Kissan Ketchup Sweet	Kissan	Sauces	8901234570052	\N	["E260", "E415", "E202", "E150D"]	{"salt_100g": 2, "fiber_100g": 0.5, "sugars_100g": 30, "proteins_100g": 1, "saturated_fat_100g": 0}	3	D	67	f	2026-07-02 08:34:00.122328+00	2026-07-02 08:34:00.128636+00	\N
00fb7cda-8333-454b-ae27-dc61129b5289	Maggi Hot & Sweet Sauce	Nestlé	Sauces	8901234570053	\N	["E260", "E415", "E202", "E150D", "E129"]	{"salt_100g": 3, "fiber_100g": 0.5, "sugars_100g": 35, "proteins_100g": 1, "saturated_fat_100g": 0}	3	E	47	f	2026-07-02 08:34:00.238969+00	2026-07-02 08:34:00.245574+00	\N
1b0af267-4209-42ff-b3dd-e85b0f028062	Nutella Biscuits Spread	Ferrero	Spreads	8901234570054	\N	["E322", "E476", "E471", "E500"]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 55, "proteins_100g": 6, "saturated_fat_100g": 9}	4	E	62	f	2026-07-02 08:34:00.356765+00	2026-07-02 08:34:00.363362+00	\N
c68a2a28-e9be-436d-ba61-3bac09723e46	Patanjali Amla Murabba	Patanjali	Spreads	8901234570055	\N	["E211", "E330"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 70, "proteins_100g": 0.5, "saturated_fat_100g": 0}	3	E	71	f	2026-07-02 08:34:00.472544+00	2026-07-02 08:34:00.479018+00	\N
e1a97a90-3548-464a-8d95-b1000bf1ce5a	Tang Orange Instant Drink	Mondelez	Instant Drinks	8901234570056	\N	["E330", "E110", "E102", "E129", "E466"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 90, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	26	f	2026-07-02 08:34:00.588702+00	2026-07-02 08:34:00.59543+00	\N
cc01816c-790a-47f4-afbb-a56c03c1edc9	Tang Mango Instant Drink	Mondelez	Instant Drinks	8901234570057	\N	["E330", "E102", "E110", "E466"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 90, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	41	f	2026-07-02 08:34:00.705529+00	2026-07-02 08:34:00.712171+00	\N
58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Rasna Mango Drink Mix	Rasna	Instant Drinks	8901234570058	\N	["E102", "E110", "E330", "E466", "E950"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	34	f	2026-07-02 08:34:00.821973+00	2026-07-02 08:34:00.828265+00	\N
df395e1d-d0ef-4535-a6ea-7940187e428b	Rasna Orange Drink Mix	Rasna	Instant Drinks	8901234570059	\N	["E102", "E110", "E330", "E466", "E950"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	34	f	2026-07-02 08:34:00.938593+00	2026-07-02 08:34:00.945224+00	\N
93730a2b-77e0-4134-b04d-71218eb86951	Rasna Lemon Drink Mix	Rasna	Instant Drinks	8901234570060	\N	["E102", "E330", "E466", "E950"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 85, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	49	f	2026-07-02 08:34:01.055948+00	2026-07-02 08:34:01.062403+00	\N
88ae8390-5dac-45de-9048-ea9b9c52c5ee	Glucose-D Energy Drink	Dabur	Instant Drinks	8901234570061	\N	["E102", "E110", "E330"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 95, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:34:01.174019+00	2026-07-02 08:34:01.180302+00	\N
30b84763-39f5-46e9-992f-7e6f260debd5	Electral ORS Orange	FDC	Instant Drinks	8901234570062	\N	["E102", "E110", "E330", "E331"]	{"salt_100g": 5, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	36	f	2026-07-02 08:34:01.289932+00	2026-07-02 08:34:01.29629+00	\N
a9d4a825-377d-4550-9fd9-d1f11cc5cbc9	Glucon-D Orange	Heinz	Instant Drinks	8901234570063	\N	["E102", "E110", "E330"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 92, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	43	f	2026-07-02 08:34:01.40573+00	2026-07-02 08:34:01.412186+00	\N
db5eddae-eb70-480b-a8f7-6904f4b6f18c	Tang Pineapple Drink	Mondelez	Instant Drinks	8901234570064	\N	["E330", "E102", "E466"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 90, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	56	f	2026-07-02 08:34:01.523316+00	2026-07-02 08:34:01.529418+00	\N
5b4c7f15-69a9-42eb-9bfe-bcfdebfa3bc7	Tang Lemon Drink	Mondelez	Instant Drinks	8901234570065	\N	["E330", "E102", "E466"]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 90, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	56	f	2026-07-02 08:34:01.639757+00	2026-07-02 08:34:01.645813+00	\N
4c075b9e-bd99-4d19-aeb5-7276f2b6da66	Complan Chocolate	Heinz	Instant Drinks	8901234570066	\N	["E322", "E471", "E466", "E150D"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 40, "proteins_100g": 18, "saturated_fat_100g": 3}	4	E	63	f	2026-07-02 08:34:01.754436+00	2026-07-02 08:34:01.760335+00	\N
27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	Boost Health Drink	GSK	Instant Drinks	8901234570067	\N	["E150D", "E322", "E471", "E466"]	{"salt_100g": 0.4, "fiber_100g": 3, "sugars_100g": 45, "proteins_100g": 15, "saturated_fat_100g": 2}	4	D	68	f	2026-07-02 08:34:01.871226+00	2026-07-02 08:34:01.877382+00	\N
a9fbade5-e722-4336-b4f4-92a9c7259485	Milo Chocolate Malt	Nestlé	Instant Drinks	8901234570068	\N	["E150D", "E322", "E471"]	{"salt_100g": 0.3, "fiber_100g": 3, "sugars_100g": 42, "proteins_100g": 12, "saturated_fat_100g": 2.5}	4	D	70	f	2026-07-02 08:34:01.987464+00	2026-07-02 08:34:01.994068+00	\N
6c9f2482-ee1f-49f1-a206-7ee8b64deb4c	Horlicks Junior	GSK	Instant Drinks	8901234570069	\N	["E322", "E471", "E466"]	{"salt_100g": 0.4, "fiber_100g": 2, "sugars_100g": 35, "proteins_100g": 14, "saturated_fat_100g": 2}	4	D	75	f	2026-07-02 08:34:02.107385+00	2026-07-02 08:34:02.113572+00	\N
e2fa7372-9442-48f2-b982-5e972606ee68	PediaSure Vanilla	Abbott	Instant Drinks	8901234570070	\N	["E322", "E471", "E466", "E415", "E950"]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 30, "proteins_100g": 15, "saturated_fat_100g": 3}	4	D	66	f	2026-07-02 08:34:02.22619+00	2026-07-02 08:34:02.232618+00	\N
f6a7f2bd-717a-49a1-98ed-8ee60576673f	Chicken Sausages	Venky's	Processed Meat	8901234570071	\N	["E250", "E451", "E452", "E621", "E120"]	{"salt_100g": 2, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 5}	4	D	0	t	2026-07-02 08:34:02.341765+00	2026-07-02 08:34:02.347976+00	\N
d6d89b93-2215-403d-a93f-1fbcbbed387b	Chicken Franks	Venky's	Processed Meat	8901234570072	\N	["E250", "E451", "E621", "E120"]	{"salt_100g": 2.2, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 11, "saturated_fat_100g": 6}	4	E	0	t	2026-07-02 08:34:02.457472+00	2026-07-02 08:34:02.463831+00	\N
89556c5e-da2b-4d60-ac1b-f17c6bfdcb48	Chicken Salami	Venky's	Processed Meat	8901234570073	\N	["E250", "E451", "E452", "E621"]	{"salt_100g": 2.5, "fiber_100g": 0, "sugars_100g": 2, "proteins_100g": 14, "saturated_fat_100g": 7}	4	E	0	t	2026-07-02 08:34:02.57721+00	2026-07-02 08:34:02.583917+00	\N
e9645bf1-f190-4c40-9a15-48d99e7150a4	Pork Sausages	Imported	Processed Meat	8901234570074	\N	["E250", "E451", "E621", "E129"]	{"salt_100g": 2.5, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 8}	4	E	0	t	2026-07-02 08:34:02.694225+00	2026-07-02 08:34:02.70076+00	\N
6f939a1d-076d-4907-9e67-80036452a064	Canned Tuna in Oil	American Garden	Processed Meat	8901234570075	\N	["E621", "E330"]	{"salt_100g": 1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 2}	3	A	90	f	2026-07-02 08:34:02.813388+00	2026-07-02 08:34:02.814612+00	\N
e8e5b019-b19f-436b-b978-1fe9e5262e74	Canned Baked Beans	American Garden	Processed Meat	8901234570076	\N	["E260", "E415", "E150D"]	{"salt_100g": 1.2, "fiber_100g": 5, "sugars_100g": 8, "proteins_100g": 5, "saturated_fat_100g": 0.2}	3	C	82	f	2026-07-02 08:34:02.928569+00	2026-07-02 08:34:02.935476+00	\N
e3a00e3f-e4b9-44ce-825e-83a2e23db92c	Canned Mushrooms	American Garden	Processed Meat	8901234570077	\N	["E330", "E223"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 0}	3	C	76	f	2026-07-02 08:34:03.046445+00	2026-07-02 08:34:03.052576+00	\N
59664cce-c369-4e8d-9ee5-a9fbce13f0ad	Canned Sweet Corn	American Garden	Processed Meat	8901234570078	\N	["E330", "E223"]	{"salt_100g": 0.6, "fiber_100g": 3, "sugars_100g": 5, "proteins_100g": 3, "saturated_fat_100g": 0.2}	3	C	76	f	2026-07-02 08:34:03.161902+00	2026-07-02 08:34:03.168104+00	\N
187041c9-b63e-48c8-a2ba-514f6f39b5ac	Chicken Nuggets Frozen	Venky's	Processed Meat	8901234570079	\N	["E451", "E452", "E621", "E471"]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 4}	4	D	58	f	2026-07-02 08:34:03.278704+00	2026-07-02 08:34:03.284821+00	\N
602318ad-5d7a-4072-9106-1dcc94dc573d	Fish Fingers Frozen	Imported	Processed Meat	8901234570080	\N	["E451", "E452", "E621", "E471", "E102"]	{"salt_100g": 1.2, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 2}	4	C	51	f	2026-07-02 08:34:03.39709+00	2026-07-02 08:34:03.40385+00	\N
46e51926-9558-4c42-8fc9-de1a1743dbbf	Ham Slices	Venky's	Processed Meat	8901234570081	\N	["E250", "E451", "E621", "E129"]	{"salt_100g": 2.5, "fiber_100g": 0, "sugars_100g": 2, "proteins_100g": 15, "saturated_fat_100g": 3}	4	D	0	t	2026-07-02 08:34:03.520211+00	2026-07-02 08:34:03.526874+00	\N
a037409a-7022-4585-9cae-52f006aa49c0	Bacon Strips	Imported	Processed Meat	8901234570082	\N	["E250", "E451", "E621"]	{"salt_100g": 3, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 15}	4	E	0	t	2026-07-02 08:34:03.642384+00	2026-07-02 08:34:03.649041+00	\N
64f9bf2f-a437-4a70-ad67-699406792a71	Canned Pineapple	Del Monte	Processed Meat	8901234570083	\N	["E330", "E223", "E102"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 18, "proteins_100g": 0.5, "saturated_fat_100g": 0}	3	C	61	f	2026-07-02 08:34:03.765121+00	2026-07-02 08:34:03.767006+00	\N
0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	Canned Fruit Cocktail	Del Monte	Processed Meat	8901234570084	\N	["E330", "E223", "E102", "E129"]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 18, "proteins_100g": 0.5, "saturated_fat_100g": 0}	3	C	46	f	2026-07-02 08:34:03.883485+00	2026-07-02 08:34:03.886019+00	\N
95cd4fef-878d-4a26-bc58-fd8af1d2c414	Canned Tomato Puree	American Garden	Processed Meat	8901234570085	\N	["E330", "E223"]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 5, "proteins_100g": 1.5, "saturated_fat_100g": 0}	3	A	83	f	2026-07-02 08:34:04.010834+00	2026-07-02 08:34:04.018074+00	\N
ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Britannia Fruit Cake	Britannia	Bakery	8901234570086	\N	["E500", "E450", "E471", "E202", "E102", "E129"]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 35, "proteins_100g": 4, "saturated_fat_100g": 8}	4	E	27	f	2026-07-02 08:34:04.135378+00	2026-07-02 08:34:04.138628+00	\N
8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Britannia Muffin Chocolate	Britannia	Bakery	8901234570087	\N	["E500", "E450", "E471", "E322", "E150D"]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	50	f	2026-07-02 08:34:04.258623+00	2026-07-02 08:34:04.265511+00	\N
78790027-851b-475f-8285-435f5c442371	Britannia Swiss Roll	Britannia	Bakery	8901234570088	\N	["E500", "E450", "E471", "E322", "E202", "E102", "E129"]	{"salt_100g": 0.4, "fiber_100g": 1, "sugars_100g": 38, "proteins_100g": 3, "saturated_fat_100g": 7}	4	E	25	f	2026-07-02 08:34:04.38233+00	2026-07-02 08:34:04.388258+00	\N
b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Monginis Chocolate Pastry	Monginis	Bakery	8901234570089	\N	["E500", "E450", "E471", "E322", "E150D", "E202"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 4, "saturated_fat_100g": 12}	4	E	48	f	2026-07-02 08:34:04.4971+00	2026-07-02 08:34:04.503587+00	\N
77eeed79-4bb3-4940-ab65-e4d765ada889	Cupcake Vanilla	Local Bakery	Bakery	8901234570090	\N	["E500", "E450", "E471", "E102", "E129"]	{"salt_100g": 0.4, "fiber_100g": 0.5, "sugars_100g": 35, "proteins_100g": 3, "saturated_fat_100g": 8}	4	E	29	f	2026-07-02 08:34:04.612487+00	2026-07-02 08:34:04.618664+00	\N
60d0c8aa-e608-415a-804e-c17637f444aa	Chocolate Brownie	Britannia	Bakery	8901234570091	\N	["E500", "E450", "E471", "E322", "E150D"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 40, "proteins_100g": 5, "saturated_fat_100g": 10}	4	E	50	f	2026-07-02 08:34:04.730298+00	2026-07-02 08:34:04.736867+00	\N
3bb1cd67-2693-440d-9ca0-40d96696ac75	Fruit Bread	Modern Bread	Bakery	8901234570092	\N	["E282", "E471", "E102", "E129"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 15, "proteins_100g": 7, "saturated_fat_100g": 1}	4	C	47	f	2026-07-02 08:34:04.848422+00	2026-07-02 08:34:04.854746+00	\N
cc3f4db7-7601-4f01-a5ec-c8d88b53143c	Milk Bread Sweet	Local Bakery	Bakery	8901234570093	\N	["E282", "E471"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 12, "proteins_100g": 8, "saturated_fat_100g": 2}	3	C	80	f	2026-07-02 08:34:04.964434+00	2026-07-02 08:34:04.970992+00	\N
ad8c916a-70b1-4872-8f10-1d98bd478b7b	Garlic Bread Ready	Local Bakery	Bakery	8901234570094	\N	["E282", "E471", "E621"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 4}	3	D	70	f	2026-07-02 08:34:05.082704+00	2026-07-02 08:34:05.089273+00	\N
61ae71ba-63e5-4213-b9b7-8b9db0d8375d	Pizza Crust Ready	Local	Bakery	8901234570095	\N	["E282", "E500"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 2}	3	C	82	f	2026-07-02 08:34:05.199293+00	2026-07-02 08:34:05.205935+00	\N
fd490572-4b54-4d40-a897-7e8e53647c79	Haku Choila (Blackened Meat)	Newari Kitchen	Newari Cuisine	8901234590006	\N	[]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 0, "proteins_100g": 23, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:42:34.71392+00	2026-07-02 08:42:34.720563+00	\N
0914975e-e614-48b8-ad1f-7d8724b450ae	Burger Bun Sesame	Modern Bread	Bakery	8901234570096	\N	["E282", "E471", "E322"]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 8, "saturated_fat_100g": 1.5}	3	C	82	f	2026-07-02 08:34:05.315721+00	2026-07-02 08:34:05.321846+00	\N
b6a9900c-c5e6-4611-b670-f3653793fec1	Hot Dog Bun	Modern Bread	Bakery	8901234570097	\N	["E282", "E471"]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 8, "saturated_fat_100g": 1}	3	C	84	f	2026-07-02 08:34:05.431525+00	2026-07-02 08:34:05.432874+00	\N
75526512-90c7-4f25-9cfe-64ac1bfd3b8f	Samosa Frozen	Local	Bakery	8901234570098	\N	["E282", "E500"]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 5}	3	D	74	f	2026-07-02 08:34:05.542537+00	2026-07-02 08:34:05.549092+00	\N
dfe6f40e-f7d5-43b9-aed1-d46d36dfc6f5	Spring Roll Frozen	Local	Bakery	8901234570099	\N	["E621", "E282"]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 4}	3	D	69	f	2026-07-02 08:34:05.658105+00	2026-07-02 08:34:05.664474+00	\N
62b9c078-e40a-4ec6-9474-adc006929566	Waffles Frozen	Imported	Bakery	8901234570100	\N	["E500", "E450", "E471", "E322"]	{"salt_100g": 0.6, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 6}	4	E	55	f	2026-07-02 08:34:05.774126+00	2026-07-02 08:34:05.780724+00	\N
d21a0965-2887-491a-8e59-c4ebb43db137	Steam Momo Chicken	Street Vendor	Street Food	8901234580001	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 3}	2	C	99	f	2026-07-02 08:35:12.929984+00	2026-07-02 08:35:12.932386+00	\N
59135e20-0e8b-49b3-83d8-3f3d731e8557	Steam Momo Veg	Street Vendor	Street Food	8901234580002	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 1.5}	2	C	98	f	2026-07-02 08:35:13.043818+00	2026-07-02 08:35:13.050455+00	\N
157c6ad7-056e-4cec-8df7-9831e394316e	Fried Momo Chicken	Street Vendor	Street Food	8901234580003	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:35:13.160978+00	2026-07-02 08:35:13.167343+00	\N
dca6a75c-d94c-4bb0-a9b3-77b4a11a44ab	Jhol Momo	Street Vendor	Street Food	8901234580004	\N	[]	{"salt_100g": 1.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 9, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:35:13.276987+00	2026-07-02 08:35:13.283597+00	\N
4006996a-6890-4145-a9f3-d11823cce0e0	Chatpate	Street Vendor	Street Food	8901234580005	\N	[]	{"salt_100g": 1.8, "fiber_100g": 3, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 3}	2	D	88	f	2026-07-02 08:35:13.392958+00	2026-07-02 08:35:13.399313+00	\N
c3d7bb43-057b-4803-87de-63c18e065e7c	Pani Puri	Street Vendor	Street Food	8901234580006	\N	[]	{"salt_100g": 1.5, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:35:13.511402+00	2026-07-02 08:35:13.51786+00	\N
9bf0610e-f0bf-4a71-9ca7-d322d7f03924	Samosa Vegetable	Street Vendor	Street Food	8901234580007	\N	[]	{"salt_100g": 1.5, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 6, "saturated_fat_100g": 8}	2	D	85	f	2026-07-02 08:35:13.628768+00	2026-07-02 08:35:13.635056+00	\N
6a9967ba-8b50-4be1-b350-081536fa7fb8	Samosa Chicken	Street Vendor	Street Food	8901234580008	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 9, "saturated_fat_100g": 7}	2	D	85	f	2026-07-02 08:35:13.744436+00	2026-07-02 08:35:13.750621+00	\N
6129829a-e97d-4670-98e9-1c2a1033fe4f	Aloo Chop	Street Vendor	Street Food	8901234580009	\N	[]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 6}	2	D	88	f	2026-07-02 08:35:13.859988+00	2026-07-02 08:35:13.861337+00	\N
c46f39a4-cd9c-41ea-aa98-f49cf04226ed	Chowmein Chicken	Street Vendor	Street Food	8901234580010	\N	["E621"]	{"salt_100g": 1.8, "fiber_100g": 1.5, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 4}	2	D	81	f	2026-07-02 08:35:13.970014+00	2026-07-02 08:35:13.976453+00	\N
d00a4287-2d49-4a3b-a124-5e4c89875edc	Chowmein Veg	Street Vendor	Street Food	8901234580011	\N	["E621"]	{"salt_100g": 1.5, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 6, "saturated_fat_100g": 3}	2	D	81	f	2026-07-02 08:35:14.086257+00	2026-07-02 08:35:14.092526+00	\N
5bfb1b91-1a27-4c2d-ad83-023cafb0fb12	Sekuwa Chicken	Street Vendor	Street Food	8901234580012	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 22, "saturated_fat_100g": 4}	1	D	96	f	2026-07-02 08:35:14.202518+00	2026-07-02 08:35:14.208959+00	\N
eb00c6c1-976a-4102-9490-753cfd8ec91c	Sekuwa Mutton	Street Vendor	Street Food	8901234580013	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 6}	1	D	93	f	2026-07-02 08:35:14.31762+00	2026-07-02 08:35:14.324232+00	\N
ff78e080-9e5a-44dc-b5ef-2d6b1fb5bbc9	Sekuwa Buff	Street Vendor	Street Food	8901234580014	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 24, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:35:14.433254+00	2026-07-02 08:35:14.439773+00	\N
5f3e5995-5c3f-455b-9c0d-a8571243aa0a	Choila Chicken	Street Vendor	Street Food	8901234580015	\N	[]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:35:14.548594+00	2026-07-02 08:35:14.554835+00	\N
2057985a-eaa6-4e44-8b09-f833e17eb048	Choila Buff	Street Vendor	Street Food	8901234580016	\N	[]	{"salt_100g": 1.8, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 6}	1	D	93	f	2026-07-02 08:35:14.663707+00	2026-07-02 08:35:14.670198+00	\N
adbc83a6-fb63-4153-ad5f-eb7c9ee8e836	Sel Roti	Street Vendor	Street Food	8901234580017	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 15, "proteins_100g": 5, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:35:14.780862+00	2026-07-02 08:35:14.787238+00	\N
6b96a6fd-efcf-473c-822b-7bb93add2090	Malpua Sweet	Street Vendor	Street Food	8901234580018	\N	[]	{"salt_100g": 0.2, "fiber_100g": 0.5, "sugars_100g": 30, "proteins_100g": 4, "saturated_fat_100g": 8}	2	E	80	f	2026-07-02 08:35:14.899071+00	2026-07-02 08:35:14.905687+00	\N
1a7e7247-ea1f-4b20-ae68-e43bd28dcffe	Jeri Swari	Street Vendor	Street Food	8901234580019	\N	["E102"]	{"salt_100g": 0.2, "fiber_100g": 0, "sugars_100g": 45, "proteins_100g": 3, "saturated_fat_100g": 12}	2	E	65	f	2026-07-02 08:35:15.017377+00	2026-07-02 08:35:15.024057+00	\N
53a9cc20-fe04-40b5-baef-6d27f738857a	Lassi Sweet	Street Vendor	Street Food	8901234580020	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 15, "proteins_100g": 3.5, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:35:15.134807+00	2026-07-02 08:35:15.141495+00	\N
bad5eccf-0f0e-4531-ba4d-5ae4a782d0cf	Lassi Salted	Street Vendor	Street Food	8901234580021	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 4, "proteins_100g": 3.5, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:35:15.251257+00	2026-07-02 08:35:15.257991+00	\N
ccaad9e2-72db-4276-a8c2-03465ae8784b	Egg Roll	Street Vendor	Street Food	8901234580022	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 4}	2	D	94	f	2026-07-02 08:35:15.366179+00	2026-07-02 08:35:15.372514+00	\N
a463f8f5-5265-4e64-9e3a-5f72b3a321fa	Chicken Roll	Street Vendor	Street Food	8901234580023	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 5}	2	D	88	f	2026-07-02 08:35:15.482481+00	2026-07-02 08:35:15.489137+00	\N
f698ba57-96b6-4638-a1ab-445fdd48596d	Veg Roll	Street Vendor	Street Food	8901234580024	\N	[]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 3}	2	C	96	f	2026-07-02 08:35:15.596767+00	2026-07-02 08:35:15.603199+00	\N
3fe603ed-5ece-4a11-b116-1e2bc4b0c223	Thukpa Chicken	Street Vendor	Street Food	8901234580025	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 9, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:35:15.712864+00	2026-07-02 08:35:15.719053+00	\N
ec3c18aa-b4c5-4bb0-b07c-823820fdd7a9	Dal Bhat Set	Local Restaurant	Traditional Meals	8901234580026	\N	[]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:35:15.827262+00	2026-07-02 08:35:15.833323+00	\N
7e947faf-13f3-401b-85f8-d2bcfdb42aac	Masu Bhat (Chicken Curry Rice)	Local Restaurant	Traditional Meals	8901234580027	\N	[]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 3}	1	C	100	f	2026-07-02 08:35:15.94242+00	2026-07-02 08:35:15.949075+00	\N
136f12c9-4c73-4b7b-8df5-e02317228018	Khasi Ko Masu (Mutton Curry)	Local Restaurant	Traditional Meals	8901234580028	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:35:16.05771+00	2026-07-02 08:35:16.063675+00	\N
efd3d141-81bc-4ed4-a7e5-376d114a1f0e	Aloo Tama Bodi	Local Restaurant	Traditional Meals	8901234580029	\N	[]	{"salt_100g": 1.2, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:35:16.172758+00	2026-07-02 08:35:16.17962+00	\N
02ab8654-334b-4da2-94b0-78d65e70140a	Gundruk Ko Jhol	Local Restaurant	Traditional Meals	8901234580030	\N	[]	{"salt_100g": 2, "fiber_100g": 3, "sugars_100g": 1, "proteins_100g": 4, "saturated_fat_100g": 0.5}	1	C	100	f	2026-07-02 08:35:16.291257+00	2026-07-02 08:35:16.297553+00	\N
9b4b92ac-7268-4246-b669-975ac93b6b4f	Dhido (Buckwheat)	Local Restaurant	Traditional Meals	8901234580031	\N	[]	{"salt_100g": 0.1, "fiber_100g": 4, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:16.406441+00	2026-07-02 08:35:16.412711+00	\N
8d788ffc-ae8b-463f-ba2f-a3b074b41f5e	Dhido (Millet)	Local Restaurant	Traditional Meals	8901234580032	\N	[]	{"salt_100g": 0.1, "fiber_100g": 5, "sugars_100g": 0, "proteins_100g": 5, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:16.523871+00	2026-07-02 08:35:16.529957+00	\N
0ac8b0be-202c-4943-93b0-d86511f19504	Bhatmas Sadeko	Local Restaurant	Traditional Meals	8901234580033	\N	[]	{"salt_100g": 1.2, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 18, "saturated_fat_100g": 3}	1	C	100	f	2026-07-02 08:35:16.639201+00	2026-07-02 08:35:16.645632+00	\N
0addb6f8-8084-40de-b7aa-adf1e698e355	Aloo Sadeko	Local Restaurant	Traditional Meals	8901234580034	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 3, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:35:16.758931+00	2026-07-02 08:35:16.765913+00	\N
27da0876-21b7-48d9-8519-8532ce450b4b	Makai Bhatmas	Local Restaurant	Traditional Meals	8901234580035	\N	[]	{"salt_100g": 1, "fiber_100g": 4, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 3}	1	C	100	f	2026-07-02 08:35:16.880901+00	2026-07-02 08:35:16.888341+00	\N
6ce9ef98-f572-453b-b833-c0e61b840893	Paneer Tikka	Local Restaurant	Dairy Dishes	8901234580036	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 18, "saturated_fat_100g": 8}	1	D	96	f	2026-07-02 08:35:17.003309+00	2026-07-02 08:35:17.010648+00	\N
5c29c06e-ed81-4ea2-af4d-f9f1a9a25973	Palak Paneer	Local Restaurant	Dairy Dishes	8901234580037	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 8}	1	D	96	f	2026-07-02 08:35:17.126098+00	2026-07-02 08:35:17.132845+00	\N
5b54aa38-f73b-4479-bd0c-d524a90b2231	Paneer Butter Masala	Local Restaurant	Dairy Dishes	8901234580038	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 4, "proteins_100g": 12, "saturated_fat_100g": 12}	2	D	91	f	2026-07-02 08:35:17.247158+00	2026-07-02 08:35:17.253724+00	\N
f9cbf043-deb5-4372-8073-1afa0c5df2d7	Matar Paneer	Local Restaurant	Dairy Dishes	8901234580039	\N	[]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 3, "proteins_100g": 10, "saturated_fat_100g": 7}	1	D	96	f	2026-07-02 08:35:17.371037+00	2026-07-02 08:35:17.378365+00	\N
2820a14a-f297-46b7-add3-3c6ab55385df	Kadhai Paneer	Local Restaurant	Dairy Dishes	8901234580040	\N	[]	{"salt_100g": 1.2, "fiber_100g": 2, "sugars_100g": 4, "proteins_100g": 14, "saturated_fat_100g": 8}	1	D	96	f	2026-07-02 08:35:17.495877+00	2026-07-02 08:35:17.502777+00	\N
8ed65025-8608-460c-a4c0-0a044dd899dc	Shahi Paneer	Local Restaurant	Dairy Dishes	8901234580041	\N	[]	{"salt_100g": 1, "fiber_100g": 1, "sugars_100g": 5, "proteins_100g": 11, "saturated_fat_100g": 10}	2	D	91	f	2026-07-02 08:35:17.619175+00	2026-07-02 08:35:17.626192+00	\N
fc47f755-f519-45e5-a1b9-5391121c916e	Chilli Paneer	Local Restaurant	Dairy Dishes	8901234580042	\N	["E621"]	{"salt_100g": 1.8, "fiber_100g": 1, "sugars_100g": 5, "proteins_100g": 13, "saturated_fat_100g": 6}	2	D	81	f	2026-07-02 08:35:17.740769+00	2026-07-02 08:35:17.746932+00	\N
f17d84e3-8aa0-4b1d-b83e-e9683e8db07f	Paneer Pakora	Street Vendor	Dairy Dishes	8901234580043	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 8}	2	D	91	f	2026-07-02 08:35:17.856434+00	2026-07-02 08:35:17.862941+00	\N
44c3fd93-15ec-43bf-8f88-5eaf3579b729	Malai Kofta	Local Restaurant	Dairy Dishes	8901234580044	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 6, "proteins_100g": 8, "saturated_fat_100g": 10}	2	D	88	f	2026-07-02 08:35:17.971029+00	2026-07-02 08:35:17.977162+00	\N
de4c31a1-ea7b-4537-bc4e-abdf46e680f8	Rasgulla	Local Sweet Shop	Dairy Dishes	8901234580045	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 45, "proteins_100g": 4, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:35:18.08554+00	2026-07-02 08:35:18.091722+00	\N
dbf43cc2-f90f-42a4-8e36-cbb4294d533c	Kachila (Minced Raw Meat)	Newari Kitchen	Newari Cuisine	8901234590007	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 6}	1	D	93	f	2026-07-02 08:42:34.829516+00	2026-07-02 08:42:34.831492+00	\N
0dee4761-accc-425f-92e0-00cd6bef5865	Roti Fresh	Local Restaurant	Fresh Breads	8901234580046	\N	[]	{"salt_100g": 0.5, "fiber_100g": 3, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:18.200761+00	2026-07-02 08:35:18.207353+00	\N
63d5119e-1862-46a3-a75d-36902628ee0f	Naan Plain	Local Restaurant	Fresh Breads	8901234580047	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:35:18.31582+00	2026-07-02 08:35:18.321927+00	\N
a191815c-5ae0-469c-9fc1-7232f843cccc	Butter Naan	Local Restaurant	Fresh Breads	8901234580048	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 5}	2	D	88	f	2026-07-02 08:35:18.430291+00	2026-07-02 08:35:18.431519+00	\N
8efad127-7e05-41c2-8740-062b50ef15c2	Garlic Naan	Local Restaurant	Fresh Breads	8901234580049	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 3}	2	C	96	f	2026-07-02 08:35:18.542852+00	2026-07-02 08:35:18.549629+00	\N
449befc1-5aaf-4989-8839-b766b0f571d0	Tandoori Roti	Local Restaurant	Fresh Breads	8901234580050	\N	[]	{"salt_100g": 0.5, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 9, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:18.661607+00	2026-07-02 08:35:18.668303+00	\N
96406c78-8f16-4380-9e01-aedf0a2461c7	Paratha Plain	Local Restaurant	Fresh Breads	8901234580051	\N	[]	{"salt_100g": 0.6, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 7, "saturated_fat_100g": 5}	2	C	93	f	2026-07-02 08:35:18.779513+00	2026-07-02 08:35:18.786106+00	\N
303c001a-f7a2-491d-9200-978cdad05274	Aloo Paratha	Local Restaurant	Fresh Breads	8901234580052	\N	[]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 5}	2	D	88	f	2026-07-02 08:35:18.897794+00	2026-07-02 08:35:18.901891+00	\N
a63bb8b5-6bbf-47f1-8e48-b198b0074234	Puri Fried	Local Restaurant	Fresh Breads	8901234580053	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 6, "saturated_fat_100g": 10}	2	D	90	f	2026-07-02 08:35:19.010181+00	2026-07-02 08:35:19.016588+00	\N
cd864115-1aa3-4080-97d6-14707dac2af3	Bhatura	Local Restaurant	Fresh Breads	8901234580054	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 10}	2	D	90	f	2026-07-02 08:35:19.124462+00	2026-07-02 08:35:19.131073+00	\N
7ade6801-210d-4d10-9324-def9736d7234	Chapati Whole Wheat	Local Restaurant	Fresh Breads	8901234580055	\N	[]	{"salt_100g": 0.3, "fiber_100g": 4, "sugars_100g": 1, "proteins_100g": 9, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:19.239863+00	2026-07-02 08:35:19.246587+00	\N
53d434e7-4f88-4cdc-8558-18b5f38d404b	Sugarcane Juice (Ukhu Ko Ras)	Street Vendor	Fresh Drinks	8901234580056	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 10, "proteins_100g": 0, "saturated_fat_100g": 0}	1	E	93	f	2026-07-02 08:35:19.355329+00	2026-07-02 08:35:19.361689+00	\N
f78d2a89-3266-48b9-bbd9-8bf09ea313b1	Fresh Orange Juice	Street Vendor	Fresh Drinks	8901234580057	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 8, "proteins_100g": 0.5, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:19.473544+00	2026-07-02 08:35:19.479907+00	\N
a88b096c-ccaf-4a14-b73e-1a2c1d8d3d4a	Fresh Pomegranate Juice	Street Vendor	Fresh Drinks	8901234580058	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 12, "proteins_100g": 0.5, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:19.591531+00	2026-07-02 08:35:19.59792+00	\N
ee9fff4e-22f2-4227-abd5-9ad050664f9b	Fresh Sugarcane Juice Ginger	Street Vendor	Fresh Drinks	8901234580059	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 10, "proteins_100g": 0, "saturated_fat_100g": 0}	1	E	93	f	2026-07-02 08:35:19.709317+00	2026-07-02 08:35:19.715955+00	\N
a2f2d1e0-f60b-4d5a-afff-0f54eb55958a	Fresh Watermelon Juice	Street Vendor	Fresh Drinks	8901234580060	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.3, "sugars_100g": 6, "proteins_100g": 0.3, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:19.826048+00	2026-07-02 08:35:19.832735+00	\N
6724e5fe-d43e-4990-add4-d2c5477373e7	Lemon Soda Fresh	Street Vendor	Fresh Drinks	8901234580061	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 8, "proteins_100g": 0, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:19.942766+00	2026-07-02 08:35:19.949409+00	\N
64c5714a-6c28-4e6e-8695-4ced0c4d0923	Masala Chai	Street Vendor	Fresh Drinks	8901234580062	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 1, "saturated_fat_100g": 1}	1	B	100	f	2026-07-02 08:35:20.060562+00	2026-07-02 08:35:20.067277+00	\N
68cbe13d-b57d-4aeb-b3b0-c04691b04edd	Milk Tea (Chiya)	Street Vendor	Fresh Drinks	8901234580063	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 2, "saturated_fat_100g": 1.5}	1	C	100	f	2026-07-02 08:35:20.176783+00	2026-07-02 08:35:20.183375+00	\N
90e96da2-0ef7-40b8-a978-8912c634f5b2	Mango Lassi Fresh	Street Vendor	Fresh Drinks	8901234580064	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0.3, "sugars_100g": 14, "proteins_100g": 3, "saturated_fat_100g": 1.5}	1	C	100	f	2026-07-02 08:35:20.291672+00	2026-07-02 08:35:20.298302+00	\N
b84de2ca-6bfa-4fb4-98a1-3ce5a5442593	Juju Dhau (King Curd)	Local Dairy	Fresh Drinks	8901234580065	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 12, "proteins_100g": 4, "saturated_fat_100g": 3}	1	C	100	f	2026-07-02 08:35:20.409426+00	2026-07-02 08:35:20.416184+00	\N
83e29e73-cb51-4741-8a70-f0fea645e1bf	Green Salad Fresh	Local Restaurant	Salads	8901234580066	\N	[]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:20.524744+00	2026-07-02 08:35:20.531236+00	\N
1d38f559-f29a-448f-9f7a-fa2c62915009	Cucumber Salad (Kakro Achar)	Local Restaurant	Salads	8901234580067	\N	[]	{"salt_100g": 0.8, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 1, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:20.640769+00	2026-07-02 08:35:20.647249+00	\N
26a5c0c8-0de4-48c6-af68-4a2c09ecd273	Mula Achar (Radish Pickle)	Local Restaurant	Salads	8901234580068	\N	[]	{"salt_100g": 2, "fiber_100g": 1.5, "sugars_100g": 1, "proteins_100g": 1, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:20.755511+00	2026-07-02 08:35:20.761735+00	\N
d7e3b8a3-0a6b-4ef5-97f2-eb875425370b	Golbheda Achar (Tomato Pickle)	Local Restaurant	Salads	8901234580069	\N	[]	{"salt_100g": 2, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 1, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:35:20.869936+00	2026-07-02 08:35:20.876507+00	\N
955f107a-dfde-4b5b-b899-687c7b724158	Aloo Chana Chaat	Street Vendor	Salads	8901234580070	\N	[]	{"salt_100g": 1.2, "fiber_100g": 4, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 2}	2	C	96	f	2026-07-02 08:35:20.985376+00	2026-07-02 08:35:20.991435+00	\N
e1bae76c-c22c-440a-a8c2-56792d88f700	Fruit Chaat	Street Vendor	Salads	8901234580071	\N	[]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 15, "proteins_100g": 1, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:35:21.100811+00	2026-07-02 08:35:21.107216+00	\N
55d2fee7-aee6-4f2e-ac6d-b29cddef15f8	Papad	Local Restaurant	Salads	8901234580072	\N	["E500"]	{"salt_100g": 2, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 10, "saturated_fat_100g": 3}	2	D	89	f	2026-07-02 08:35:21.218521+00	2026-07-02 08:35:21.225172+00	\N
50b3435d-e724-4ca2-b2b4-fc4903420a9c	Kachumber Salad	Local Restaurant	Salads	8901234580073	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1.5, "sugars_100g": 3, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:21.336118+00	2026-07-02 08:35:21.342495+00	\N
cfc4c481-b4a0-4d54-ae2c-a8dd448bc9f2	Sprouts Chaat	Street Vendor	Salads	8901234580074	\N	[]	{"salt_100g": 0.8, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:35:21.451414+00	2026-07-02 08:35:21.457815+00	\N
ffd8ce2f-622b-43f4-bc6e-9956515d6dc4	Corn Chaat	Street Vendor	Salads	8901234580075	\N	[]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 5, "proteins_100g": 4, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:35:21.565687+00	2026-07-02 08:35:21.571985+00	\N
65641319-b8bd-4485-b9b4-5bb44d1d2e9c	Barley (Jau)	Local Farm	Grains	8901234580076	\N	[]	{"salt_100g": 0.01, "fiber_100g": 15, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:21.681182+00	2026-07-02 08:35:21.687619+00	\N
0f21ec78-9dde-416c-a954-8e2ed2d33b7c	Sorghum (Junelo)	Local Farm	Grains	8901234580077	\N	[]	{"salt_100g": 0.01, "fiber_100g": 6, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:21.796341+00	2026-07-02 08:35:21.803268+00	\N
547a3a53-ae39-4322-b5a9-52c8a92aae02	Foxtail Millet (Kaguno)	Local Farm	Grains	8901234580078	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:21.911085+00	2026-07-02 08:35:21.91767+00	\N
207874d8-2e3d-45a1-aaba-69181d46faa3	Barnyard Millet (Sama)	Local Farm	Grains	8901234580079	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 10, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:22.026023+00	2026-07-02 08:35:22.032568+00	\N
d6f929b0-1aba-4336-aff4-43b24af4c7c4	Little Millet (Kutki)	Local Farm	Grains	8901234580080	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 8, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:22.141369+00	2026-07-02 08:35:22.147416+00	\N
d5fbef29-7504-4c85-941d-e80cd0cf5232	Kodo Millet	Local Farm	Grains	8901234580081	\N	[]	{"salt_100g": 0.01, "fiber_100g": 9, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:22.256654+00	2026-07-02 08:35:22.258024+00	\N
a7583f5a-618a-4b4d-9885-f479935a3002	Wheat Daliya (Broken Wheat)	Local	Grains	8901234580082	\N	[]	{"salt_100g": 0.01, "fiber_100g": 11, "sugars_100g": 0, "proteins_100g": 12, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:22.365746+00	2026-07-02 08:35:22.371964+00	\N
9fc69d63-db4c-4ba6-bced-cdafdc76f61a	Corn Grits (Makai Daliya)	Local	Grains	8901234580083	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 8, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:22.48374+00	2026-07-02 08:35:22.484868+00	\N
5a3806a3-dd74-4f29-b114-d61309d6b72c	Puffed Rice (Murai)	Local	Grains	8901234580084	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:35:22.593393+00	2026-07-02 08:35:22.599528+00	\N
eda52ba4-8ea6-409b-aec8-27bb1f5a579c	Flattened Rice (Chiura Red)	Local	Grains	8901234580085	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:35:22.70861+00	2026-07-02 08:35:22.714673+00	\N
4cc936e1-802d-42db-ac71-f2b5657d97a3	Roasted Chickpea (Bhuna Chana)	Local	Grains	8901234580086	\N	[]	{"salt_100g": 0.5, "fiber_100g": 12, "sugars_100g": 2, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:22.822927+00	2026-07-02 08:35:22.829393+00	\N
eed432f3-978f-4a40-b0bc-b8d052582168	Roasted Soybean (Bhuna Bhatmas)	Local	Grains	8901234580087	\N	[]	{"salt_100g": 0.5, "fiber_100g": 9, "sugars_100g": 0, "proteins_100g": 36, "saturated_fat_100g": 2}	1	A	100	f	2026-07-02 08:35:22.93739+00	2026-07-02 08:35:22.944107+00	\N
25940e74-a2e2-48fe-9d1c-4c124cc44823	Roasted Corn (Bhuna Makai)	Local	Grains	8901234580088	\N	[]	{"salt_100g": 0.3, "fiber_100g": 7, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:35:23.05544+00	2026-07-02 08:35:23.061795+00	\N
b2645b2c-b783-40f3-9ef0-dbb0ab185b03	Rice Flakes (Poha)	Local	Grains	8901234580089	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 0, "proteins_100g": 6.5, "saturated_fat_100g": 0.1}	1	B	100	f	2026-07-02 08:35:23.172728+00	2026-07-02 08:35:23.179009+00	\N
184d45b1-b999-4f93-84f6-0e2bedeb425c	Wheat Germ	Local	Grains	8901234580090	\N	[]	{"salt_100g": 0.01, "fiber_100g": 13, "sugars_100g": 0, "proteins_100g": 23, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:35:23.288871+00	2026-07-02 08:35:23.290825+00	\N
5c26ebd8-9c58-4a4f-8479-52f34f2c225a	Fresh Cilantro (Dhaniya Patta)	Local Farm	Herbs	8901234580091	\N	[]	{"salt_100g": 0.05, "fiber_100g": 2.8, "sugars_100g": 0.9, "proteins_100g": 2.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:23.398308+00	2026-07-02 08:35:23.404432+00	\N
0dd85390-2bef-4bf9-b66e-813c644ec577	Fresh Green Onion (Hariyo Pyaj)	Local Farm	Herbs	8901234580092	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2.6, "sugars_100g": 3, "proteins_100g": 1.8, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:23.511978+00	2026-07-02 08:35:23.518331+00	\N
00902a8e-90ff-4b3b-baa5-de5b3134be24	Fresh Curry Leaves	Local Farm	Herbs	8901234580093	\N	[]	{"salt_100g": 0.01, "fiber_100g": 6.4, "sugars_100g": 0, "proteins_100g": 6.1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:23.626958+00	2026-07-02 08:35:23.633324+00	\N
bd60e9c7-6458-423e-b460-91039d4dd4b8	Cinnamon Stick (Dalchini)	Local	Herbs	8901234580094	\N	[]	{"salt_100g": 0.01, "fiber_100g": 53, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:35:23.74484+00	2026-07-02 08:35:23.751564+00	\N
b6ca6b40-f512-473e-89e9-04e9aed2d856	Cardamom Green (Alaichi)	Local	Herbs	8901234580095	\N	[]	{"salt_100g": 0.01, "fiber_100g": 28, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.7}	1	A	100	f	2026-07-02 08:35:23.863581+00	2026-07-02 08:35:23.870356+00	\N
67318e25-4824-478b-9650-c8f896d7c2b1	Cloves Whole (Lwang)	Local	Herbs	8901234580096	\N	[]	{"salt_100g": 0.2, "fiber_100g": 34, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 5}	1	C	100	f	2026-07-02 08:35:23.981703+00	2026-07-02 08:35:23.988466+00	\N
46d87596-a41c-4292-b873-f1e4d54fc9ca	Sapu Mhicha (Bone Marrow)	Newari Kitchen	Newari Cuisine	8901234590008	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 15, "saturated_fat_100g": 20}	1	D	93	f	2026-07-02 08:42:34.940043+00	2026-07-02 08:42:34.946859+00	\N
56da3e73-8a9d-487c-b4cb-42845db99816	Black Pepper Whole	Local	Herbs	8901234580097	\N	[]	{"salt_100g": 0.01, "fiber_100g": 25, "sugars_100g": 0.6, "proteins_100g": 10, "saturated_fat_100g": 1.4}	1	A	100	f	2026-07-02 08:35:24.100104+00	2026-07-02 08:35:24.106916+00	\N
eea0614f-255c-4b44-a226-006ddf88b2e6	Turmeric Fresh (Besar)	Local Farm	Herbs	8901234580098	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 3, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:35:24.217325+00	2026-07-02 08:35:24.223674+00	\N
1c5f5662-01b7-4576-80fd-a2dbcf4ab34d	Bhuttan (Fried Intestine)	Newari Kitchen	Newari Cuisine	8901234590009	\N	[]	{"salt_100g": 1.8, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 12}	2	D	88	f	2026-07-02 08:42:35.057652+00	2026-07-02 08:42:35.063939+00	\N
c54a17d1-2d77-4939-b630-29c0b14af053	Ginger Fresh Root	Local Farm	Herbs	8901234580099	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2, "sugars_100g": 1.7, "proteins_100g": 1.8, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:35:24.335272+00	2026-07-02 08:35:24.341322+00	\N
d5f67685-8e8e-40a6-812c-a4c5cd8afad5	Fenugreek Seeds (Methi)	Local	Herbs	8901234580100	\N	[]	{"salt_100g": 0.07, "fiber_100g": 25, "sugars_100g": 0, "proteins_100g": 23, "saturated_fat_100g": 1.5}	1	A	100	f	2026-07-02 08:35:24.452624+00	2026-07-02 08:35:24.459074+00	\N
dc851c24-ffb9-4255-bc58-5a8e187df6d8	Wo (Lentil Cake)	Newari Kitchen	Newari Cuisine	8901234590010	\N	[]	{"salt_100g": 0.8, "fiber_100g": 5, "sugars_100g": 1, "proteins_100g": 13, "saturated_fat_100g": 2}	2	A	100	f	2026-07-02 08:42:35.172272+00	2026-07-02 08:42:35.17829+00	\N
1d0ae918-c538-4728-8937-167cc718749a	Musya (Roasted Soybean)	Newari Kitchen	Newari Cuisine	8901234590011	\N	[]	{"salt_100g": 0.5, "fiber_100g": 9, "sugars_100g": 0, "proteins_100g": 35, "saturated_fat_100g": 2}	1	A	100	f	2026-07-02 08:42:35.287618+00	2026-07-02 08:42:35.289511+00	\N
8edc17f6-e556-409f-ad7f-8b6bc76beaaa	Aalu Achar (Potato Pickle)	Newari Kitchen	Newari Cuisine	8901234590012	\N	[]	{"salt_100g": 2, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 2, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:42:35.402052+00	2026-07-02 08:42:35.408565+00	\N
38f6d2c7-71b8-4881-a567-43730a7aded5	Sukuti (Dried Meat)	Newari Kitchen	Newari Cuisine	8901234590013	\N	[]	{"salt_100g": 4, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 55, "saturated_fat_100g": 5}	1	E	88	f	2026-07-02 08:42:35.521219+00	2026-07-02 08:42:35.522199+00	\N
f868344e-0b58-4f45-91e2-1b44ebb885a4	Ken (Lentil Soup)	Newari Kitchen	Newari Cuisine	8901234590014	\N	[]	{"salt_100g": 1, "fiber_100g": 5, "sugars_100g": 1, "proteins_100g": 10, "saturated_fat_100g": 0.3}	1	C	100	f	2026-07-02 08:42:35.63066+00	2026-07-02 08:42:35.637136+00	\N
2479e3ac-817d-4dce-a7ac-b24bef216c70	Tusa (Bamboo Shoot)	Newari Kitchen	Newari Cuisine	8901234590015	\N	[]	{"salt_100g": 1.5, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 3, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:42:35.746599+00	2026-07-02 08:42:35.752734+00	\N
ae4731cd-cb35-4fd2-ba12-3bac7b443891	Gwaramari (Sweet Fried Bread)	Newari Kitchen	Newari Cuisine	8901234590016	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 20, "proteins_100g": 5, "saturated_fat_100g": 8}	2	D	85	f	2026-07-02 08:42:35.864421+00	2026-07-02 08:42:35.870818+00	\N
d633828b-aaf1-4ea3-a993-f4c8db266684	Lakhamari (Sweet Bread)	Newari Kitchen	Newari Cuisine	8901234590017	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 4, "saturated_fat_100g": 5}	2	D	85	f	2026-07-02 08:42:35.982416+00	2026-07-02 08:42:35.989257+00	\N
85093cfc-7162-401f-8c45-708512c34a64	Palu (Raw Meat Dish)	Newari Kitchen	Newari Cuisine	8901234590018	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:42:36.098201+00	2026-07-02 08:42:36.100312+00	\N
2d0bc833-3860-48f5-b07e-8821ff6a900a	Chatan (Spicy Snack)	Newari Kitchen	Newari Cuisine	8901234590019	\N	[]	{"salt_100g": 2, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 3}	2	D	88	f	2026-07-02 08:42:36.208857+00	2026-07-02 08:42:36.215131+00	\N
cf998713-4336-4acb-ac3e-b372c85eba09	Aloo Tama (Bamboo Potato Curry)	Newari Kitchen	Newari Cuisine	8901234590020	\N	[]	{"salt_100g": 1.5, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 4, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:42:36.324703+00	2026-07-02 08:42:36.33117+00	\N
9faa73ff-14d8-47f5-9dd3-cbb250d0d11d	Dashain Khasi Ko Masu (Goat Curry)	Home Kitchen	Festival Foods	8901234590021	\N	[]	{"salt_100g": 1.5, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 22, "saturated_fat_100g": 5}	1	D	93	f	2026-07-02 08:42:36.441807+00	2026-07-02 08:42:36.442725+00	\N
9e0e2571-57b0-49f0-b2e1-c9b00b5d0593	Tihar Sel Roti (Sweet Rice Bread)	Home Kitchen	Festival Foods	8901234590022	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 18, "proteins_100g": 5, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:42:36.55133+00	2026-07-02 08:42:36.557659+00	\N
0629647f-9123-4fe7-af77-9cc9de13a6cd	Tihar Anarasa (Rice Cookie)	Home Kitchen	Festival Foods	8901234590023	\N	[]	{"salt_100g": 0.2, "fiber_100g": 0.5, "sugars_100g": 30, "proteins_100g": 3, "saturated_fat_100g": 6}	2	D	85	f	2026-07-02 08:42:36.668527+00	2026-07-02 08:42:36.675021+00	\N
46136d6b-dc60-48fd-8440-14db9fc2e685	Holi Gujiya (Sweet Dumpling)	Home Kitchen	Festival Foods	8901234590024	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 35, "proteins_100g": 5, "saturated_fat_100g": 8}	2	E	80	f	2026-07-02 08:42:36.78449+00	2026-07-02 08:42:36.791174+00	\N
7e09a878-a976-41ba-b52a-fe6e359a5329	Teej Dar (Lentil Curry)	Home Kitchen	Festival Foods	8901234590025	\N	[]	{"salt_100g": 1, "fiber_100g": 6, "sugars_100g": 1, "proteins_100g": 12, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:36.902093+00	2026-07-02 08:42:36.904747+00	\N
791d50ee-5cd1-42ed-9c04-859360dc2994	Maghe Sankranti Chaku (Molasses)	Home Kitchen	Festival Foods	8901234590026	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 65, "proteins_100g": 1, "saturated_fat_100g": 0}	1	E	90	f	2026-07-02 08:42:37.017416+00	2026-07-02 08:42:37.023446+00	\N
f257d39c-c903-4ddb-8f0a-e7bbe6adde00	Maghe Sankranti Til Laddoo	Home Kitchen	Festival Foods	8901234590027	\N	[]	{"salt_100g": 0.1, "fiber_100g": 3, "sugars_100g": 30, "proteins_100g": 8, "saturated_fat_100g": 2}	1	D	93	f	2026-07-02 08:42:37.131715+00	2026-07-02 08:42:37.137808+00	\N
3e3ba2d7-6610-49b1-886a-775c92883b00	Methi Paratha	Local Restaurant	Breakfast	8901234590078	\N	[]	{"salt_100g": 1, "fiber_100g": 4, "sugars_100g": 2, "proteins_100g": 9, "saturated_fat_100g": 5}	2	D	88	f	2026-07-02 08:42:43.058219+00	2026-07-02 08:42:43.064209+00	\N
f5225013-2aaa-4c47-9f6d-9427156df504	Shivaratri Bhaang Laddoo	Home Kitchen	Festival Foods	8901234590028	\N	[]	{"salt_100g": 0.1, "fiber_100g": 2, "sugars_100g": 30, "proteins_100g": 7, "saturated_fat_100g": 3}	2	D	88	f	2026-07-02 08:42:37.245663+00	2026-07-02 08:42:37.252406+00	\N
f7085dc9-2798-40fe-94d5-a54cc3b4d9ca	Janai Purnima Kwati (Mixed Beans)	Home Kitchen	Festival Foods	8901234590029	\N	[]	{"salt_100g": 0.8, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 15, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:42:37.363836+00	2026-07-02 08:42:37.370243+00	\N
f5ab694b-51a1-4e3e-b1d9-f7f4035768a4	Yomari Punhi Yomari	Home Kitchen	Festival Foods	8901234590030	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1.5, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 2}	2	D	88	f	2026-07-02 08:42:37.479581+00	2026-07-02 08:42:37.486474+00	\N
b5eab72a-9d93-419b-a239-89728981ba34	Chhath Thekuwa (Wheat Cookie)	Home Kitchen	Festival Foods	8901234590031	\N	[]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 20, "proteins_100g": 6, "saturated_fat_100g": 5}	2	D	85	f	2026-07-02 08:42:37.595846+00	2026-07-02 08:42:37.601878+00	\N
5655e9ec-faed-4fb1-acef-ce97357c6d88	Chhath Kasar (Rice Flour Cake)	Home Kitchen	Festival Foods	8901234590032	\N	[]	{"salt_100g": 0.2, "fiber_100g": 1, "sugars_100g": 25, "proteins_100g": 4, "saturated_fat_100g": 4}	2	D	88	f	2026-07-02 08:42:37.710001+00	2026-07-02 08:42:37.716579+00	\N
faa18497-31af-462b-a0b3-aa2ec11dbfa2	Lhosar Khapse (Tibetan Cookie)	Home Kitchen	Festival Foods	8901234590033	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 15, "proteins_100g": 5, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:42:37.827645+00	2026-07-02 08:42:37.834373+00	\N
b89601ee-71df-49da-8ec9-3dc2885c241f	Eid Biryani Chicken	Home Kitchen	Festival Foods	8901234590034	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1.5, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 4}	1	D	99	f	2026-07-02 08:42:37.945435+00	2026-07-02 08:42:37.952076+00	\N
8d0c8d5e-8ee8-456d-9aa3-29eff58e2dac	Christmas Cake Fruit	Home Kitchen	Festival Foods	8901234590035	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 35, "proteins_100g": 4, "saturated_fat_100g": 8}	2	E	80	f	2026-07-02 08:42:38.060902+00	2026-07-02 08:42:38.062333+00	\N
66ed68d6-f563-4b1f-8cc6-f38c91601918	Dashain Mutton Sekuwa	Home Kitchen	Festival Foods	8901234590036	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 6}	1	D	93	f	2026-07-02 08:42:38.171496+00	2026-07-02 08:42:38.178282+00	\N
1c2f775b-d6f1-4708-a85f-8e1a0f0c18ce	Tihar Kaju Barfi	Sweet Shop	Festival Foods	8901234590037	\N	["E102"]	{"salt_100g": 0.1, "fiber_100g": 1, "sugars_100g": 40, "proteins_100g": 6, "saturated_fat_100g": 5}	2	E	65	f	2026-07-02 08:42:38.291248+00	2026-07-02 08:42:38.297427+00	\N
43db0c8e-f2d0-49c6-a428-61b2d7a6ac81	Diwali Peda	Sweet Shop	Festival Foods	8901234590038	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 45, "proteins_100g": 5, "saturated_fat_100g": 6}	2	E	80	f	2026-07-02 08:42:38.411278+00	2026-07-02 08:42:38.412252+00	\N
f502c63c-88c8-4ad2-9f1f-b5e3085f9edb	Teej Ghevar	Sweet Shop	Festival Foods	8901234590039	\N	["E102", "E129"]	{"salt_100g": 0.2, "fiber_100g": 0.5, "sugars_100g": 35, "proteins_100g": 3, "saturated_fat_100g": 10}	2	E	50	f	2026-07-02 08:42:38.523728+00	2026-07-02 08:42:38.530743+00	\N
9e84d9b6-ad29-4991-9d0c-7079462a1529	Maghe Sakhar Khanda (Sugar Candy)	Home Kitchen	Festival Foods	8901234590040	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 95, "proteins_100g": 0, "saturated_fat_100g": 0}	2	E	85	f	2026-07-02 08:42:38.64384+00	2026-07-02 08:42:38.650445+00	\N
356f6115-922e-4fc4-9f7f-4f9093c16b98	Raksi (Local Spirit)	Local Brewery	Local Beverages	8901234590041	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:38.764121+00	2026-07-02 08:42:38.770706+00	\N
4392b1d6-e033-414d-a7c9-ecd52ab7c429	Chhyang (Rice Beer)	Local Brewery	Local Beverages	8901234590042	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 3, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:38.884561+00	2026-07-02 08:42:38.890883+00	\N
bf100ebe-3665-4496-b437-2f12d9c196f0	Tongba (Millet Beer)	Local Brewery	Local Beverages	8901234590043	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 2, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:39.00593+00	2026-07-02 08:42:39.012545+00	\N
45550833-bb86-4297-96c2-cdb87d58d834	Aila (Newari Spirit)	Local Brewery	Local Beverages	8901234590044	\N	[]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:39.123466+00	2026-07-02 08:42:39.130175+00	\N
233d27f8-4530-4f93-881b-343d546e4435	Local Fruit Wine	Local Brewery	Local Beverages	8901234590045	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 8, "proteins_100g": 0, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:42:39.24371+00	2026-07-02 08:42:39.249824+00	\N
7fb13217-27c0-4aae-b0b2-16929b2b8fc3	Butter Tea (Tibetan)	Local	Local Beverages	8901234590046	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 2, "saturated_fat_100g": 5}	1	C	100	f	2026-07-02 08:42:39.35943+00	2026-07-02 08:42:39.366044+00	\N
da73ce8f-65e6-4f6c-9dda-f5d6b7d32b25	Salt Tea (Nun Chiya)	Local	Local Beverages	8901234590047	\N	[]	{"salt_100g": 0.8, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 1, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:42:39.478767+00	2026-07-02 08:42:39.484601+00	\N
c3028b7f-5f71-48c8-af64-1eafd742ce55	Jamara Juice (Barley Grass)	Local	Local Beverages	8901234590048	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 3, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:39.59262+00	2026-07-02 08:42:39.599066+00	\N
d2a4bd2c-f6ee-4c08-994e-7ec447ab51a6	Bel Juice (Wood Apple)	Local	Local Beverages	8901234590049	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 0.5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:39.708315+00	2026-07-02 08:42:39.714906+00	\N
b676ec13-7496-48f1-b988-91460ab748f6	Rhododendron Juice	Local	Local Beverages	8901234590050	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 6, "proteins_100g": 0.3, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:42:39.823899+00	2026-07-02 08:42:39.830365+00	\N
c15a8a59-ab0e-4eea-b43e-30748cc8ebb2	Chuk (Sour Fruit Drink)	Local	Local Beverages	8901234590051	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.5, "sugars_100g": 3, "proteins_100g": 0, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:39.939249+00	2026-07-02 08:42:39.94557+00	\N
38ea444d-cf26-480b-b856-e9334193826a	Mohi (Fresh Buttermilk)	Local Dairy	Local Beverages	8901234590052	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 4, "proteins_100g": 3.3, "saturated_fat_100g": 0.5}	1	B	100	f	2026-07-02 08:42:40.054433+00	2026-07-02 08:42:40.06047+00	\N
ba9e2749-7a84-4984-b3ef-d30803900ee3	Sarbat (Sugar Syrup Drink)	Local	Local Beverages	8901234590053	\N	["E102"]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 18, "proteins_100g": 0, "saturated_fat_100g": 0}	2	E	73	f	2026-07-02 08:42:40.168742+00	2026-07-02 08:42:40.174851+00	\N
9339f6da-fc37-4d3c-b568-c33c3527250e	Lemon Water Fresh	Local	Local Beverages	8901234590054	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 0, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:42:40.28445+00	2026-07-02 08:42:40.29075+00	\N
4131900d-a795-43d7-9142-6720fb7fddb0	Honey Lemon Water	Local	Local Beverages	8901234590055	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0, "sugars_100g": 10, "proteins_100g": 0.1, "saturated_fat_100g": 0}	1	E	93	f	2026-07-02 08:42:40.39887+00	2026-07-02 08:42:40.405237+00	\N
c96def5e-cc78-49ac-a7a0-e4d3a7948e2c	Jand (Local Beer)	Local Brewery	Local Beverages	8901234590056	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 2, "proteins_100g": 1, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:40.513263+00	2026-07-02 08:42:40.519072+00	\N
f69d3b50-0d46-404d-9ac9-1278f5549a99	Nigar (Local Wine)	Local Brewery	Local Beverages	8901234590057	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.2, "sugars_100g": 5, "proteins_100g": 0.5, "saturated_fat_100g": 0}	1	C	100	f	2026-07-02 08:42:40.62933+00	2026-07-02 08:42:40.635646+00	\N
dc2afb88-a70b-4b9d-b7f8-ca24da844581	Makaiko Chhyang (Corn Beer)	Local Brewery	Local Beverages	8901234590058	\N	[]	{"salt_100g": 0.01, "fiber_100g": 0.3, "sugars_100g": 2, "proteins_100g": 1.5, "saturated_fat_100g": 0}	1	B	100	f	2026-07-02 08:42:40.747786+00	2026-07-02 08:42:40.748668+00	\N
29658492-ad1c-4e1a-bf10-cf9e20c8a96f	Gahat Ko Jhol (Horse Gram Soup)	Local	Local Beverages	8901234590059	\N	[]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 5, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:40.855824+00	2026-07-02 08:42:40.857211+00	\N
e02df9af-7f06-4183-a0ff-4edbcaa932d3	Jaggery Tea (Gud Ko Chiya)	Local	Local Beverages	8901234590060	\N	[]	{"salt_100g": 0.05, "fiber_100g": 0, "sugars_100g": 12, "proteins_100g": 1, "saturated_fat_100g": 1}	1	C	100	f	2026-07-02 08:42:40.96533+00	2026-07-02 08:42:40.97165+00	\N
d1b50a1c-cd8e-4b1c-b8b7-2cbab2dfc7e2	Malpuwa (Sweet Pancake)	Local Restaurant	Breakfast	8901234590061	\N	[]	{"salt_100g": 0.2, "fiber_100g": 0.5, "sugars_100g": 20, "proteins_100g": 4, "saturated_fat_100g": 5}	2	D	85	f	2026-07-02 08:42:41.080936+00	2026-07-02 08:42:41.087577+00	\N
e531c748-fe19-4e62-8392-171b549941ab	Puri Tarkari Set	Local Restaurant	Breakfast	8901234590062	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 7, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:42:41.195596+00	2026-07-02 08:42:41.201972+00	\N
8e5dc975-26c3-4fea-ba68-bea0435da37e	Chana Masala Breakfast	Local Restaurant	Breakfast	8901234590063	\N	[]	{"salt_100g": 1.2, "fiber_100g": 6, "sugars_100g": 3, "proteins_100g": 10, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:42:41.311862+00	2026-07-02 08:42:41.318502+00	\N
82b0bc6b-b3e3-4a66-9f4d-a3fd27d429a2	Anda Bhurji (Scrambled Eggs)	Local Restaurant	Breakfast	8901234590064	\N	[]	{"salt_100g": 0.8, "fiber_100g": 0, "sugars_100g": 1, "proteins_100g": 14, "saturated_fat_100g": 4}	1	C	100	f	2026-07-02 08:42:41.428374+00	2026-07-02 08:42:41.435175+00	\N
fe414a80-27fb-4f3b-b813-b88a068c86a4	Anda Fry (Fried Egg)	Local Restaurant	Breakfast	8901234590065	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 0.4, "proteins_100g": 13, "saturated_fat_100g": 5}	1	C	100	f	2026-07-02 08:42:41.548331+00	2026-07-02 08:42:41.554952+00	\N
2596dd7f-e60d-431c-8456-e7590b1710f5	Upma (Semolina Porridge)	Local Restaurant	Breakfast	8901234590066	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 5, "saturated_fat_100g": 3}	2	C	96	f	2026-07-02 08:42:41.665856+00	2026-07-02 08:42:41.67235+00	\N
76d04b3d-de8a-4714-b09b-dce4484a9bdd	Poha with Peas	Local Restaurant	Breakfast	8901234590067	\N	[]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 6, "saturated_fat_100g": 3}	2	C	96	f	2026-07-02 08:42:41.781264+00	2026-07-02 08:42:41.787711+00	\N
31abc78a-530d-41e1-b217-30647718789b	Idli Plain	Local Restaurant	Breakfast	8901234590068	\N	[]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 3, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:41.897267+00	2026-07-02 08:42:41.90321+00	\N
da7a7e3e-60b9-42ff-a0bd-d026d8566850	Dosa Plain	Local Restaurant	Breakfast	8901234590069	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 4, "saturated_fat_100g": 2}	2	C	98	f	2026-07-02 08:42:42.013588+00	2026-07-02 08:42:42.019908+00	\N
1f92d8ad-9924-486c-826d-c91abd2e5480	Dosa Masala	Local Restaurant	Breakfast	8901234590070	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 4}	2	C	96	f	2026-07-02 08:42:42.129998+00	2026-07-02 08:42:42.136321+00	\N
6383ffb9-aeb7-4daa-81d7-512d7732b5e7	Uttapam Vegetable	Local Restaurant	Breakfast	8901234590071	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 6, "saturated_fat_100g": 3}	2	C	96	f	2026-07-02 08:42:42.246337+00	2026-07-02 08:42:42.252769+00	\N
9c191d3a-4920-465f-8948-69fcdbb1eaf9	Bread Omelette	Street Vendor	Breakfast	8901234590072	\N	[]	{"salt_100g": 1, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 12, "saturated_fat_100g": 5}	2	D	91	f	2026-07-02 08:42:42.363761+00	2026-07-02 08:42:42.370671+00	\N
f2b7bd0f-84a2-444b-b074-73629c9a06ef	Paratha with Curd	Local Restaurant	Breakfast	8901234590073	\N	[]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 6}	2	D	88	f	2026-07-02 08:42:42.480293+00	2026-07-02 08:42:42.487146+00	\N
80a234b6-3af1-4813-a115-f4fa0d038d6a	Roti with Ghee Sugar	Home Kitchen	Breakfast	8901234590074	\N	[]	{"salt_100g": 0.3, "fiber_100g": 3, "sugars_100g": 15, "proteins_100g": 8, "saturated_fat_100g": 5}	2	C	93	f	2026-07-02 08:42:42.598289+00	2026-07-02 08:42:42.604767+00	\N
8891972b-4a65-4316-987e-04ab6e383820	Cereal with Milk Breakfast	Home Kitchen	Breakfast	8901234590075	\N	[]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 10, "proteins_100g": 7, "saturated_fat_100g": 2}	2	C	96	f	2026-07-02 08:42:42.714352+00	2026-07-02 08:42:42.720717+00	\N
dd8dff23-892c-4552-bb73-f9b64fec93ca	Aloo Paratha Breakfast	Local Restaurant	Breakfast	8901234590076	\N	[]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 8, "saturated_fat_100g": 6}	2	D	88	f	2026-07-02 08:42:42.829665+00	2026-07-02 08:42:42.835629+00	\N
c61ac0db-7ab8-4c46-a511-9a3bc370ad28	Gobi Paratha	Local Restaurant	Breakfast	8901234590077	\N	[]	{"salt_100g": 1, "fiber_100g": 3, "sugars_100g": 3, "proteins_100g": 8, "saturated_fat_100g": 6}	2	D	88	f	2026-07-02 08:42:42.943491+00	2026-07-02 08:42:42.949784+00	\N
5e309701-e3b0-482e-8c37-77bc93eb005e	Paneer Paratha	Local Restaurant	Breakfast	8901234590079	\N	[]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 12, "saturated_fat_100g": 7}	2	D	91	f	2026-07-02 08:42:43.172755+00	2026-07-02 08:42:43.179056+00	\N
d10e2b01-70d1-4e39-9552-967fe58b0a86	Chole Bhature	Local Restaurant	Breakfast	8901234590080	\N	[]	{"salt_100g": 1.5, "fiber_100g": 4, "sugars_100g": 3, "proteins_100g": 10, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:42:43.292374+00	2026-07-02 08:42:43.294594+00	\N
311a0a38-7712-417f-863e-1dd7c5cc3462	Rohu Fish Fresh	Local Fish Market	Fish & Seafood	8901234590081	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 17, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:43.411453+00	2026-07-02 08:42:43.418011+00	\N
b092421c-8a5f-4706-930d-972ec1f9bd58	Katla Fish Fresh	Local Fish Market	Fish & Seafood	8901234590082	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 16, "saturated_fat_100g": 1.2}	1	A	100	f	2026-07-02 08:42:43.529548+00	2026-07-02 08:42:43.535822+00	\N
1e37da57-a5b7-4c72-9c0b-0ea0918d43f9	Tilapia Fish Fresh	Local Fish Market	Fish & Seafood	8901234590083	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:43.644697+00	2026-07-02 08:42:43.651207+00	\N
5dd66a46-4296-473d-ab8a-636c25ebb331	Machha Tareko (Fried Fish)	Local Restaurant	Fish & Seafood	8901234590084	\N	[]	{"salt_100g": 1.2, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 3}	2	C	99	f	2026-07-02 08:42:43.762925+00	2026-07-02 08:42:43.769575+00	\N
0c6d8510-5eb4-487d-b80d-ac304c60ef9e	Fish Curry Nepali Style	Home Kitchen	Fish & Seafood	8901234590085	\N	[]	{"salt_100g": 1.2, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 15, "saturated_fat_100g": 2}	1	C	100	f	2026-07-02 08:42:43.88015+00	2026-07-02 08:42:43.886557+00	\N
e2289eef-4b12-4d81-b3bf-19868d29b035	Dried Fish (Sukeko Machha)	Local	Fish & Seafood	8901234590086	\N	[]	{"salt_100g": 5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 55, "saturated_fat_100g": 2}	1	E	91	f	2026-07-02 08:42:43.995115+00	2026-07-02 08:42:44.001521+00	\N
cac6158c-a9bd-4810-a37f-92f6a9055a3e	Shrimp Fresh	Local Fish Market	Fish & Seafood	8901234590087	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 20, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:42:44.115281+00	2026-07-02 08:42:44.121894+00	\N
05c8ce8e-a23d-43a3-bf5e-1398140024ce	Crab Fresh	Local Fish Market	Fish & Seafood	8901234590088	\N	[]	{"salt_100g": 0.8, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:44.232847+00	2026-07-02 08:42:44.234233+00	\N
4497f2ba-a96f-4980-ad52-09e45ea715d4	Fish Pickle (Machha Achar)	Local	Fish & Seafood	8901234590089	\N	["E260", "E211"]	{"salt_100g": 8, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 15, "saturated_fat_100g": 2}	2	E	77	f	2026-07-02 08:42:44.346203+00	2026-07-02 08:42:44.352917+00	\N
7350e69b-e5d0-4420-8b3f-6a130d7c26e9	Smoked Fish	Local	Fish & Seafood	8901234590090	\N	["E250"]	{"salt_100g": 3, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 1.5}	2	D	0	t	2026-07-02 08:42:44.466676+00	2026-07-02 08:42:44.473006+00	\N
1e574d7c-aeef-4f74-9150-0f942273f921	Trout Fish Fresh	Local Fish Farm	Fish & Seafood	8901234590091	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 19, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:44.582521+00	2026-07-02 08:42:44.583852+00	\N
e64b1d65-0c23-4f5f-8ca1-4eb1c0ce3e14	Pangasius Fish	Local Fish Market	Fish & Seafood	8901234590092	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 15, "saturated_fat_100g": 0.8}	1	A	100	f	2026-07-02 08:42:44.693053+00	2026-07-02 08:42:44.699983+00	\N
850f8595-45d9-4132-9ff9-2f2946d23fdb	Fish Finger Fresh	Local Fish Market	Fish & Seafood	8901234590093	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:44.808801+00	2026-07-02 08:42:44.815389+00	\N
84c19285-fd09-4948-8339-1f10d89d508f	Octopus Fresh	Imported	Fish & Seafood	8901234590094	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 15, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:44.925411+00	2026-07-02 08:42:44.932115+00	\N
e1be86f4-6e07-48e7-9259-5ba69f75f5e0	Squid Fresh	Imported	Fish & Seafood	8901234590095	\N	[]	{"salt_100g": 0.4, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 16, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:42:45.041412+00	2026-07-02 08:42:45.042344+00	\N
b5bf3ee4-feaf-4ef8-aaf3-646f271ef57f	Cerelac Wheat Baby Food	Nestlé	Baby Foods	8901234590096	\N	["E322", "E471"]	{"salt_100g": 0.2, "fiber_100g": 2, "sugars_100g": 25, "proteins_100g": 15, "saturated_fat_100g": 2}	3	D	82	f	2026-07-02 08:42:45.152302+00	2026-07-02 08:42:45.153806+00	\N
2995c5cd-4b16-424f-9497-453689bdd536	Cerelac Rice Baby Food	Nestlé	Baby Foods	8901234590097	\N	["E322", "E471"]	{"salt_100g": 0.2, "fiber_100g": 1.5, "sugars_100g": 22, "proteins_100g": 14, "saturated_fat_100g": 2}	3	C	87	f	2026-07-02 08:42:45.266062+00	2026-07-02 08:42:45.272794+00	\N
b91161ec-7a47-4745-b08e-49aab77fc5f0	Cerelac Mixed Fruit	Nestlé	Baby Foods	8901234590098	\N	["E322", "E471"]	{"salt_100g": 0.2, "fiber_100g": 2, "sugars_100g": 28, "proteins_100g": 13, "saturated_fat_100g": 2}	3	D	82	f	2026-07-02 08:42:45.388044+00	2026-07-02 08:42:45.390271+00	\N
a821b8b3-bd87-47ca-a36e-0147ad643008	Lactogen 1 Infant Formula	Nestlé	Baby Foods	8901234590099	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 40, "proteins_100g": 11, "saturated_fat_100g": 8}	4	E	67	f	2026-07-02 08:42:45.504254+00	2026-07-02 08:42:45.51157+00	\N
9a7bd9a7-349e-4d94-a980-eb7d8097e0ac	Lactogen 2 Follow-Up	Nestlé	Baby Foods	8901234590100	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 38, "proteins_100g": 12, "saturated_fat_100g": 7}	4	E	67	f	2026-07-02 08:42:45.625138+00	2026-07-02 08:42:45.626253+00	\N
b503c1c8-166d-428d-8527-b7245168aa96	Nan Pro 1 Infant	Nestlé	Baby Foods	8901234590101	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 42, "proteins_100g": 10, "saturated_fat_100g": 9}	4	E	67	f	2026-07-02 08:42:45.735217+00	2026-07-02 08:42:45.736879+00	\N
07e75c4e-9889-40ce-8838-04b2e4c9aa1a	Nan Pro 2 Follow-Up	Nestlé	Baby Foods	8901234590102	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 40, "proteins_100g": 11, "saturated_fat_100g": 8}	4	E	67	f	2026-07-02 08:42:45.847741+00	2026-07-02 08:42:45.854048+00	\N
5e05b1f9-44f4-4f39-a5cb-fca91c4ef949	Baby Rice Cereal	Heinz	Baby Foods	8901234590103	\N	["E322"]	{"salt_100g": 0.1, "fiber_100g": 1, "sugars_100g": 5, "proteins_100g": 7, "saturated_fat_100g": 1}	3	A	98	f	2026-07-02 08:42:45.963863+00	2026-07-02 08:42:45.969885+00	\N
2bb4cb7f-076d-4ad5-a957-51f85cd08620	Baby Fruit Puree Apple	Heinz	Baby Foods	8901234590104	\N	["E330"]	{"salt_100g": 0.01, "fiber_100g": 1.5, "sugars_100g": 12, "proteins_100g": 0.3, "saturated_fat_100g": 0}	3	A	96	f	2026-07-02 08:42:46.081937+00	2026-07-02 08:42:46.088157+00	\N
f21e2217-0af5-4b93-9ddf-1bbd2244ffbb	Baby Vegetable Puree	Heinz	Baby Foods	8901234590105	\N	[]	{"salt_100g": 0.1, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 1, "saturated_fat_100g": 0}	3	A	100	f	2026-07-02 08:42:46.197159+00	2026-07-02 08:42:46.203578+00	\N
50fc9da2-0bb2-4517-b9d6-9681b61d9862	Farex Baby Cereal	Heinz	Baby Foods	8901234590106	\N	["E322"]	{"salt_100g": 0.1, "fiber_100g": 2, "sugars_100g": 8, "proteins_100g": 8, "saturated_fat_100g": 1}	3	A	98	f	2026-07-02 08:42:46.311179+00	2026-07-02 08:42:46.317401+00	\N
06b21590-0b88-4727-a479-6662ad937ca6	Similac Infant Formula	Abbott	Baby Foods	8901234590107	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 42, "proteins_100g": 10, "saturated_fat_100g": 9}	4	E	67	f	2026-07-02 08:42:46.426025+00	2026-07-02 08:42:46.432618+00	\N
4aeac621-2d9a-4634-86af-30d75f46c0cf	Enfamil Infant Formula	Mead Johnson	Baby Foods	8901234590108	\N	["E322", "E471", "E466"]	{"salt_100g": 0.3, "fiber_100g": 0, "sugars_100g": 42, "proteins_100g": 10, "saturated_fat_100g": 8}	4	E	67	f	2026-07-02 08:42:46.541197+00	2026-07-02 08:42:46.547774+00	\N
adbf1e06-e473-4284-8edb-5fc3646a9b78	Baby Teething Biscuit	Local	Baby Foods	8901234590109	\N	[]	{"salt_100g": 0.2, "fiber_100g": 2, "sugars_100g": 15, "proteins_100g": 7, "saturated_fat_100g": 3}	3	C	91	f	2026-07-02 08:42:46.656158+00	2026-07-02 08:42:46.662792+00	\N
c13679ce-a212-49f5-a626-597c5d32d9ce	Ragi Baby Food	Local	Baby Foods	8901234590110	\N	[]	{"salt_100g": 0.01, "fiber_100g": 5, "sugars_100g": 2, "proteins_100g": 7, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:46.770704+00	2026-07-02 08:42:46.776507+00	\N
6f0f6e5b-cc8c-4c61-a335-f203faabdd45	Momo Wrapper Ready	Local	Ready-to-Cook	8901234590111	\N	[]	{"salt_100g": 0.3, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 0.5}	2	A	100	f	2026-07-02 08:42:46.883752+00	2026-07-02 08:42:46.889992+00	\N
6f951477-3d6d-4b8e-a4f5-02228f1e37b0	Samosa Patti (Pastry Sheet)	Local	Ready-to-Cook	8901234590112	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 7, "saturated_fat_100g": 3}	2	C	98	f	2026-07-02 08:42:46.99838+00	2026-07-02 08:42:47.004742+00	\N
208c604a-ce00-4540-bdee-a1cfbee57df3	Spring Roll Sheet	Local	Ready-to-Cook	8901234590113	\N	[]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 7, "saturated_fat_100g": 2}	2	C	98	f	2026-07-02 08:42:47.113346+00	2026-07-02 08:42:47.119666+00	\N
4b853fff-cc9d-487d-ac29-5377e59390d9	Idli Mix Packet	MTR	Ready-to-Cook	8901234590114	\N	["E500"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 0.3}	2	A	100	f	2026-07-02 08:42:47.228254+00	2026-07-02 08:42:47.234567+00	\N
030c25f8-ae3e-4413-816c-457854ac54fd	Dosa Mix Packet	MTR	Ready-to-Cook	8901234590115	\N	["E500"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 1, "proteins_100g": 8, "saturated_fat_100g": 0.3}	2	A	100	f	2026-07-02 08:42:47.342184+00	2026-07-02 08:42:47.348194+00	\N
ee9e33c8-a392-4a19-9c9b-d567ab79a9b6	Dhokla Mix Packet	MTR	Ready-to-Cook	8901234590116	\N	["E500", "E330"]	{"salt_100g": 1, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 10, "saturated_fat_100g": 1}	2	C	97	f	2026-07-02 08:42:47.456834+00	2026-07-02 08:42:47.463166+00	\N
6e46ec6c-a622-4a73-aaa7-bfb57dc22e9e	Gulab Jamun Mix	MTR	Ready-to-Cook	8901234590117	\N	["E500"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 30, "proteins_100g": 6, "saturated_fat_100g": 3}	3	D	81	f	2026-07-02 08:42:47.572539+00	2026-07-02 08:42:47.573941+00	\N
7991073a-e80c-437a-9608-e856de4209a8	Jalebi Mix Packet	MTR	Ready-to-Cook	8901234590118	\N	["E102", "E500"]	{"salt_100g": 0.2, "fiber_100g": 0.5, "sugars_100g": 25, "proteins_100g": 5, "saturated_fat_100g": 2}	3	D	66	f	2026-07-02 08:42:47.683176+00	2026-07-02 08:42:47.684608+00	\N
10d77f99-33bf-4765-8c3f-4dc479b89802	Gundruk Packet Dried	Local	Ready-to-Cook	8901234590119	\N	[]	{"salt_100g": 3, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 3, "saturated_fat_100g": 0}	1	D	100	f	2026-07-02 08:42:47.792838+00	2026-07-02 08:42:47.798928+00	\N
d05f47e4-423c-490b-b857-009c036e5f54	Maseura Packet (Dry Lentil Balls)	Local	Ready-to-Cook	8901234590120	\N	[]	{"salt_100g": 0.5, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 25, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:47.907668+00	2026-07-02 08:42:47.91363+00	\N
9633732c-3bb3-46a1-b625-befe62ada12b	Kinema Packet (Fermented Soy)	Local	Ready-to-Cook	8901234590121	\N	[]	{"salt_100g": 1, "fiber_100g": 5, "sugars_100g": 0, "proteins_100g": 35, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:48.02191+00	2026-07-02 08:42:48.023111+00	\N
9da1d511-caf1-4bdd-a481-41c33da4bece	Kodo Ko Pitho (Millet Flour)	Local	Ready-to-Cook	8901234590122	\N	[]	{"salt_100g": 0.01, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 11, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:48.131255+00	2026-07-02 08:42:48.137882+00	\N
bc8bd4b4-2f64-4784-9be1-ea603f9a9bcf	Phapar Ko Pitho (Buckwheat)	Local	Ready-to-Cook	8901234590123	\N	[]	{"salt_100g": 0.01, "fiber_100g": 10, "sugars_100g": 0, "proteins_100g": 13, "saturated_fat_100g": 0.7}	1	A	100	f	2026-07-02 08:42:48.249586+00	2026-07-02 08:42:48.255668+00	\N
329f2307-1665-4fdf-ad1d-a51d0f318b88	Makkai Ko Pitho (Corn Flour)	Local	Ready-to-Cook	8901234590124	\N	[]	{"salt_100g": 0.01, "fiber_100g": 7, "sugars_100g": 0, "proteins_100g": 8, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:42:48.366278+00	2026-07-02 08:42:48.368541+00	\N
1c553c42-746f-4205-a43c-178e1a379509	Satuwa Mix Packet	Local	Ready-to-Cook	8901234590125	\N	[]	{"salt_100g": 0.02, "fiber_100g": 10, "sugars_100g": 1, "proteins_100g": 20, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:48.4802+00	2026-07-02 08:42:48.486252+00	\N
3f877390-77c0-474b-919a-6a38c2858ef8	Protein Powder Whey Vanilla	Optimum Nutrition	Supplements	8901234590126	\N	["E322", "E471", "E950"]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 5, "proteins_100g": 80, "saturated_fat_100g": 2}	3	A	90	f	2026-07-02 08:42:48.59546+00	2026-07-02 08:42:48.602008+00	\N
924b5cbc-4722-4dad-ad98-5d98591a7710	Multivitamin Tablets	Supradyn	Supplements	8901234590127	\N	["E460", "E470", "E171"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	76	f	2026-07-02 08:42:48.710895+00	2026-07-02 08:42:48.712503+00	\N
7481e55e-5611-47c2-8797-08f54b7ae537	Calcium Supplement	Calcium Sandoz	Supplements	8901234590128	\N	["E460", "E470"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	91	f	2026-07-02 08:42:48.821893+00	2026-07-02 08:42:48.824638+00	\N
55ed35d6-4d82-4b93-923b-40c972af23a3	Iron Supplement Tablets	Ferium	Supplements	8901234590129	\N	["E460", "E470", "E171"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	76	f	2026-07-02 08:42:48.93817+00	2026-07-02 08:42:48.945423+00	\N
402d68dc-2c2b-4363-8277-48ed4200d318	Vitamin D Supplement	Calcirol	Supplements	8901234590130	\N	["E460"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	91	f	2026-07-02 08:42:49.055655+00	2026-07-02 08:42:49.057107+00	\N
a4f08562-9b1c-4280-9547-32da2bb3af9f	Omega 3 Fish Oil Capsules	Seven Seas	Supplements	8901234590131	\N	["E422", "E471"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 30}	3	D	81	f	2026-07-02 08:42:49.169197+00	2026-07-02 08:42:49.174334+00	\N
d4e5f5e0-7ff6-47ca-be5b-a61d4d63590a	Chyawanprash	Dabur	Supplements	8901234590132	\N	[]	{"salt_100g": 0.1, "fiber_100g": 2, "sugars_100g": 60, "proteins_100g": 1, "saturated_fat_100g": 0.5}	2	D	90	f	2026-07-02 08:42:49.294813+00	2026-07-02 08:42:49.302735+00	\N
e463c002-3f41-4dd4-902a-bcda80b68126	Ashwagandha Powder	Patanjali	Supplements	8901234590133	\N	[]	{"salt_100g": 0.01, "fiber_100g": 5, "sugars_100g": 0, "proteins_100g": 3, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:49.418512+00	2026-07-02 08:42:49.426667+00	\N
02bc7ba6-bd62-4647-a8e7-2370ec97088e	Spirulina Tablets	Patanjali	Supplements	8901234590134	\N	["E460"]	{"salt_100g": 0.5, "fiber_100g": 2, "sugars_100g": 0, "proteins_100g": 60, "saturated_fat_100g": 1}	3	A	100	f	2026-07-02 08:42:49.542516+00	2026-07-02 08:42:49.549863+00	\N
f95047cf-c9af-446c-89eb-cc9bc33725f6	Moringa Powder	Organic Nepal	Supplements	8901234590135	\N	[]	{"salt_100g": 0.1, "fiber_100g": 8, "sugars_100g": 0, "proteins_100g": 9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:49.672126+00	2026-07-02 08:42:49.678599+00	\N
403e380d-742b-492f-bb41-c2edc884961e	Biotin Supplement	Himalaya	Supplements	8901234590136	\N	["E460"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	91	f	2026-07-02 08:42:49.789745+00	2026-07-02 08:42:49.797285+00	\N
b3ed7f9e-9dde-4ed5-a219-cf6360944e0a	Vitamin C Tablets	Limcee	Supplements	8901234590137	\N	["E460", "E470", "E102"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 80, "proteins_100g": 0, "saturated_fat_100g": 0}	4	E	58	f	2026-07-02 08:42:49.913939+00	2026-07-02 08:42:49.921175+00	\N
6f429a70-9ab4-4538-92ac-5ee954a89786	Zinc Supplement	Zincovit	Supplements	8901234590138	\N	["E460", "E470"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	91	f	2026-07-02 08:42:50.043492+00	2026-07-02 08:42:50.051222+00	\N
18b5011c-9f39-4061-9b41-7d087e05b44c	B-Complex Tablets	Becosules	Supplements	8901234590139	\N	["E460", "E470"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	91	f	2026-07-02 08:42:50.164715+00	2026-07-02 08:42:50.171547+00	\N
cbb55548-9624-4ebe-92cb-2108f76c7839	Glucosamine Joint Support	Jointace	Supplements	8901234590140	\N	["E460", "E470", "E171"]	{"salt_100g": 0, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 0, "saturated_fat_100g": 0}	4	B	76	f	2026-07-02 08:42:50.285284+00	2026-07-02 08:42:50.286838+00	\N
358251bb-17e4-4244-9f15-b81c7f09df42	Frozen Mixed Vegetables	Safal	Frozen Vegetables	8901234590141	\N	[]	{"salt_100g": 0.05, "fiber_100g": 4, "sugars_100g": 3, "proteins_100g": 3, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:50.400976+00	2026-07-02 08:42:50.408253+00	\N
5998dcc0-5987-4d3d-a44d-732c304ed426	Frozen Sweet Corn	Safal	Frozen Vegetables	8901234590142	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3, "sugars_100g": 5, "proteins_100g": 3, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:50.524431+00	2026-07-02 08:42:50.53307+00	\N
bed681b1-9e73-4aec-b380-350978bb68b0	Frozen Green Peas	Safal	Frozen Vegetables	8901234590143	\N	[]	{"salt_100g": 0.01, "fiber_100g": 5.1, "sugars_100g": 5.7, "proteins_100g": 5.4, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:50.654145+00	2026-07-02 08:42:50.661929+00	\N
86e157a9-bb2e-4515-aeaf-2783c6d57a94	Frozen Spinach	Safal	Frozen Vegetables	8901234590144	\N	[]	{"salt_100g": 0.08, "fiber_100g": 2.2, "sugars_100g": 0.4, "proteins_100g": 2.9, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:50.781415+00	2026-07-02 08:42:50.785268+00	\N
ccb75da4-ede9-439b-863e-6f063e4aa96d	Frozen French Beans	Safal	Frozen Vegetables	8901234590145	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.7, "sugars_100g": 3.3, "proteins_100g": 1.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:50.904665+00	2026-07-02 08:42:50.912746+00	\N
a88da5cd-556e-4277-b44a-991f81ebbf00	Frozen Broccoli	Safal	Frozen Vegetables	8901234590146	\N	[]	{"salt_100g": 0.03, "fiber_100g": 2.6, "sugars_100g": 1.7, "proteins_100g": 2.8, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:51.031908+00	2026-07-02 08:42:51.039998+00	\N
03561dd6-88ed-4f1d-a420-ab2833ab7a22	Frozen Cauliflower	Safal	Frozen Vegetables	8901234590147	\N	[]	{"salt_100g": 0.03, "fiber_100g": 2, "sugars_100g": 1.9, "proteins_100g": 1.9, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:51.158943+00	2026-07-02 08:42:51.166895+00	\N
4e758331-74de-4d9c-9bca-60d4b346e6d8	Frozen Carrots	Safal	Frozen Vegetables	8901234590148	\N	[]	{"salt_100g": 0.07, "fiber_100g": 2.8, "sugars_100g": 4.7, "proteins_100g": 0.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:51.285034+00	2026-07-02 08:42:51.292567+00	\N
d8cb879e-55c3-4514-8e24-d503734b38ed	Frozen Okra	Safal	Frozen Vegetables	8901234590149	\N	[]	{"salt_100g": 0.01, "fiber_100g": 3.2, "sugars_100g": 1.5, "proteins_100g": 1.9, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:51.41066+00	2026-07-02 08:42:51.41445+00	\N
edadd413-8b1b-4b13-9a50-1bca3f85e962	Frozen Potato Wedges	McCain	Frozen Vegetables	8901234590150	\N	[]	{"salt_100g": 0.1, "fiber_100g": 2.5, "sugars_100g": 0.5, "proteins_100g": 2.5, "saturated_fat_100g": 0.2}	2	A	100	f	2026-07-02 08:42:51.532874+00	2026-07-02 08:42:51.540437+00	\N
904f9bd6-668d-477f-8cc1-d4d233b49c23	Frozen Sweet Corn Kernels	McCain	Frozen Vegetables	8901234590151	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.5, "sugars_100g": 6, "proteins_100g": 3, "saturated_fat_100g": 0.2}	1	A	100	f	2026-07-02 08:42:51.658871+00	2026-07-02 08:42:51.665662+00	\N
8b1e2378-ac33-48ce-8e08-20ef2baba212	Frozen Bell Peppers Mix	Safal	Frozen Vegetables	8901234590152	\N	[]	{"salt_100g": 0.02, "fiber_100g": 2, "sugars_100g": 4, "proteins_100g": 1, "saturated_fat_100g": 0}	1	A	100	f	2026-07-02 08:42:51.780303+00	2026-07-02 08:42:51.782868+00	\N
fe78969a-0fc7-49cb-9d02-3aef45f02072	Frozen Mushrooms	Safal	Frozen Vegetables	8901234590153	\N	[]	{"salt_100g": 0.01, "fiber_100g": 1, "sugars_100g": 2, "proteins_100g": 3.1, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:51.898401+00	2026-07-02 08:42:51.906514+00	\N
2c7bb1f1-fdb7-4ba0-9236-e953647e3c32	Frozen Baby Corn	Safal	Frozen Vegetables	8901234590154	\N	[]	{"salt_100g": 0.01, "fiber_100g": 2.5, "sugars_100g": 3, "proteins_100g": 2, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:52.026102+00	2026-07-02 08:42:52.034038+00	\N
cd81d535-daf9-408e-8c23-4ee7a7593790	Frozen Vegetable Soup Mix	Safal	Frozen Vegetables	8901234590155	\N	[]	{"salt_100g": 0.3, "fiber_100g": 3, "sugars_100g": 4, "proteins_100g": 3, "saturated_fat_100g": 0.1}	1	A	100	f	2026-07-02 08:42:52.152696+00	2026-07-02 08:42:52.159868+00	\N
63c0f087-b6ba-4410-ae07-e1b32d551c03	Pedigree Dog Food Chicken	Mars	Pet Foods	8901234590156	\N	["E320", "E321", "E621"]	{"salt_100g": 0.8, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 22, "saturated_fat_100g": 5}	3	D	49	f	2026-07-02 08:42:52.281909+00	2026-07-02 08:42:52.28991+00	\N
a05129a1-0204-41dc-b8e1-33cbcab44884	Pedigree Dog Food Puppy	Mars	Pet Foods	8901234590157	\N	["E320", "E321", "E621"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 3, "proteins_100g": 25, "saturated_fat_100g": 6}	3	D	49	f	2026-07-02 08:42:52.412857+00	2026-07-02 08:42:52.420404+00	\N
abb0b9bf-3f12-40f9-b553-580f5c85b263	Whiskas Cat Food Fish	Mars	Pet Foods	8901234590158	\N	["E320", "E321", "E621"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 30, "saturated_fat_100g": 4}	3	C	57	f	2026-07-02 08:42:52.537857+00	2026-07-02 08:42:52.543974+00	\N
34ff15c7-4fb7-494e-bbdb-d5f6e4679f6e	Whiskas Cat Food Chicken	Mars	Pet Foods	8901234590159	\N	["E320", "E321", "E621"]	{"salt_100g": 0.8, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 28, "saturated_fat_100g": 4}	3	C	57	f	2026-07-02 08:42:52.659142+00	2026-07-02 08:42:52.6668+00	\N
dd7cdeff-f23f-4ca5-9e05-6ee5c510f06b	Drools Dog Food Adult	Drools	Pet Foods	8901234590160	\N	["E320", "E321"]	{"salt_100g": 0.7, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 24, "saturated_fat_100g": 4}	3	C	64	f	2026-07-02 08:42:52.784351+00	2026-07-02 08:42:52.7918+00	\N
9e87bedb-2a05-4cc0-9fc2-9b15bec23aa7	Royal Canin Dog Food	Royal Canin	Pet Foods	8901234590161	\N	["E320", "E321", "E471"]	{"salt_100g": 0.6, "fiber_100g": 3, "sugars_100g": 2, "proteins_100g": 26, "saturated_fat_100g": 5}	3	C	59	f	2026-07-02 08:42:52.908526+00	2026-07-02 08:42:52.916454+00	\N
0b29fbb1-a285-4191-83a8-724f3855c889	Royal Canin Cat Food	Royal Canin	Pet Foods	8901234590162	\N	["E320", "E321", "E471"]	{"salt_100g": 0.7, "fiber_100g": 2, "sugars_100g": 2, "proteins_100g": 32, "saturated_fat_100g": 5}	3	D	54	f	2026-07-02 08:42:53.039313+00	2026-07-02 08:42:53.0472+00	\N
866a8456-75a4-4636-b00d-189b26216cde	Local Dog Food Biscuit	Local	Pet Foods	8901234590163	\N	[]	{"salt_100g": 0.5, "fiber_100g": 3, "sugars_100g": 3, "proteins_100g": 15, "saturated_fat_100g": 3}	3	A	100	f	2026-07-02 08:42:53.172604+00	2026-07-02 08:42:53.179962+00	\N
8482ab45-381c-4180-a0f9-bcb7d0d8ae39	Dog Chew Bones	Pedigree	Pet Foods	8901234590164	\N	["E320"]	{"salt_100g": 0.3, "fiber_100g": 1, "sugars_100g": 1, "proteins_100g": 35, "saturated_fat_100g": 2}	3	A	86	f	2026-07-02 08:42:53.299607+00	2026-07-02 08:42:53.306696+00	\N
81b2d314-7197-49d4-94df-48dd3b2ad392	Cat Treats Tuna	Whiskas	Pet Foods	8901234590165	\N	["E320", "E621"]	{"salt_100g": 0.5, "fiber_100g": 1, "sugars_100g": 3, "proteins_100g": 30, "saturated_fat_100g": 3}	3	A	79	f	2026-07-02 08:42:53.41944+00	2026-07-02 08:42:53.425638+00	\N
41b441cf-3352-4a1a-86cb-1d8c7572d7a6	Frozen Chicken Breast	Safal	Frozen Meat	8901234590166	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 23, "saturated_fat_100g": 1}	1	A	100	f	2026-07-02 08:42:53.542548+00	2026-07-02 08:42:53.550144+00	\N
a7126e94-8bcb-4081-a0e4-89566a809494	Frozen Chicken Leg	Safal	Frozen Meat	8901234590167	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 20, "saturated_fat_100g": 3}	1	A	100	f	2026-07-02 08:42:53.669937+00	2026-07-02 08:42:53.677167+00	\N
847fa4b9-3cbc-48ef-a625-f515c88793a9	Frozen Chicken Wings	Safal	Frozen Meat	8901234590168	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 18, "saturated_fat_100g": 5}	1	C	100	f	2026-07-02 08:42:53.798441+00	2026-07-02 08:42:53.805738+00	\N
b979f8c5-b261-44ce-bdca-7cb854f44433	Frozen Mutton Curry Cut	Safal	Frozen Meat	8901234590169	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 21, "saturated_fat_100g": 6}	1	C	100	f	2026-07-02 08:42:53.928192+00	2026-07-02 08:42:53.935376+00	\N
77d2e2d6-041d-45f0-b353-7123acd0496e	Frozen Buff Meat	Local	Frozen Meat	8901234590170	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 22, "saturated_fat_100g": 4}	1	A	100	f	2026-07-02 08:42:54.05521+00	2026-07-02 08:42:54.062451+00	\N
0b9a4017-007b-4743-b05f-3399ab94f4ad	Frozen Pork Belly	Imported	Frozen Meat	8901234590171	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 15, "saturated_fat_100g": 15}	1	D	98	f	2026-07-02 08:42:54.180804+00	2026-07-02 08:42:54.187628+00	\N
c8385e03-9b4e-4e04-868e-8f843568d77b	Frozen Turkey Breast	Imported	Frozen Meat	8901234590172	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 24, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:54.302905+00	2026-07-02 08:42:54.309858+00	\N
447e3d74-a170-40a4-9c6a-b02c926bfd43	Frozen Duck Meat	Local	Frozen Meat	8901234590173	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 19, "saturated_fat_100g": 8}	1	D	98	f	2026-07-02 08:42:54.42828+00	2026-07-02 08:42:54.435807+00	\N
5bef8d4c-4237-4600-837c-a960b6ed8548	Frozen Chicken Seekh Kebab	Venky's	Frozen Meat	8901234590174	\N	["E451", "E452", "E621", "E250"]	{"salt_100g": 2, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 14, "saturated_fat_100g": 5}	4	D	0	t	2026-07-02 08:42:54.554612+00	2026-07-02 08:42:54.562105+00	\N
4cf6c05c-44ef-4098-9695-de5506f8ba19	Frozen Chicken Burger Patty	Venky's	Frozen Meat	8901234590175	\N	["E451", "E452", "E621"]	{"salt_100g": 1.8, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 12, "saturated_fat_100g": 5}	4	D	57	f	2026-07-02 08:42:54.683305+00	2026-07-02 08:42:54.691089+00	\N
52f76b07-f1ee-4fd1-88bb-dede96b7b27c	Frozen Mutton Kebab	Local	Frozen Meat	8901234590176	\N	[]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 1, "proteins_100g": 18, "saturated_fat_100g": 8}	2	D	88	f	2026-07-02 08:42:54.8139+00	2026-07-02 08:42:54.821399+00	\N
0ff426d4-ab6e-429a-ad21-a0d9343ddcba	Frozen Meat Balls	Imported	Frozen Meat	8901234590177	\N	["E451", "E452", "E621"]	{"salt_100g": 1.5, "fiber_100g": 0.5, "sugars_100g": 2, "proteins_100g": 13, "saturated_fat_100g": 6}	4	D	57	f	2026-07-02 08:42:54.936999+00	2026-07-02 08:42:54.944093+00	\N
72454402-8522-4304-ad47-da747181f85d	Frozen Chicken Lollipop	Venky's	Frozen Meat	8901234590178	\N	["E451", "E452", "E621"]	{"salt_100g": 1.5, "fiber_100g": 0.3, "sugars_100g": 1, "proteins_100g": 15, "saturated_fat_100g": 4}	3	D	65	f	2026-07-02 08:42:55.062277+00	2026-07-02 08:42:55.07007+00	\N
e2c8d2a8-3f64-4afc-9ae3-8ecb2e62e951	Frozen Fish Fillet Basa	Imported	Frozen Meat	8901234590179	\N	[]	{"salt_100g": 0.1, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 15, "saturated_fat_100g": 0.5}	1	A	100	f	2026-07-02 08:42:55.193049+00	2026-07-02 08:42:55.200892+00	\N
10c9e2b2-c87d-4b01-9d43-eac85328cb01	Frozen Prawns	Safal	Frozen Meat	8901234590180	\N	[]	{"salt_100g": 0.5, "fiber_100g": 0, "sugars_100g": 0, "proteins_100g": 20, "saturated_fat_100g": 0.3}	1	A	100	f	2026-07-02 08:42:55.315805+00	2026-07-02 08:42:55.322728+00	\N
\.


--
-- Data for Name: flagged_ingredients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flagged_ingredients (id, product_id, ingredient_name, e_number, risk_tier, penalty) FROM stdin;
5	29ced7d5-6229-4df4-bb4d-48dc60b3fa40	Tartrazine	E102	high	15
6	29ced7d5-6229-4df4-bb4d-48dc60b3fa40	Monosodium Glutamate	E621	medium	7
7	b8745d2a-9b99-4ddd-84aa-7bb20bf55746	Tartrazine	E102	high	15
8	b8745d2a-9b99-4ddd-84aa-7bb20bf55746	Monosodium Glutamate	E621	medium	7
9	b8745d2a-9b99-4ddd-84aa-7bb20bf55746	Potassium Carbonates	E501	low	2
10	30e0d4fc-347c-4b44-a5c4-2aa5a8825997	Monosodium Glutamate	E621	medium	7
11	30e0d4fc-347c-4b44-a5c4-2aa5a8825997	Potassium Carbonates	E501	low	2
12	c8908d33-4f71-4fc2-be5b-f67b732916b9	Tartrazine	E102	high	15
13	c8908d33-4f71-4fc2-be5b-f67b732916b9	Sunset Yellow	E110	high	15
14	c8908d33-4f71-4fc2-be5b-f67b732916b9	Monosodium Glutamate	E621	medium	7
15	88e1e5d5-a5c5-4c91-9a48-c9b1f16b4772	Monosodium Glutamate	E621	medium	7
16	88e1e5d5-a5c5-4c91-9a48-c9b1f16b4772	Potassium Carbonates	E501	low	2
17	7aca1065-5504-4bfb-8f88-6274ebd30ede	Monosodium Glutamate	E621	medium	7
18	11f7ea7c-039f-407f-9ec6-d4db82c6e662	Monosodium Glutamate	E621	medium	7
19	11f7ea7c-039f-407f-9ec6-d4db82c6e662	Potassium Carbonates	E501	low	2
20	8a0156eb-d1a6-404c-86c3-543bafbca793	Monosodium Glutamate	E621	medium	7
21	de217d48-5567-453c-a317-9a5c5c5f66ce	Monosodium Glutamate	E621	medium	7
22	de217d48-5567-453c-a317-9a5c5c5f66ce	Disodium Guanylate	E627	medium	7
23	de217d48-5567-453c-a317-9a5c5c5f66ce	Disodium Inosinate	E631	medium	7
24	f1882699-0c1f-41ee-b0bb-6e1d79ec385f	Tartrazine	E102	high	15
25	f1882699-0c1f-41ee-b0bb-6e1d79ec385f	Monosodium Glutamate	E621	medium	7
26	c54ac431-c9e5-490c-8667-ac93186fb713	Monosodium Glutamate	E621	medium	7
27	c54ac431-c9e5-490c-8667-ac93186fb713	Potassium Carbonates	E501	low	2
28	83cfb5e1-df1d-4962-a2b7-241e999b11f1	Monosodium Glutamate	E621	medium	7
29	7aac7d56-7293-4cf8-826d-a33ec7f1de4f	Sunset Yellow	E110	high	15
30	7aac7d56-7293-4cf8-826d-a33ec7f1de4f	Monosodium Glutamate	E621	medium	7
31	a950db18-aa01-4cf3-9222-b90287b5dac8	Monosodium Glutamate	E621	medium	7
32	a950db18-aa01-4cf3-9222-b90287b5dac8	Disodium Guanylate	E627	medium	7
33	a950db18-aa01-4cf3-9222-b90287b5dac8	Disodium Inosinate	E631	medium	7
34	528caf7e-7537-4bc9-ab8a-92c3fcf84642	Tartrazine	E102	high	15
35	528caf7e-7537-4bc9-ab8a-92c3fcf84642	Monosodium Glutamate	E621	medium	7
36	76b7b4db-0882-4859-8759-40beb6b8f28c	Potassium Carbonates	E501	low	2
37	b97be944-3ef6-4d4c-bad9-f377621a5be7	Acesulfame K	E950	medium	7
38	b97be944-3ef6-4d4c-bad9-f377621a5be7	Aspartame	E951	medium	7
39	b97be944-3ef6-4d4c-bad9-f377621a5be7	Sulfite Ammonia Caramel	E150D	medium	7
40	b97be944-3ef6-4d4c-bad9-f377621a5be7	Phosphoric Acid	E338	medium	7
41	7237a6c8-96bb-46e7-b6a7-58c19feb52ba	Citric Acid	E330	low	2
42	98247ed6-6f52-4c51-96e0-e77880c8eb00	Sunset Yellow	E110	high	15
43	98247ed6-6f52-4c51-96e0-e77880c8eb00	Allura Red	E129	high	15
44	8a8b4601-55f1-4b80-840b-61254d455afd	Aspartame	E951	medium	7
45	8a8b4601-55f1-4b80-840b-61254d455afd	Sulfite Ammonia Caramel	E150D	medium	7
46	8a8b4601-55f1-4b80-840b-61254d455afd	Phosphoric Acid	E338	medium	7
47	98e59dad-10f9-45f1-965f-3c19a6142817	Tartrazine	E102	high	15
48	98e59dad-10f9-45f1-965f-3c19a6142817	Phosphoric Acid	E338	medium	7
49	3da78728-38a4-45a6-8ba2-04cbed4df354	Citric Acid	E330	low	2
50	e7ab417d-36e1-4316-845a-6cc40189b2c2	Potassium Sorbate	E202	low	2
51	e7ab417d-36e1-4316-845a-6cc40189b2c2	Ascorbic Acid Vitamin C	E300	low	2
52	a2660452-c170-48ea-9a84-6ed6a050faa9	Potassium Sorbate	E202	low	2
53	a2660452-c170-48ea-9a84-6ed6a050faa9	Ascorbic Acid Vitamin C	E300	low	2
54	11aea383-5b61-4899-afc0-500159a43add	Potassium Sorbate	E202	low	2
55	11aea383-5b61-4899-afc0-500159a43add	Ascorbic Acid Vitamin C	E300	low	2
56	2c2e9f21-4d19-40a6-b3b5-961f02017d7a	Potassium Sorbate	E202	low	2
57	2c2e9f21-4d19-40a6-b3b5-961f02017d7a	Ascorbic Acid Vitamin C	E300	low	2
58	e3233dbf-4158-41f4-b5c1-8bbcbe0938e5	Potassium Sorbate	E202	low	2
59	e3233dbf-4158-41f4-b5c1-8bbcbe0938e5	Citric Acid	E330	low	2
60	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Tartrazine	E102	high	15
61	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Sunset Yellow	E110	high	15
62	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Acesulfame K	E950	medium	7
63	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Aspartame	E951	medium	7
64	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	Phosphoric Acid	E338	medium	7
65	8b8fa440-25f2-4fee-a7aa-b035f25c0b47	Ascorbic Acid Vitamin C	E300	low	2
66	8b8fa440-25f2-4fee-a7aa-b035f25c0b47	Citric Acid	E330	low	2
67	868be5bf-53c6-4e2e-9c27-152fd9dd4873	Indigotine	E132	high	15
68	868be5bf-53c6-4e2e-9c27-152fd9dd4873	Citric Acid	E330	low	2
69	10cd85ae-ecf8-4d5e-af3a-09414978a7d1	Potassium Sorbate	E202	low	2
70	10cd85ae-ecf8-4d5e-af3a-09414978a7d1	Citric Acid	E330	low	2
71	3a3dd6d9-ab01-4366-b6a7-5f5e6cdbc500	Potassium Sorbate	E202	low	2
72	3a3dd6d9-ab01-4366-b6a7-5f5e6cdbc500	Citric Acid	E330	low	2
73	0c6fa9e8-0a37-4051-81c6-f2ea7639fac3	Sodium Phosphates	E339	medium	7
74	0c6fa9e8-0a37-4051-81c6-f2ea7639fac3	Polyphosphates	E452	medium	7
75	dc20f1b9-ca02-4933-a099-79a933065959	Tocopherol Vitamin E	E306	low	2
76	6ecd8c34-e3c0-4d76-a0cd-448a01b4f506	Citric Acid	E330	low	2
77	6f15eb4b-a7f1-487b-a639-40eb9ded70d9	Lecithins	E322	low	2
78	6f15eb4b-a7f1-487b-a639-40eb9ded70d9	Polyglycerol Polyricinoleate	E476	low	2
79	6f15eb4b-a7f1-487b-a639-40eb9ded70d9	Sodium Carbonates	E500	low	2
80	0aae908a-fb68-4814-abd2-0dbf266d4aa9	Lecithins	E322	low	2
81	0aae908a-fb68-4814-abd2-0dbf266d4aa9	Polyglycerol Polyricinoleate	E476	low	2
82	0aae908a-fb68-4814-abd2-0dbf266d4aa9	Sodium Carbonates	E500	low	2
83	b4deeab4-bb72-4dde-b3fe-8cca2684376b	Ammonium Carbonates	E503	low	2
84	1ca690c3-89fa-432e-8b75-96404d456a33	Lecithins	E322	low	2
85	1ca690c3-89fa-432e-8b75-96404d456a33	Ammonium Carbonates	E503	low	2
86	fbae416e-96ad-47e4-a068-954530d194d5	Lecithins	E322	low	2
87	fbae416e-96ad-47e4-a068-954530d194d5	Polyglycerol Polyricinoleate	E476	low	2
88	b427de3b-5fa4-46b4-af92-f528730451ae	Lecithins	E322	low	2
89	b427de3b-5fa4-46b4-af92-f528730451ae	Ammonium Carbonates	E503	low	2
90	d220336d-8a80-4747-8eb4-490b9ede7470	Ammonium Carbonates	E503	low	2
91	2d67948e-8bcb-4d37-8489-92b0b1e5a34f	Lecithins	E322	low	2
92	2d67948e-8bcb-4d37-8489-92b0b1e5a34f	Polyglycerol Polyricinoleate	E476	low	2
93	2d67948e-8bcb-4d37-8489-92b0b1e5a34f	Ammonium Carbonates	E503	low	2
94	e084db98-b176-4f8c-85ff-9acdc172e1f8	Ammonium Carbonates	E503	low	2
95	def06114-32e6-4f53-9a40-807a88175478	Lecithins	E322	low	2
96	def06114-32e6-4f53-9a40-807a88175478	Ammonium Carbonates	E503	low	2
97	2acb8ad8-71fe-4af4-bb90-5b5ab5f5344e	Monosodium Glutamate	E621	medium	7
98	2acb8ad8-71fe-4af4-bb90-5b5ab5f5344e	Disodium Guanylate	E627	medium	7
99	2acb8ad8-71fe-4af4-bb90-5b5ab5f5344e	Disodium Inosinate	E631	medium	7
100	9e604c81-cb6d-4394-a090-99cae0e3e1d0	Monosodium Glutamate	E621	medium	7
101	9e604c81-cb6d-4394-a090-99cae0e3e1d0	Disodium Guanylate	E627	medium	7
102	9e604c81-cb6d-4394-a090-99cae0e3e1d0	Disodium Inosinate	E631	medium	7
103	9e604c81-cb6d-4394-a090-99cae0e3e1d0	Beta-Carotene	E160A	low	2
104	837cc3bb-65d8-4e2d-bd61-9ff4f2cb2dd1	Monosodium Glutamate	E621	medium	7
105	782ae9e2-c653-46e0-a81c-90cd8d1add08	Monosodium Glutamate	E621	medium	7
106	782ae9e2-c653-46e0-a81c-90cd8d1add08	Disodium Guanylate	E627	medium	7
107	782ae9e2-c653-46e0-a81c-90cd8d1add08	Disodium Inosinate	E631	medium	7
108	782ae9e2-c653-46e0-a81c-90cd8d1add08	Paprika Extract	E160C	low	2
109	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Tartrazine	E102	high	15
110	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Sunset Yellow	E110	high	15
111	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Monosodium Glutamate	E621	medium	7
112	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Disodium Guanylate	E627	medium	7
113	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	Disodium Inosinate	E631	medium	7
114	a109051a-cd9f-44a4-9dcd-38cef6a1c3e2	Monosodium Glutamate	E621	medium	7
115	a109051a-cd9f-44a4-9dcd-38cef6a1c3e2	Disodium Ribonucleotides	E635	medium	7
116	a109051a-cd9f-44a4-9dcd-38cef6a1c3e2	Beta-Carotene	E160A	low	2
117	ebc51a53-e6d2-434f-826e-b49c7235d39b	Monosodium Glutamate	E621	medium	7
118	ebc51a53-e6d2-434f-826e-b49c7235d39b	Paprika Extract	E160C	low	2
119	5f9633c8-edd4-4c16-a7bd-67c1b4ec2d08	Lecithins	E322	low	2
120	5f9633c8-edd4-4c16-a7bd-67c1b4ec2d08	Polyglycerol Polyricinoleate	E476	low	2
121	ea5f1802-7015-4b3a-a8e3-3ea16d07bd27	Lecithins	E322	low	2
122	ea5f1802-7015-4b3a-a8e3-3ea16d07bd27	Polyglycerol Polyricinoleate	E476	low	2
123	7b0d94bd-3f0f-4b67-a6a0-52590e7fe615	Lecithins	E322	low	2
124	7b0d94bd-3f0f-4b67-a6a0-52590e7fe615	Polyglycerol Polyricinoleate	E476	low	2
125	bc8b4f57-4b5d-4874-ac68-79ffb61f4465	Lecithins	E322	low	2
126	bc8b4f57-4b5d-4874-ac68-79ffb61f4465	Mono and Diglycerides of Fatty Acids	E471	low	2
127	5c896f21-076f-438c-8eae-91f5499eee0c	Lecithins	E322	low	2
128	5c896f21-076f-438c-8eae-91f5499eee0c	Polyglycerol Polyricinoleate	E476	low	2
129	f6228d5c-3896-4f06-95dc-5f1162692b88	Lecithins	E322	low	2
130	f6228d5c-3896-4f06-95dc-5f1162692b88	Mono and Diglycerides of Fatty Acids	E471	low	2
131	72165aca-8c84-4afb-b54c-44c121e046ea	Lecithins	E322	low	2
132	22cda7e9-390c-4a38-bc4d-9c8679a3ce1e	Tocopherol Vitamin E	E306	low	2
133	07a869fd-8f64-4568-975d-c18bdab9368c	Citric Acid	E330	low	2
134	ca2dfa92-b7a3-4699-a91d-282439f916c2	Monosodium Glutamate	E621	medium	7
135	ca2dfa92-b7a3-4699-a91d-282439f916c2	Disodium Guanylate	E627	medium	7
136	ca2dfa92-b7a3-4699-a91d-282439f916c2	Disodium Inosinate	E631	medium	7
137	ca2dfa92-b7a3-4699-a91d-282439f916c2	Citric Acid	E330	low	2
138	7c913e74-b472-45a7-b9b5-6633f3f1e7e5	Tartrazine	E102	high	15
139	7c913e74-b472-45a7-b9b5-6633f3f1e7e5	Monosodium Glutamate	E621	medium	7
140	7c913e74-b472-45a7-b9b5-6633f3f1e7e5	Disodium Guanylate	E627	medium	7
141	6d59b34c-6b80-4174-a13a-84ddc97782da	Monosodium Glutamate	E621	medium	7
142	6d59b34c-6b80-4174-a13a-84ddc97782da	Sulfite Ammonia Caramel	E150D	medium	7
143	6d59b34c-6b80-4174-a13a-84ddc97782da	Disodium Guanylate	E627	medium	7
144	6d59b34c-6b80-4174-a13a-84ddc97782da	Disodium Inosinate	E631	medium	7
145	4ace2e61-b0a8-449f-8d17-1027bfe9b7be	Monosodium Glutamate	E621	medium	7
146	4ace2e61-b0a8-449f-8d17-1027bfe9b7be	Sulfite Ammonia Caramel	E150D	medium	7
147	4ace2e61-b0a8-449f-8d17-1027bfe9b7be	Citric Acid	E330	low	2
148	c4820084-a58b-4457-a7f3-966da8e54589	Lecithins	E322	low	2
149	c4820084-a58b-4457-a7f3-966da8e54589	Mono and Diglycerides of Fatty Acids	E471	low	2
150	828cfca5-521e-4a9f-922c-1a75f5a2dbc2	Lecithins	E322	low	2
151	828cfca5-521e-4a9f-922c-1a75f5a2dbc2	Mono and Diglycerides of Fatty Acids	E471	low	2
152	828cfca5-521e-4a9f-922c-1a75f5a2dbc2	Xanthan Gum	E415	low	2
153	07df5678-ddcd-4429-9328-12e1a9d7bd20	Lecithins	E322	low	2
154	07df5678-ddcd-4429-9328-12e1a9d7bd20	Mono and Diglycerides of Fatty Acids	E471	low	2
155	5b64b1d0-30e7-416a-ab20-8f9d4427cbf6	Lecithins	E322	low	2
156	5b64b1d0-30e7-416a-ab20-8f9d4427cbf6	Mono and Diglycerides of Fatty Acids	E471	low	2
157	5b64b1d0-30e7-416a-ab20-8f9d4427cbf6	Citric Acid	E330	low	2
158	66654607-1f40-4148-bf10-ccee08a4e498	Potassium Sorbate	E202	low	2
159	c5735fb5-5e76-4fc2-93b6-56636d574fbd	Ascorbic Acid Vitamin C	E300	low	2
160	c5735fb5-5e76-4fc2-93b6-56636d574fbd	Citric Acid	E330	low	2
161	1dd36b4d-edd7-4e4d-9331-73469a92d1bf	Lecithins	E322	low	2
162	1dd36b4d-edd7-4e4d-9331-73469a92d1bf	Citric Acid	E330	low	2
163	6ba27efd-d717-4003-9834-e81f7fa248a4	Lecithins	E322	low	2
164	6ba27efd-d717-4003-9834-e81f7fa248a4	Citric Acid	E330	low	2
165	c11ed91b-ee4c-4588-9295-f7674d973920	Sodium Benzoate	E211	medium	7
166	c11ed91b-ee4c-4588-9295-f7674d973920	Paprika Extract	E160C	low	2
167	c11ed91b-ee4c-4588-9295-f7674d973920	Citric Acid	E330	low	2
168	b1fac4c9-249c-49e4-9da1-0e4465d6dad1	Paprika Extract	E160C	low	2
169	b1fac4c9-249c-49e4-9da1-0e4465d6dad1	Citric Acid	E330	low	2
170	050a4d93-3a06-4761-b9b6-fe214a82804e	Potassium Sorbate	E202	low	2
171	050a4d93-3a06-4761-b9b6-fe214a82804e	Citric Acid	E330	low	2
172	050a4d93-3a06-4761-b9b6-fe214a82804e	Pectins	E440	low	2
173	3d4f5922-de6f-4af7-8371-ee499f62ab3c	Tartrazine	E102	high	15
174	3d4f5922-de6f-4af7-8371-ee499f62ab3c	Sodium Benzoate	E211	medium	7
175	3d4f5922-de6f-4af7-8371-ee499f62ab3c	Paprika Extract	E160C	low	2
176	3d4f5922-de6f-4af7-8371-ee499f62ab3c	Citric Acid	E330	low	2
177	2a02fe47-1d3a-417b-b6fd-ab4e066763ec	Sodium Benzoate	E211	medium	7
178	2a02fe47-1d3a-417b-b6fd-ab4e066763ec	Citric Acid	E330	low	2
179	559bd87b-452b-4c93-8497-9dde13c7a4ef	Calcium Propionate	E282	medium	7
180	559bd87b-452b-4c93-8497-9dde13c7a4ef	Ascorbic Acid Vitamin C	E300	low	2
181	559bd87b-452b-4c93-8497-9dde13c7a4ef	Lecithins	E322	low	2
182	559bd87b-452b-4c93-8497-9dde13c7a4ef	Mono and Diglycerides of Fatty Acids	E471	low	2
183	1e2c62d9-0b97-4d61-8633-87e595712c25	Calcium Propionate	E282	medium	7
184	1e2c62d9-0b97-4d61-8633-87e595712c25	Mono and Diglycerides of Fatty Acids	E471	low	2
185	89b8e3d5-3942-406a-b503-596a8d550025	Ascorbic Acid Vitamin C	E300	low	2
186	ba036528-1e11-40fe-9dd7-f73a16267ed5	Tocopherol Vitamin E	E306	low	2
187	4bef7dae-3de4-4dc1-899b-fa499e263d92	Lecithins	E322	low	2
188	cfb1b60f-eafe-4e3f-8e6b-fce0f411b236	Ascorbic Acid Vitamin C	E300	low	2
189	f6dbbbb1-dd90-45aa-bbc7-4383729fee98	Potassium Sorbate	E202	low	2
190	f6dbbbb1-dd90-45aa-bbc7-4383729fee98	Ascorbic Acid Vitamin C	E300	low	2
191	82ec6dca-c289-4fc8-a376-6942d27ed7c4	Tocopherol Vitamin E	E306	low	2
192	ae8046fb-18d2-4a6d-aec5-dc933fe149fc	Monosodium Glutamate	E621	medium	7
193	ae8046fb-18d2-4a6d-aec5-dc933fe149fc	Potassium Carbonates	E501	low	2
194	09737bac-1db4-4042-b064-2e070c3f92df	Monosodium Glutamate	E621	medium	7
195	6ad20bd4-d72a-49bb-a730-8c61f814461c	Sulfite Ammonia Caramel	E150D	medium	7
196	6ad20bd4-d72a-49bb-a730-8c61f814461c	Phosphoric Acid	E338	medium	7
197	b9347ad5-f3fa-405f-b716-e396523b3148	Sulfite Ammonia Caramel	E150D	medium	7
198	b9347ad5-f3fa-405f-b716-e396523b3148	Phosphoric Acid	E338	medium	7
199	e0cf5436-3537-4b24-a535-4cc60925e1b8	Tartrazine	E102	high	15
200	e0cf5436-3537-4b24-a535-4cc60925e1b8	Citric Acid	E330	low	2
201	16110c8e-120a-4b96-be66-35f2615743df	Paprika Extract	E160C	low	2
202	16110c8e-120a-4b96-be66-35f2615743df	Citric Acid	E330	low	2
203	28f658ed-6b28-4199-a571-910423efbf57	Tartrazine	E102	high	15
204	28f658ed-6b28-4199-a571-910423efbf57	Sunset Yellow	E110	high	15
205	28f658ed-6b28-4199-a571-910423efbf57	Citric Acid	E330	low	2
206	88f106a2-3932-4b23-8157-16bf9fa0cc10	Lecithins	E322	low	2
207	88f106a2-3932-4b23-8157-16bf9fa0cc10	Mono and Diglycerides of Fatty Acids	E471	low	2
208	b6ba4b00-8c7c-43af-9426-0c1c774b356f	Monosodium Glutamate	E621	medium	7
209	b6ba4b00-8c7c-43af-9426-0c1c774b356f	Diphosphates	E450	medium	7
210	b6ba4b00-8c7c-43af-9426-0c1c774b356f	Citric Acid	E330	low	2
211	0cd2a7f1-88ba-4b8d-a6a8-4056d9c37c2f	Monosodium Glutamate	E621	medium	7
212	dcd81afd-996d-4250-85c2-fa5be43a3ece	Monosodium Glutamate	E621	medium	7
213	48021e7c-0eed-4d3e-b85c-ea4dba525465	Monosodium Glutamate	E621	medium	7
214	b13f26f1-b5bb-491c-8af4-a83ca94a7c3c	Monosodium Glutamate	E621	medium	7
215	b13f26f1-b5bb-491c-8af4-a83ca94a7c3c	Potassium Carbonates	E501	low	2
216	f7eea792-7008-4cf7-964d-3937ed7cd634	Monosodium Glutamate	E621	medium	7
217	f7eea792-7008-4cf7-964d-3937ed7cd634	Disodium Guanylate	E627	medium	7
218	f7eea792-7008-4cf7-964d-3937ed7cd634	Disodium Inosinate	E631	medium	7
219	59a2f4f3-b096-466e-af62-2b73006c59ad	Monosodium Glutamate	E621	medium	7
220	59a2f4f3-b096-466e-af62-2b73006c59ad	Disodium Guanylate	E627	medium	7
221	196fe87a-b9cf-4cde-918e-e57e2262d433	Monosodium Glutamate	E621	medium	7
222	196fe87a-b9cf-4cde-918e-e57e2262d433	Potassium Carbonates	E501	low	2
223	e8ea367a-6f80-41aa-bc43-6ba73665d462	Monosodium Glutamate	E621	medium	7
224	e8ea367a-6f80-41aa-bc43-6ba73665d462	Disodium Guanylate	E627	medium	7
225	a5604b96-7bd9-4f6f-a2c1-030a8a086729	Sunset Yellow	E110	high	15
226	bb5ce0a0-b859-4b19-9b66-0eb8b719159e	Tartrazine	E102	high	15
227	b3614db4-31ce-4b1f-b5ff-a0fe8e4e2be9	Sulfite Ammonia Caramel	E150D	medium	7
228	b3614db4-31ce-4b1f-b5ff-a0fe8e4e2be9	Citric Acid	E330	low	2
229	ca45e81d-d8b9-45b6-9c21-ededce0796b4	Sulfite Ammonia Caramel	E150D	medium	7
230	ca45e81d-d8b9-45b6-9c21-ededce0796b4	Citric Acid	E330	low	2
231	cddb21b3-739e-4e2c-be70-032d9109eaf8	Tartrazine	E102	high	15
232	cddb21b3-739e-4e2c-be70-032d9109eaf8	Citric Acid	E330	low	2
233	69ecd505-0e6c-41e2-9f3e-2bcb782c57a0	Tartrazine	E102	high	15
234	eba144f9-5f91-4d0e-b2d9-a22db3823584	Lecithins	E322	low	2
235	7fae53ae-333c-4546-b345-52a198492014	Sodium Citrates	E331	low	2
236	c89a9470-9981-4f5b-9c77-d6310829652d	Sodium Citrates	E331	low	2
237	8d74fae0-a49d-4c08-968b-8767ba0dd71d	Monosodium Glutamate	E621	medium	7
238	8d74fae0-a49d-4c08-968b-8767ba0dd71d	Disodium Guanylate	E627	medium	7
239	d7185766-4cfb-450e-80e6-b723d9dd0f0c	Monosodium Glutamate	E621	medium	7
240	d7185766-4cfb-450e-80e6-b723d9dd0f0c	Disodium Guanylate	E627	medium	7
241	d7185766-4cfb-450e-80e6-b723d9dd0f0c	Disodium Inosinate	E631	medium	7
242	0bd87317-09d5-4e03-a7ed-89041e3177c7	Tartrazine	E102	high	15
243	0bd87317-09d5-4e03-a7ed-89041e3177c7	Sunset Yellow	E110	high	15
244	0bd87317-09d5-4e03-a7ed-89041e3177c7	Monosodium Glutamate	E621	medium	7
245	711b9359-dade-4c63-a9cb-31990dad39cd	Allura Red	E129	high	15
246	711b9359-dade-4c63-a9cb-31990dad39cd	Monosodium Glutamate	E621	medium	7
247	a8b8d023-6c15-465e-84d1-c6ea565748c1	Monosodium Glutamate	E621	medium	7
248	d8f8495b-1ef2-4770-871a-66f24dc43fe0	Monosodium Glutamate	E621	medium	7
249	d8f8495b-1ef2-4770-871a-66f24dc43fe0	Mono and Diglycerides of Fatty Acids	E471	low	2
250	30079409-cb2c-4581-aeea-521c38fb47b2	Tartrazine	E102	high	15
251	30079409-cb2c-4581-aeea-521c38fb47b2	Monosodium Glutamate	E621	medium	7
252	e104d706-a920-4569-889b-f10d7130a61e	Sunset Yellow	E110	high	15
253	e104d706-a920-4569-889b-f10d7130a61e	Monosodium Glutamate	E621	medium	7
254	5408272f-e279-4978-adb7-116c469e11d5	Monosodium Glutamate	E621	medium	7
255	5408272f-e279-4978-adb7-116c469e11d5	Disodium Guanylate	E627	medium	7
256	5945762c-b46e-43bb-8f0b-d7d7fd25836b	Monosodium Glutamate	E621	medium	7
257	bf4b4ae0-0444-44bb-8741-9649eaa002a7	Lecithins	E322	low	2
258	bf4b4ae0-0444-44bb-8741-9649eaa002a7	Polyglycerol Polyricinoleate	E476	low	2
259	56b33d5e-6588-49a6-b847-17967b7f88c5	Lecithins	E322	low	2
260	f2cc5bc0-e450-487f-83c9-947bcf17a22c	Lecithins	E322	low	2
261	f2cc5bc0-e450-487f-83c9-947bcf17a22c	Polyglycerol Polyricinoleate	E476	low	2
262	8f8862fd-0cea-4081-b351-0d061dd576c9	Lecithins	E322	low	2
263	c45bafbe-e167-475a-92d5-930c7ad9b9ba	Lecithins	E322	low	2
264	967f3c8e-54b5-4d19-86dc-7803f714b7d1	Lecithins	E322	low	2
265	0812499b-42e1-422e-b24b-e4ccb72fca2d	Lecithins	E322	low	2
266	8c6779c2-b82f-404b-9387-1475eac99313	Lecithins	E322	low	2
267	8c6779c2-b82f-404b-9387-1475eac99313	Polyglycerol Polyricinoleate	E476	low	2
268	27b3b5ea-fca4-4a70-b110-b882755fbd6e	Allura Red	E129	high	15
269	ad86f8c5-e9c1-479c-af7c-313c482ad139	Tartrazine	E102	high	15
270	ad86f8c5-e9c1-479c-af7c-313c482ad139	Sunset Yellow	E110	high	15
271	b4244120-1d5a-4534-9c60-da5f36ef7ee9	Sunset Yellow	E110	high	15
272	b4244120-1d5a-4534-9c60-da5f36ef7ee9	Citric Acid	E330	low	2
273	dba9838f-cd5d-4716-999f-bb7917e38ae1	Citric Acid	E330	low	2
274	e12197e9-3bab-4173-b6cb-d519e6fa422a	Lecithins	E322	low	2
275	59fdcf87-fc00-456a-81f9-07d95d063a73	Tartrazine	E102	high	15
276	4d8ed6aa-8321-4617-a82e-30fe0566c1f4	Lecithins	E322	low	2
277	4d8ed6aa-8321-4617-a82e-30fe0566c1f4	Polyglycerol Polyricinoleate	E476	low	2
278	44a25c78-4655-4adc-9ccf-3f62cf877dde	Lecithins	E322	low	2
279	646e8597-d4ad-4feb-ba67-3f831a5afe58	Lecithins	E322	low	2
280	646e8597-d4ad-4feb-ba67-3f831a5afe58	Polyglycerol Polyricinoleate	E476	low	2
281	b1370922-5d96-4009-82a2-23e9bcac3a41	Lecithins	E322	low	2
282	c83192a5-8fa5-42c1-9980-56767fd0fb62	Lecithins	E322	low	2
283	6d273774-54fe-4ab9-af6a-0c31a6ab729c	Lecithins	E322	low	2
284	eb707302-2192-45d5-988c-511a1e2e15ae	Lecithins	E322	low	2
285	1fd9f1a0-1909-4694-a8ad-0f0154c47da9	Lecithins	E322	low	2
286	1fd9f1a0-1909-4694-a8ad-0f0154c47da9	Polyglycerol Polyricinoleate	E476	low	2
287	8368af0b-02ae-45ee-aae6-f43fc1571b94	Allura Red	E129	high	15
288	c6c226d8-1b9f-4bac-9e4e-e168198eb098	Lecithins	E322	low	2
289	27cb9dbb-4faa-4379-ab56-238b82913a48	Lecithins	E322	low	2
290	ee1eb2ab-9a0f-4827-aed5-e6ab6e093f90	Tartrazine	E102	high	15
291	ee1eb2ab-9a0f-4827-aed5-e6ab6e093f90	Sunset Yellow	E110	high	15
292	ee1eb2ab-9a0f-4827-aed5-e6ab6e093f90	Allura Red	E129	high	15
293	88d132b6-1e22-4683-abe9-1add3aab947f	Tartrazine	E102	high	15
294	88d132b6-1e22-4683-abe9-1add3aab947f	Allura Red	E129	high	15
295	d0f96eeb-59bc-4ccd-86c2-7ed6f9f6b06d	Sodium Carbonates	E500	low	2
296	f4322105-e7e5-4739-a98d-a82b62168f88	Acetic Acid	E260	low	2
297	d0de6fde-1fdc-4d90-a15f-3df4fe394d66	Acetic Acid	E260	low	2
298	59f06ce3-e72f-490c-bd40-bfe271deb17b	Sulfite Ammonia Caramel	E150D	medium	7
299	ea9b0bc5-2a78-46d6-87f7-92776808cf64	Acetic Acid	E260	low	2
300	f247cfdc-b506-4653-b9f4-5f925f968353	Acetic Acid	E260	low	2
301	f247cfdc-b506-4653-b9f4-5f925f968353	Xanthan Gum	E415	low	2
302	efaadeab-ac8d-4400-a2f2-630bcfb21bc8	Sodium Benzoate	E211	medium	7
303	efaadeab-ac8d-4400-a2f2-630bcfb21bc8	Acetic Acid	E260	low	2
304	ac4f855a-b384-47df-893f-faebf91821fe	Sodium Benzoate	E211	medium	7
305	ac4f855a-b384-47df-893f-faebf91821fe	Acetic Acid	E260	low	2
306	f3e8b0ed-4a8d-4724-ae51-298a9330fa58	Sodium Benzoate	E211	medium	7
307	f3e8b0ed-4a8d-4724-ae51-298a9330fa58	Acetic Acid	E260	low	2
308	5108669d-ea17-4c63-96cd-2c4b69a1e436	Sodium Benzoate	E211	medium	7
309	5108669d-ea17-4c63-96cd-2c4b69a1e436	Acetic Acid	E260	low	2
310	7591f1e6-a6b2-41bf-81c7-ccd10568f56b	Pectins	E440	low	2
311	fd5c5aaf-d712-4248-b1c7-b677ae7119d8	Acetic Acid	E260	low	2
312	fd5c5aaf-d712-4248-b1c7-b677ae7119d8	Xanthan Gum	E415	low	2
313	02cceb52-9afc-4fdc-a8b9-0059b3485acb	Acetic Acid	E260	low	2
314	d1194f51-87c4-44aa-b53a-5a94c60bdc32	Monosodium Glutamate	E621	medium	7
315	b9f593cb-387f-4d21-b88e-c5808facc044	Monosodium Glutamate	E621	medium	7
316	b9f593cb-387f-4d21-b88e-c5808facc044	Potassium Carbonates	E501	low	2
317	76a602a9-2b7e-4a9b-b5d2-b8b61b8fddec	Sodium Nitrite	E250	harmful	100
318	147c19bf-0b94-476e-8662-198ab1cd7404	Sodium Citrates	E331	low	2
319	5955c06d-0e1b-4593-9397-552f2383ab79	Calcium Propionate	E282	medium	7
320	5c8bba2d-53e0-41a5-8eb9-0ecb2602812b	Calcium Propionate	E282	medium	7
321	0cb844c2-7980-4724-ba3c-cadd042143b6	Sodium Carbonates	E500	low	2
322	d68a8103-5816-446c-85e2-955925fbf04f	Lecithins	E322	low	2
323	8e27f2dd-fb63-4278-aaf7-4d3340a48079	Calcium Propionate	E282	medium	7
324	487bf2a9-c3fb-4eda-b127-94679dcf9296	Sodium Nitrite	E250	harmful	100
325	46a74e59-fb14-4e40-9954-f229f1b0896d	Tartrazine	E102	high	15
326	11c50688-50fc-44f5-b217-2005d7496d83	Tartrazine	E102	high	15
327	11c50688-50fc-44f5-b217-2005d7496d83	Allura Red	E129	high	15
328	8c06d623-9f55-4ce9-a65a-e7174900b012	Sulfur Dioxide	E220	high	15
329	4de9dfdb-15c4-4ef9-bb59-42972727f908	Tartrazine	E102	high	15
330	4de9dfdb-15c4-4ef9-bb59-42972727f908	Allura Red	E129	high	15
331	4de9dfdb-15c4-4ef9-bb59-42972727f908	Brilliant Blue FCF	E133	high	15
332	4de9dfdb-15c4-4ef9-bb59-42972727f908	Citric Acid	E330	low	2
333	c7e215ce-4cf5-4f4e-8903-6acb4dad0e9f	Tartrazine	E102	high	15
334	c7e215ce-4cf5-4f4e-8903-6acb4dad0e9f	Sunset Yellow	E110	high	15
335	c7e215ce-4cf5-4f4e-8903-6acb4dad0e9f	Citric Acid	E330	low	2
336	94a0f146-225f-4639-842a-b5805bc1891d	Tartrazine	E102	high	15
337	94a0f146-225f-4639-842a-b5805bc1891d	Sunset Yellow	E110	high	15
338	94a0f146-225f-4639-842a-b5805bc1891d	Citric Acid	E330	low	2
339	3f34f8c6-da59-42e0-9c7e-715a9f839f62	Tartrazine	E102	high	15
340	3f34f8c6-da59-42e0-9c7e-715a9f839f62	Sunset Yellow	E110	high	15
341	3f34f8c6-da59-42e0-9c7e-715a9f839f62	Citric Acid	E330	low	2
342	3f7f1e44-1d1b-4aa5-8784-7cda02f529ac	Tartrazine	E102	high	15
343	3f7f1e44-1d1b-4aa5-8784-7cda02f529ac	Sunset Yellow	E110	high	15
344	3f7f1e44-1d1b-4aa5-8784-7cda02f529ac	Citric Acid	E330	low	2
345	01a0cacd-7780-4808-a712-f02315c037b6	Sulfite Ammonia Caramel	E150D	medium	7
346	01a0cacd-7780-4808-a712-f02315c037b6	Lecithins	E322	low	2
347	01a0cacd-7780-4808-a712-f02315c037b6	Polyglycerol Polyricinoleate	E476	low	2
348	964afb10-9c57-4d3b-a860-4d0e766a9fc9	Sulfite Ammonia Caramel	E150D	medium	7
349	964afb10-9c57-4d3b-a860-4d0e766a9fc9	Mono and Diglycerides of Fatty Acids	E471	low	2
350	964afb10-9c57-4d3b-a860-4d0e766a9fc9	Citric Acid	E330	low	2
351	70ffef33-d32f-4ed7-91a9-ffdd1aa07867	Tartrazine	E102	high	15
352	70ffef33-d32f-4ed7-91a9-ffdd1aa07867	Allura Red	E129	high	15
353	70ffef33-d32f-4ed7-91a9-ffdd1aa07867	Brilliant Blue FCF	E133	high	15
354	70ffef33-d32f-4ed7-91a9-ffdd1aa07867	Citric Acid	E330	low	2
355	b8efa7c5-0619-4e1d-8440-aa141326af30	Tartrazine	E102	high	15
356	b8efa7c5-0619-4e1d-8440-aa141326af30	Sunset Yellow	E110	high	15
357	b8efa7c5-0619-4e1d-8440-aa141326af30	Mono and Diglycerides of Fatty Acids	E471	low	2
358	b8efa7c5-0619-4e1d-8440-aa141326af30	Citric Acid	E330	low	2
359	a6c1c1b3-646f-4980-b50a-f4076ab8f1c4	Tartrazine	E102	high	15
360	a6c1c1b3-646f-4980-b50a-f4076ab8f1c4	Allura Red	E129	high	15
361	a6c1c1b3-646f-4980-b50a-f4076ab8f1c4	Citric Acid	E330	low	2
362	5743fdb2-1ae8-4c1f-af3e-b6cdf2e1dd55	Sulfite Ammonia Caramel	E150D	medium	7
363	5743fdb2-1ae8-4c1f-af3e-b6cdf2e1dd55	Lecithins	E322	low	2
364	5743fdb2-1ae8-4c1f-af3e-b6cdf2e1dd55	Mono and Diglycerides of Fatty Acids	E471	low	2
365	3d1ed315-540b-4c9b-b5b8-8d92a4939efe	Mono and Diglycerides of Fatty Acids	E471	low	2
366	3d1ed315-540b-4c9b-b5b8-8d92a4939efe	Glycerol	E422	low	2
367	3d1ed315-540b-4c9b-b5b8-8d92a4939efe	Carnauba Wax	E903	low	2
368	8331c96b-2655-40f0-8130-0c0b830566b1	Mono and Diglycerides of Fatty Acids	E471	low	2
369	8331c96b-2655-40f0-8130-0c0b830566b1	Glycerol	E422	low	2
370	8331c96b-2655-40f0-8130-0c0b830566b1	Carnauba Wax	E903	low	2
371	8a82dff6-7305-46c5-9611-4463fc3933f8	Allura Red	E129	high	15
372	8a82dff6-7305-46c5-9611-4463fc3933f8	Mono and Diglycerides of Fatty Acids	E471	low	2
373	8a82dff6-7305-46c5-9611-4463fc3933f8	Citric Acid	E330	low	2
374	ed229e52-f109-4bc3-baa4-581cf2a13885	Acesulfame K	E950	medium	7
375	ed229e52-f109-4bc3-baa4-581cf2a13885	Aspartame	E951	medium	7
376	ed229e52-f109-4bc3-baa4-581cf2a13885	BHT Butylated Hydroxytoluene	E321	high	15
377	ed229e52-f109-4bc3-baa4-581cf2a13885	Mono and Diglycerides of Fatty Acids	E471	low	2
378	ed229e52-f109-4bc3-baa4-581cf2a13885	Glycerol	E422	low	2
379	b3169849-6642-4b7a-9b26-50c512e97e39	Monosodium Glutamate	E621	medium	7
380	b3169849-6642-4b7a-9b26-50c512e97e39	Sulfite Ammonia Caramel	E150D	medium	7
381	b3169849-6642-4b7a-9b26-50c512e97e39	Disodium Guanylate	E627	medium	7
382	b3169849-6642-4b7a-9b26-50c512e97e39	Disodium Inosinate	E631	medium	7
383	b3169849-6642-4b7a-9b26-50c512e97e39	Mono and Diglycerides of Fatty Acids	E471	low	2
384	17582dca-225e-4f1a-bd28-74aa0dbe9d82	Monosodium Glutamate	E621	medium	7
385	17582dca-225e-4f1a-bd28-74aa0dbe9d82	Sulfite Ammonia Caramel	E150D	medium	7
386	17582dca-225e-4f1a-bd28-74aa0dbe9d82	Disodium Guanylate	E627	medium	7
387	17582dca-225e-4f1a-bd28-74aa0dbe9d82	Mono and Diglycerides of Fatty Acids	E471	low	2
388	17582dca-225e-4f1a-bd28-74aa0dbe9d82	Carboxymethyl Cellulose	E466	low	2
389	926dd52b-10f4-4da4-90bc-9905662de31d	Monosodium Glutamate	E621	medium	7
390	926dd52b-10f4-4da4-90bc-9905662de31d	Disodium Guanylate	E627	medium	7
391	926dd52b-10f4-4da4-90bc-9905662de31d	Disodium Inosinate	E631	medium	7
392	926dd52b-10f4-4da4-90bc-9905662de31d	Mono and Diglycerides of Fatty Acids	E471	low	2
393	98c9e063-913f-4838-957a-ff225904138d	Monosodium Glutamate	E621	medium	7
394	98c9e063-913f-4838-957a-ff225904138d	Sulfite Ammonia Caramel	E150D	medium	7
395	98c9e063-913f-4838-957a-ff225904138d	Disodium Guanylate	E627	medium	7
396	98c9e063-913f-4838-957a-ff225904138d	Disodium Inosinate	E631	medium	7
397	98c9e063-913f-4838-957a-ff225904138d	Citric Acid	E330	low	2
398	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Monosodium Glutamate	E621	medium	7
399	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Disodium Guanylate	E627	medium	7
400	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Disodium Inosinate	E631	medium	7
401	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Mono and Diglycerides of Fatty Acids	E471	low	2
402	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	Potassium Carbonates	E501	low	2
403	3472b518-797f-4ac7-abce-ec944dc6000a	Tartrazine	E102	high	15
404	3472b518-797f-4ac7-abce-ec944dc6000a	Monosodium Glutamate	E621	medium	7
405	3472b518-797f-4ac7-abce-ec944dc6000a	Disodium Guanylate	E627	medium	7
406	3472b518-797f-4ac7-abce-ec944dc6000a	Disodium Inosinate	E631	medium	7
407	d0de52af-bada-4793-9c31-58b1690f506a	Monosodium Glutamate	E621	medium	7
408	d0de52af-bada-4793-9c31-58b1690f506a	Sulfite Ammonia Caramel	E150D	medium	7
409	d0de52af-bada-4793-9c31-58b1690f506a	Disodium Guanylate	E627	medium	7
410	d0de52af-bada-4793-9c31-58b1690f506a	Disodium Inosinate	E631	medium	7
411	d0de52af-bada-4793-9c31-58b1690f506a	Mono and Diglycerides of Fatty Acids	E471	low	2
412	8533c9e4-cbe4-4500-9e10-d22689f1d9de	Monosodium Glutamate	E621	medium	7
413	8533c9e4-cbe4-4500-9e10-d22689f1d9de	Disodium Guanylate	E627	medium	7
414	8533c9e4-cbe4-4500-9e10-d22689f1d9de	Disodium Inosinate	E631	medium	7
415	8533c9e4-cbe4-4500-9e10-d22689f1d9de	Potassium Carbonates	E501	low	2
416	dc7b37ee-b9d1-483b-a57a-5636deb91100	Monosodium Glutamate	E621	medium	7
417	dc7b37ee-b9d1-483b-a57a-5636deb91100	Sulfite Ammonia Caramel	E150D	medium	7
418	dc7b37ee-b9d1-483b-a57a-5636deb91100	Disodium Guanylate	E627	medium	7
419	dc7b37ee-b9d1-483b-a57a-5636deb91100	Disodium Inosinate	E631	medium	7
420	dc7b37ee-b9d1-483b-a57a-5636deb91100	Citric Acid	E330	low	2
421	dc7b37ee-b9d1-483b-a57a-5636deb91100	Xanthan Gum	E415	low	2
422	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Tartrazine	E102	high	15
423	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Monosodium Glutamate	E621	medium	7
424	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Disodium Guanylate	E627	medium	7
425	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Disodium Inosinate	E631	medium	7
426	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	Mono and Diglycerides of Fatty Acids	E471	low	2
427	e647d742-e364-4659-b69b-c8909596e94f	Monosodium Glutamate	E621	medium	7
428	e647d742-e364-4659-b69b-c8909596e94f	Disodium Guanylate	E627	medium	7
429	e647d742-e364-4659-b69b-c8909596e94f	Disodium Inosinate	E631	medium	7
430	e647d742-e364-4659-b69b-c8909596e94f	Potassium Carbonates	E501	low	2
431	854ddbe8-d255-427b-af96-13426408a698	Monosodium Glutamate	E621	medium	7
432	854ddbe8-d255-427b-af96-13426408a698	Disodium Guanylate	E627	medium	7
433	854ddbe8-d255-427b-af96-13426408a698	Potassium Carbonates	E501	low	2
434	edb5cc7b-6b86-4bf7-b278-c86606572327	Sodium Nitrite	E250	harmful	100
435	d3480181-9185-443e-9e69-c244e30a738d	Sodium Nitrite	E250	harmful	100
436	0953f9bc-c25f-4da3-a58e-cbc2b928acc8	Sodium Nitrite	E250	harmful	100
437	665b0388-b46e-4e88-8ab9-36a444297ee9	Tartrazine	E102	high	15
438	665b0388-b46e-4e88-8ab9-36a444297ee9	Sunset Yellow	E110	high	15
439	665b0388-b46e-4e88-8ab9-36a444297ee9	Monosodium Glutamate	E621	medium	7
440	665b0388-b46e-4e88-8ab9-36a444297ee9	Disodium Guanylate	E627	medium	7
441	9c0a0e1d-76b7-43b5-b1fc-64bb29b4bc78	Monosodium Glutamate	E621	medium	7
442	9c0a0e1d-76b7-43b5-b1fc-64bb29b4bc78	Citric Acid	E330	low	2
443	1cc7812a-894d-46b4-8235-9c4f262da749	Tartrazine	E102	high	15
444	1cc7812a-894d-46b4-8235-9c4f262da749	Monosodium Glutamate	E621	medium	7
445	1cc7812a-894d-46b4-8235-9c4f262da749	Disodium Guanylate	E627	medium	7
446	1cc7812a-894d-46b4-8235-9c4f262da749	Disodium Inosinate	E631	medium	7
447	9d2d86a8-5abb-4ac3-a91b-c80d052be83c	Tartrazine	E102	high	15
448	9d2d86a8-5abb-4ac3-a91b-c80d052be83c	Monosodium Glutamate	E621	medium	7
449	9d2d86a8-5abb-4ac3-a91b-c80d052be83c	Disodium Guanylate	E627	medium	7
450	72a9dd9d-1c35-44df-ab58-92fe80a704be	Tartrazine	E102	high	15
451	72a9dd9d-1c35-44df-ab58-92fe80a704be	Sunset Yellow	E110	high	15
452	72a9dd9d-1c35-44df-ab58-92fe80a704be	Monosodium Glutamate	E621	medium	7
453	72a9dd9d-1c35-44df-ab58-92fe80a704be	Disodium Guanylate	E627	medium	7
454	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Tartrazine	E102	high	15
455	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Sunset Yellow	E110	high	15
456	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Allura Red	E129	high	15
457	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Monosodium Glutamate	E621	medium	7
458	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	Disodium Guanylate	E627	medium	7
459	ffed87e5-2486-46f2-bc83-4da1c78b8747	Tartrazine	E102	high	15
460	ffed87e5-2486-46f2-bc83-4da1c78b8747	Monosodium Glutamate	E621	medium	7
461	ffed87e5-2486-46f2-bc83-4da1c78b8747	Disodium Guanylate	E627	medium	7
462	ce6dab29-eeca-4d31-aa01-24f757037c97	Tartrazine	E102	high	15
463	ce6dab29-eeca-4d31-aa01-24f757037c97	Allura Red	E129	high	15
464	ce6dab29-eeca-4d31-aa01-24f757037c97	Monosodium Glutamate	E621	medium	7
465	ce6dab29-eeca-4d31-aa01-24f757037c97	Disodium Guanylate	E627	medium	7
466	ce6dab29-eeca-4d31-aa01-24f757037c97	Disodium Inosinate	E631	medium	7
467	c24edac9-ff9f-4874-8b21-3941de2ea1cf	Tartrazine	E102	high	15
468	c24edac9-ff9f-4874-8b21-3941de2ea1cf	Sunset Yellow	E110	high	15
469	c24edac9-ff9f-4874-8b21-3941de2ea1cf	Monosodium Glutamate	E621	medium	7
470	c24edac9-ff9f-4874-8b21-3941de2ea1cf	Disodium Guanylate	E627	medium	7
471	721ec833-791b-42f2-97ea-30171eb575c6	Tartrazine	E102	high	15
472	721ec833-791b-42f2-97ea-30171eb575c6	Sunset Yellow	E110	high	15
473	721ec833-791b-42f2-97ea-30171eb575c6	Allura Red	E129	high	15
474	721ec833-791b-42f2-97ea-30171eb575c6	Monosodium Glutamate	E621	medium	7
475	721ec833-791b-42f2-97ea-30171eb575c6	Disodium Guanylate	E627	medium	7
476	721ec833-791b-42f2-97ea-30171eb575c6	Mono and Diglycerides of Fatty Acids	E471	low	2
477	0b068756-73cd-4e27-9e36-ac128432b268	Monosodium Glutamate	E621	medium	7
478	0b068756-73cd-4e27-9e36-ac128432b268	Disodium Guanylate	E627	medium	7
479	09eccd96-3e34-43f1-aab7-65a704a790d9	Monosodium Glutamate	E621	medium	7
480	09eccd96-3e34-43f1-aab7-65a704a790d9	Disodium Guanylate	E627	medium	7
481	7307a1c1-ee5d-4a5b-9e4a-d31830470456	Monosodium Glutamate	E621	medium	7
482	7307a1c1-ee5d-4a5b-9e4a-d31830470456	Disodium Guanylate	E627	medium	7
483	7307a1c1-ee5d-4a5b-9e4a-d31830470456	Disodium Inosinate	E631	medium	7
484	dec7011b-bac1-44b7-b0c2-a0d23a273605	Tartrazine	E102	high	15
485	dec7011b-bac1-44b7-b0c2-a0d23a273605	Sunset Yellow	E110	high	15
486	dec7011b-bac1-44b7-b0c2-a0d23a273605	Allura Red	E129	high	15
487	dec7011b-bac1-44b7-b0c2-a0d23a273605	Monosodium Glutamate	E621	medium	7
488	dec7011b-bac1-44b7-b0c2-a0d23a273605	Disodium Guanylate	E627	medium	7
489	65d65462-4d79-44b7-af5e-ebba6f634354	Tartrazine	E102	high	15
490	65d65462-4d79-44b7-af5e-ebba6f634354	Sunset Yellow	E110	high	15
491	65d65462-4d79-44b7-af5e-ebba6f634354	Monosodium Glutamate	E621	medium	7
492	65d65462-4d79-44b7-af5e-ebba6f634354	Disodium Guanylate	E627	medium	7
493	65d65462-4d79-44b7-af5e-ebba6f634354	Disodium Inosinate	E631	medium	7
494	b91dd866-8c04-41c5-af1b-224fe1c51757	Potassium Sorbate	E202	low	2
495	b91dd866-8c04-41c5-af1b-224fe1c51757	Acetic Acid	E260	low	2
496	b91dd866-8c04-41c5-af1b-224fe1c51757	Citric Acid	E330	low	2
497	b91dd866-8c04-41c5-af1b-224fe1c51757	Pectins	E440	low	2
498	3385cc71-48d8-4894-9179-88fe789a72e2	Tartrazine	E102	high	15
499	3385cc71-48d8-4894-9179-88fe789a72e2	Potassium Sorbate	E202	low	2
500	3385cc71-48d8-4894-9179-88fe789a72e2	Acetic Acid	E260	low	2
501	3385cc71-48d8-4894-9179-88fe789a72e2	Citric Acid	E330	low	2
502	3385cc71-48d8-4894-9179-88fe789a72e2	Pectins	E440	low	2
503	87c3d219-9b92-4b77-9981-eafe41a1e322	Sunset Yellow	E110	high	15
504	87c3d219-9b92-4b77-9981-eafe41a1e322	Potassium Sorbate	E202	low	2
505	87c3d219-9b92-4b77-9981-eafe41a1e322	Acetic Acid	E260	low	2
506	87c3d219-9b92-4b77-9981-eafe41a1e322	Citric Acid	E330	low	2
507	87c3d219-9b92-4b77-9981-eafe41a1e322	Pectins	E440	low	2
508	0ae763fe-02b2-42a9-b57c-c80b737265b8	Lecithins	E322	low	2
509	0ae763fe-02b2-42a9-b57c-c80b737265b8	Mono and Diglycerides of Fatty Acids	E471	low	2
510	0ae763fe-02b2-42a9-b57c-c80b737265b8	Polyglycerol Polyricinoleate	E476	low	2
511	de40a436-b81e-47c3-9e58-b5303dd91a91	Allura Red	E129	high	15
512	de40a436-b81e-47c3-9e58-b5303dd91a91	Acetic Acid	E260	low	2
513	de40a436-b81e-47c3-9e58-b5303dd91a91	Citric Acid	E330	low	2
514	de40a436-b81e-47c3-9e58-b5303dd91a91	Pectins	E440	low	2
515	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Sulfite Ammonia Caramel	E150D	medium	7
516	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Potassium Sorbate	E202	low	2
517	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Lecithins	E322	low	2
518	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Xanthan Gum	E415	low	2
519	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	Carboxymethyl Cellulose	E466	low	2
520	fd7017c1-dc34-48b5-8183-fc8fa79dc688	Sulfite Ammonia Caramel	E150D	medium	7
521	fd7017c1-dc34-48b5-8183-fc8fa79dc688	Potassium Sorbate	E202	low	2
522	fd7017c1-dc34-48b5-8183-fc8fa79dc688	Acetic Acid	E260	low	2
523	fd7017c1-dc34-48b5-8183-fc8fa79dc688	Xanthan Gum	E415	low	2
524	00fb7cda-8333-454b-ae27-dc61129b5289	Allura Red	E129	high	15
525	00fb7cda-8333-454b-ae27-dc61129b5289	Sulfite Ammonia Caramel	E150D	medium	7
526	00fb7cda-8333-454b-ae27-dc61129b5289	Potassium Sorbate	E202	low	2
527	00fb7cda-8333-454b-ae27-dc61129b5289	Acetic Acid	E260	low	2
528	00fb7cda-8333-454b-ae27-dc61129b5289	Xanthan Gum	E415	low	2
529	1b0af267-4209-42ff-b3dd-e85b0f028062	Lecithins	E322	low	2
530	1b0af267-4209-42ff-b3dd-e85b0f028062	Mono and Diglycerides of Fatty Acids	E471	low	2
531	1b0af267-4209-42ff-b3dd-e85b0f028062	Polyglycerol Polyricinoleate	E476	low	2
532	1b0af267-4209-42ff-b3dd-e85b0f028062	Sodium Carbonates	E500	low	2
533	c68a2a28-e9be-436d-ba61-3bac09723e46	Sodium Benzoate	E211	medium	7
534	c68a2a28-e9be-436d-ba61-3bac09723e46	Citric Acid	E330	low	2
535	e1a97a90-3548-464a-8d95-b1000bf1ce5a	Tartrazine	E102	high	15
536	e1a97a90-3548-464a-8d95-b1000bf1ce5a	Sunset Yellow	E110	high	15
537	e1a97a90-3548-464a-8d95-b1000bf1ce5a	Allura Red	E129	high	15
538	e1a97a90-3548-464a-8d95-b1000bf1ce5a	Citric Acid	E330	low	2
539	e1a97a90-3548-464a-8d95-b1000bf1ce5a	Carboxymethyl Cellulose	E466	low	2
540	cc01816c-790a-47f4-afbb-a56c03c1edc9	Tartrazine	E102	high	15
541	cc01816c-790a-47f4-afbb-a56c03c1edc9	Sunset Yellow	E110	high	15
542	cc01816c-790a-47f4-afbb-a56c03c1edc9	Citric Acid	E330	low	2
543	cc01816c-790a-47f4-afbb-a56c03c1edc9	Carboxymethyl Cellulose	E466	low	2
544	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Tartrazine	E102	high	15
545	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Sunset Yellow	E110	high	15
546	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Acesulfame K	E950	medium	7
547	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Citric Acid	E330	low	2
548	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	Carboxymethyl Cellulose	E466	low	2
549	df395e1d-d0ef-4535-a6ea-7940187e428b	Tartrazine	E102	high	15
550	df395e1d-d0ef-4535-a6ea-7940187e428b	Sunset Yellow	E110	high	15
551	df395e1d-d0ef-4535-a6ea-7940187e428b	Acesulfame K	E950	medium	7
552	df395e1d-d0ef-4535-a6ea-7940187e428b	Citric Acid	E330	low	2
553	df395e1d-d0ef-4535-a6ea-7940187e428b	Carboxymethyl Cellulose	E466	low	2
554	93730a2b-77e0-4134-b04d-71218eb86951	Tartrazine	E102	high	15
555	93730a2b-77e0-4134-b04d-71218eb86951	Acesulfame K	E950	medium	7
556	93730a2b-77e0-4134-b04d-71218eb86951	Citric Acid	E330	low	2
557	93730a2b-77e0-4134-b04d-71218eb86951	Carboxymethyl Cellulose	E466	low	2
558	88ae8390-5dac-45de-9048-ea9b9c52c5ee	Tartrazine	E102	high	15
559	88ae8390-5dac-45de-9048-ea9b9c52c5ee	Sunset Yellow	E110	high	15
560	88ae8390-5dac-45de-9048-ea9b9c52c5ee	Citric Acid	E330	low	2
561	30b84763-39f5-46e9-992f-7e6f260debd5	Tartrazine	E102	high	15
562	30b84763-39f5-46e9-992f-7e6f260debd5	Sunset Yellow	E110	high	15
563	30b84763-39f5-46e9-992f-7e6f260debd5	Citric Acid	E330	low	2
564	30b84763-39f5-46e9-992f-7e6f260debd5	Sodium Citrates	E331	low	2
565	a9d4a825-377d-4550-9fd9-d1f11cc5cbc9	Tartrazine	E102	high	15
566	a9d4a825-377d-4550-9fd9-d1f11cc5cbc9	Sunset Yellow	E110	high	15
567	a9d4a825-377d-4550-9fd9-d1f11cc5cbc9	Citric Acid	E330	low	2
568	db5eddae-eb70-480b-a8f7-6904f4b6f18c	Tartrazine	E102	high	15
569	db5eddae-eb70-480b-a8f7-6904f4b6f18c	Citric Acid	E330	low	2
570	db5eddae-eb70-480b-a8f7-6904f4b6f18c	Carboxymethyl Cellulose	E466	low	2
571	5b4c7f15-69a9-42eb-9bfe-bcfdebfa3bc7	Tartrazine	E102	high	15
572	5b4c7f15-69a9-42eb-9bfe-bcfdebfa3bc7	Citric Acid	E330	low	2
573	5b4c7f15-69a9-42eb-9bfe-bcfdebfa3bc7	Carboxymethyl Cellulose	E466	low	2
574	4c075b9e-bd99-4d19-aeb5-7276f2b6da66	Sulfite Ammonia Caramel	E150D	medium	7
575	4c075b9e-bd99-4d19-aeb5-7276f2b6da66	Lecithins	E322	low	2
576	4c075b9e-bd99-4d19-aeb5-7276f2b6da66	Mono and Diglycerides of Fatty Acids	E471	low	2
577	4c075b9e-bd99-4d19-aeb5-7276f2b6da66	Carboxymethyl Cellulose	E466	low	2
578	27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	Sulfite Ammonia Caramel	E150D	medium	7
579	27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	Lecithins	E322	low	2
580	27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	Mono and Diglycerides of Fatty Acids	E471	low	2
581	27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	Carboxymethyl Cellulose	E466	low	2
582	a9fbade5-e722-4336-b4f4-92a9c7259485	Sulfite Ammonia Caramel	E150D	medium	7
583	a9fbade5-e722-4336-b4f4-92a9c7259485	Lecithins	E322	low	2
584	a9fbade5-e722-4336-b4f4-92a9c7259485	Mono and Diglycerides of Fatty Acids	E471	low	2
585	6c9f2482-ee1f-49f1-a206-7ee8b64deb4c	Lecithins	E322	low	2
586	6c9f2482-ee1f-49f1-a206-7ee8b64deb4c	Mono and Diglycerides of Fatty Acids	E471	low	2
587	6c9f2482-ee1f-49f1-a206-7ee8b64deb4c	Carboxymethyl Cellulose	E466	low	2
588	e2fa7372-9442-48f2-b982-5e972606ee68	Acesulfame K	E950	medium	7
589	e2fa7372-9442-48f2-b982-5e972606ee68	Lecithins	E322	low	2
590	e2fa7372-9442-48f2-b982-5e972606ee68	Mono and Diglycerides of Fatty Acids	E471	low	2
591	e2fa7372-9442-48f2-b982-5e972606ee68	Xanthan Gum	E415	low	2
592	e2fa7372-9442-48f2-b982-5e972606ee68	Carboxymethyl Cellulose	E466	low	2
593	f6a7f2bd-717a-49a1-98ed-8ee60576673f	Sodium Nitrite	E250	harmful	100
594	d6d89b93-2215-403d-a93f-1fbcbbed387b	Sodium Nitrite	E250	harmful	100
595	89556c5e-da2b-4d60-ac1b-f17c6bfdcb48	Sodium Nitrite	E250	harmful	100
596	e9645bf1-f190-4c40-9a15-48d99e7150a4	Allura Red	E129	high	15
597	e9645bf1-f190-4c40-9a15-48d99e7150a4	Sodium Nitrite	E250	harmful	100
598	6f939a1d-076d-4907-9e67-80036452a064	Monosodium Glutamate	E621	medium	7
599	6f939a1d-076d-4907-9e67-80036452a064	Citric Acid	E330	low	2
600	e8e5b019-b19f-436b-b978-1fe9e5262e74	Sulfite Ammonia Caramel	E150D	medium	7
601	e8e5b019-b19f-436b-b978-1fe9e5262e74	Acetic Acid	E260	low	2
602	e8e5b019-b19f-436b-b978-1fe9e5262e74	Xanthan Gum	E415	low	2
603	e3a00e3f-e4b9-44ce-825e-83a2e23db92c	Sodium Metabisulfite	E223	high	15
604	e3a00e3f-e4b9-44ce-825e-83a2e23db92c	Citric Acid	E330	low	2
605	59664cce-c369-4e8d-9ee5-a9fbce13f0ad	Sodium Metabisulfite	E223	high	15
606	59664cce-c369-4e8d-9ee5-a9fbce13f0ad	Citric Acid	E330	low	2
607	187041c9-b63e-48c8-a2ba-514f6f39b5ac	Monosodium Glutamate	E621	medium	7
608	187041c9-b63e-48c8-a2ba-514f6f39b5ac	Triphosphates	E451	medium	7
609	187041c9-b63e-48c8-a2ba-514f6f39b5ac	Polyphosphates	E452	medium	7
610	187041c9-b63e-48c8-a2ba-514f6f39b5ac	Mono and Diglycerides of Fatty Acids	E471	low	2
611	602318ad-5d7a-4072-9106-1dcc94dc573d	Tartrazine	E102	high	15
612	602318ad-5d7a-4072-9106-1dcc94dc573d	Monosodium Glutamate	E621	medium	7
613	602318ad-5d7a-4072-9106-1dcc94dc573d	Triphosphates	E451	medium	7
614	602318ad-5d7a-4072-9106-1dcc94dc573d	Polyphosphates	E452	medium	7
615	602318ad-5d7a-4072-9106-1dcc94dc573d	Mono and Diglycerides of Fatty Acids	E471	low	2
616	46e51926-9558-4c42-8fc9-de1a1743dbbf	Allura Red	E129	high	15
617	46e51926-9558-4c42-8fc9-de1a1743dbbf	Sodium Nitrite	E250	harmful	100
618	a037409a-7022-4585-9cae-52f006aa49c0	Sodium Nitrite	E250	harmful	100
619	64f9bf2f-a437-4a70-ad67-699406792a71	Tartrazine	E102	high	15
620	64f9bf2f-a437-4a70-ad67-699406792a71	Sodium Metabisulfite	E223	high	15
621	64f9bf2f-a437-4a70-ad67-699406792a71	Citric Acid	E330	low	2
622	0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	Tartrazine	E102	high	15
623	0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	Allura Red	E129	high	15
624	0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	Sodium Metabisulfite	E223	high	15
625	0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	Citric Acid	E330	low	2
626	95cd4fef-878d-4a26-bc58-fd8af1d2c414	Sodium Metabisulfite	E223	high	15
627	95cd4fef-878d-4a26-bc58-fd8af1d2c414	Citric Acid	E330	low	2
628	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Tartrazine	E102	high	15
629	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Allura Red	E129	high	15
630	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Diphosphates	E450	medium	7
631	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Potassium Sorbate	E202	low	2
632	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Mono and Diglycerides of Fatty Acids	E471	low	2
633	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	Sodium Carbonates	E500	low	2
634	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Sulfite Ammonia Caramel	E150D	medium	7
635	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Diphosphates	E450	medium	7
636	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Lecithins	E322	low	2
637	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Mono and Diglycerides of Fatty Acids	E471	low	2
638	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	Sodium Carbonates	E500	low	2
639	78790027-851b-475f-8285-435f5c442371	Tartrazine	E102	high	15
640	78790027-851b-475f-8285-435f5c442371	Allura Red	E129	high	15
641	78790027-851b-475f-8285-435f5c442371	Diphosphates	E450	medium	7
642	78790027-851b-475f-8285-435f5c442371	Potassium Sorbate	E202	low	2
643	78790027-851b-475f-8285-435f5c442371	Lecithins	E322	low	2
644	78790027-851b-475f-8285-435f5c442371	Mono and Diglycerides of Fatty Acids	E471	low	2
645	78790027-851b-475f-8285-435f5c442371	Sodium Carbonates	E500	low	2
646	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Sulfite Ammonia Caramel	E150D	medium	7
647	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Diphosphates	E450	medium	7
648	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Potassium Sorbate	E202	low	2
649	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Lecithins	E322	low	2
650	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Mono and Diglycerides of Fatty Acids	E471	low	2
651	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	Sodium Carbonates	E500	low	2
652	77eeed79-4bb3-4940-ab65-e4d765ada889	Tartrazine	E102	high	15
653	77eeed79-4bb3-4940-ab65-e4d765ada889	Allura Red	E129	high	15
654	77eeed79-4bb3-4940-ab65-e4d765ada889	Diphosphates	E450	medium	7
655	77eeed79-4bb3-4940-ab65-e4d765ada889	Mono and Diglycerides of Fatty Acids	E471	low	2
656	77eeed79-4bb3-4940-ab65-e4d765ada889	Sodium Carbonates	E500	low	2
657	60d0c8aa-e608-415a-804e-c17637f444aa	Sulfite Ammonia Caramel	E150D	medium	7
658	60d0c8aa-e608-415a-804e-c17637f444aa	Diphosphates	E450	medium	7
659	60d0c8aa-e608-415a-804e-c17637f444aa	Lecithins	E322	low	2
660	60d0c8aa-e608-415a-804e-c17637f444aa	Mono and Diglycerides of Fatty Acids	E471	low	2
661	60d0c8aa-e608-415a-804e-c17637f444aa	Sodium Carbonates	E500	low	2
662	3bb1cd67-2693-440d-9ca0-40d96696ac75	Tartrazine	E102	high	15
663	3bb1cd67-2693-440d-9ca0-40d96696ac75	Allura Red	E129	high	15
664	3bb1cd67-2693-440d-9ca0-40d96696ac75	Calcium Propionate	E282	medium	7
665	3bb1cd67-2693-440d-9ca0-40d96696ac75	Mono and Diglycerides of Fatty Acids	E471	low	2
666	cc3f4db7-7601-4f01-a5ec-c8d88b53143c	Calcium Propionate	E282	medium	7
667	cc3f4db7-7601-4f01-a5ec-c8d88b53143c	Mono and Diglycerides of Fatty Acids	E471	low	2
668	ad8c916a-70b1-4872-8f10-1d98bd478b7b	Monosodium Glutamate	E621	medium	7
669	ad8c916a-70b1-4872-8f10-1d98bd478b7b	Calcium Propionate	E282	medium	7
670	ad8c916a-70b1-4872-8f10-1d98bd478b7b	Mono and Diglycerides of Fatty Acids	E471	low	2
671	61ae71ba-63e5-4213-b9b7-8b9db0d8375d	Calcium Propionate	E282	medium	7
672	61ae71ba-63e5-4213-b9b7-8b9db0d8375d	Sodium Carbonates	E500	low	2
673	0914975e-e614-48b8-ad1f-7d8724b450ae	Calcium Propionate	E282	medium	7
674	0914975e-e614-48b8-ad1f-7d8724b450ae	Lecithins	E322	low	2
675	0914975e-e614-48b8-ad1f-7d8724b450ae	Mono and Diglycerides of Fatty Acids	E471	low	2
676	b6a9900c-c5e6-4611-b670-f3653793fec1	Calcium Propionate	E282	medium	7
677	b6a9900c-c5e6-4611-b670-f3653793fec1	Mono and Diglycerides of Fatty Acids	E471	low	2
678	75526512-90c7-4f25-9cfe-64ac1bfd3b8f	Calcium Propionate	E282	medium	7
679	75526512-90c7-4f25-9cfe-64ac1bfd3b8f	Sodium Carbonates	E500	low	2
680	dfe6f40e-f7d5-43b9-aed1-d46d36dfc6f5	Monosodium Glutamate	E621	medium	7
681	dfe6f40e-f7d5-43b9-aed1-d46d36dfc6f5	Calcium Propionate	E282	medium	7
682	62b9c078-e40a-4ec6-9474-adc006929566	Diphosphates	E450	medium	7
683	62b9c078-e40a-4ec6-9474-adc006929566	Lecithins	E322	low	2
684	62b9c078-e40a-4ec6-9474-adc006929566	Mono and Diglycerides of Fatty Acids	E471	low	2
685	62b9c078-e40a-4ec6-9474-adc006929566	Sodium Carbonates	E500	low	2
686	c46f39a4-cd9c-41ea-aa98-f49cf04226ed	Monosodium Glutamate	E621	medium	7
687	d00a4287-2d49-4a3b-a124-5e4c89875edc	Monosodium Glutamate	E621	medium	7
688	1a7e7247-ea1f-4b20-ae68-e43bd28dcffe	Tartrazine	E102	high	15
689	fc47f755-f519-45e5-a1b9-5391121c916e	Monosodium Glutamate	E621	medium	7
690	55d2fee7-aee6-4f2e-ac6d-b29cddef15f8	Sodium Carbonates	E500	low	2
691	1c2f775b-d6f1-4708-a85f-8e1a0f0c18ce	Tartrazine	E102	high	15
692	f502c63c-88c8-4ad2-9f1f-b5e3085f9edb	Tartrazine	E102	high	15
693	f502c63c-88c8-4ad2-9f1f-b5e3085f9edb	Allura Red	E129	high	15
694	ba9e2749-7a84-4984-b3ef-d30803900ee3	Tartrazine	E102	high	15
695	4497f2ba-a96f-4980-ad52-09e45ea715d4	Sodium Benzoate	E211	medium	7
696	4497f2ba-a96f-4980-ad52-09e45ea715d4	Acetic Acid	E260	low	2
697	7350e69b-e5d0-4420-8b3f-6a130d7c26e9	Sodium Nitrite	E250	harmful	100
698	b5bf3ee4-feaf-4ef8-aaf3-646f271ef57f	Lecithins	E322	low	2
699	b5bf3ee4-feaf-4ef8-aaf3-646f271ef57f	Mono and Diglycerides of Fatty Acids	E471	low	2
700	2995c5cd-4b16-424f-9497-453689bdd536	Lecithins	E322	low	2
701	2995c5cd-4b16-424f-9497-453689bdd536	Mono and Diglycerides of Fatty Acids	E471	low	2
702	b91161ec-7a47-4745-b08e-49aab77fc5f0	Lecithins	E322	low	2
703	b91161ec-7a47-4745-b08e-49aab77fc5f0	Mono and Diglycerides of Fatty Acids	E471	low	2
704	a821b8b3-bd87-47ca-a36e-0147ad643008	Lecithins	E322	low	2
705	a821b8b3-bd87-47ca-a36e-0147ad643008	Mono and Diglycerides of Fatty Acids	E471	low	2
706	a821b8b3-bd87-47ca-a36e-0147ad643008	Carboxymethyl Cellulose	E466	low	2
707	9a7bd9a7-349e-4d94-a980-eb7d8097e0ac	Lecithins	E322	low	2
708	9a7bd9a7-349e-4d94-a980-eb7d8097e0ac	Mono and Diglycerides of Fatty Acids	E471	low	2
709	9a7bd9a7-349e-4d94-a980-eb7d8097e0ac	Carboxymethyl Cellulose	E466	low	2
710	b503c1c8-166d-428d-8527-b7245168aa96	Lecithins	E322	low	2
711	b503c1c8-166d-428d-8527-b7245168aa96	Mono and Diglycerides of Fatty Acids	E471	low	2
712	b503c1c8-166d-428d-8527-b7245168aa96	Carboxymethyl Cellulose	E466	low	2
713	07e75c4e-9889-40ce-8838-04b2e4c9aa1a	Lecithins	E322	low	2
714	07e75c4e-9889-40ce-8838-04b2e4c9aa1a	Mono and Diglycerides of Fatty Acids	E471	low	2
715	07e75c4e-9889-40ce-8838-04b2e4c9aa1a	Carboxymethyl Cellulose	E466	low	2
716	5e05b1f9-44f4-4f39-a5cb-fca91c4ef949	Lecithins	E322	low	2
717	2bb4cb7f-076d-4ad5-a957-51f85cd08620	Citric Acid	E330	low	2
718	50fc9da2-0bb2-4517-b9d6-9681b61d9862	Lecithins	E322	low	2
719	06b21590-0b88-4727-a479-6662ad937ca6	Lecithins	E322	low	2
720	06b21590-0b88-4727-a479-6662ad937ca6	Mono and Diglycerides of Fatty Acids	E471	low	2
721	06b21590-0b88-4727-a479-6662ad937ca6	Carboxymethyl Cellulose	E466	low	2
722	4aeac621-2d9a-4634-86af-30d75f46c0cf	Lecithins	E322	low	2
723	4aeac621-2d9a-4634-86af-30d75f46c0cf	Mono and Diglycerides of Fatty Acids	E471	low	2
724	4aeac621-2d9a-4634-86af-30d75f46c0cf	Carboxymethyl Cellulose	E466	low	2
725	4b853fff-cc9d-487d-ac29-5377e59390d9	Sodium Carbonates	E500	low	2
726	030c25f8-ae3e-4413-816c-457854ac54fd	Sodium Carbonates	E500	low	2
727	ee9e33c8-a392-4a19-9c9b-d567ab79a9b6	Citric Acid	E330	low	2
728	ee9e33c8-a392-4a19-9c9b-d567ab79a9b6	Sodium Carbonates	E500	low	2
729	6e46ec6c-a622-4a73-aaa7-bfb57dc22e9e	Sodium Carbonates	E500	low	2
730	7991073a-e80c-437a-9608-e856de4209a8	Tartrazine	E102	high	15
731	7991073a-e80c-437a-9608-e856de4209a8	Sodium Carbonates	E500	low	2
732	3f877390-77c0-474b-919a-6a38c2858ef8	Acesulfame K	E950	medium	7
733	3f877390-77c0-474b-919a-6a38c2858ef8	Lecithins	E322	low	2
734	3f877390-77c0-474b-919a-6a38c2858ef8	Mono and Diglycerides of Fatty Acids	E471	low	2
735	924b5cbc-4722-4dad-ad98-5d98591a7710	Titanium Dioxide	E171	high	15
736	924b5cbc-4722-4dad-ad98-5d98591a7710	Cellulose	E460	low	2
737	7481e55e-5611-47c2-8797-08f54b7ae537	Cellulose	E460	low	2
738	55ed35d6-4d82-4b93-923b-40c972af23a3	Titanium Dioxide	E171	high	15
739	55ed35d6-4d82-4b93-923b-40c972af23a3	Cellulose	E460	low	2
740	402d68dc-2c2b-4363-8277-48ed4200d318	Cellulose	E460	low	2
741	a4f08562-9b1c-4280-9547-32da2bb3af9f	Mono and Diglycerides of Fatty Acids	E471	low	2
742	a4f08562-9b1c-4280-9547-32da2bb3af9f	Glycerol	E422	low	2
743	02bc7ba6-bd62-4647-a8e7-2370ec97088e	Cellulose	E460	low	2
744	403e380d-742b-492f-bb41-c2edc884961e	Cellulose	E460	low	2
745	b3ed7f9e-9dde-4ed5-a219-cf6360944e0a	Tartrazine	E102	high	15
746	b3ed7f9e-9dde-4ed5-a219-cf6360944e0a	Cellulose	E460	low	2
747	6f429a70-9ab4-4538-92ac-5ee954a89786	Cellulose	E460	low	2
748	18b5011c-9f39-4061-9b41-7d087e05b44c	Cellulose	E460	low	2
749	cbb55548-9624-4ebe-92cb-2108f76c7839	Titanium Dioxide	E171	high	15
750	cbb55548-9624-4ebe-92cb-2108f76c7839	Cellulose	E460	low	2
751	63c0f087-b6ba-4410-ae07-e1b32d551c03	Monosodium Glutamate	E621	medium	7
752	63c0f087-b6ba-4410-ae07-e1b32d551c03	BHA Butylated Hydroxyanisole	E320	high	15
753	63c0f087-b6ba-4410-ae07-e1b32d551c03	BHT Butylated Hydroxytoluene	E321	high	15
754	a05129a1-0204-41dc-b8e1-33cbcab44884	Monosodium Glutamate	E621	medium	7
755	a05129a1-0204-41dc-b8e1-33cbcab44884	BHA Butylated Hydroxyanisole	E320	high	15
756	a05129a1-0204-41dc-b8e1-33cbcab44884	BHT Butylated Hydroxytoluene	E321	high	15
757	abb0b9bf-3f12-40f9-b553-580f5c85b263	Monosodium Glutamate	E621	medium	7
758	abb0b9bf-3f12-40f9-b553-580f5c85b263	BHA Butylated Hydroxyanisole	E320	high	15
759	abb0b9bf-3f12-40f9-b553-580f5c85b263	BHT Butylated Hydroxytoluene	E321	high	15
760	34ff15c7-4fb7-494e-bbdb-d5f6e4679f6e	Monosodium Glutamate	E621	medium	7
761	34ff15c7-4fb7-494e-bbdb-d5f6e4679f6e	BHA Butylated Hydroxyanisole	E320	high	15
762	34ff15c7-4fb7-494e-bbdb-d5f6e4679f6e	BHT Butylated Hydroxytoluene	E321	high	15
763	dd7cdeff-f23f-4ca5-9e05-6ee5c510f06b	BHA Butylated Hydroxyanisole	E320	high	15
764	dd7cdeff-f23f-4ca5-9e05-6ee5c510f06b	BHT Butylated Hydroxytoluene	E321	high	15
765	9e87bedb-2a05-4cc0-9fc2-9b15bec23aa7	BHA Butylated Hydroxyanisole	E320	high	15
766	9e87bedb-2a05-4cc0-9fc2-9b15bec23aa7	BHT Butylated Hydroxytoluene	E321	high	15
767	9e87bedb-2a05-4cc0-9fc2-9b15bec23aa7	Mono and Diglycerides of Fatty Acids	E471	low	2
768	0b29fbb1-a285-4191-83a8-724f3855c889	BHA Butylated Hydroxyanisole	E320	high	15
769	0b29fbb1-a285-4191-83a8-724f3855c889	BHT Butylated Hydroxytoluene	E321	high	15
770	0b29fbb1-a285-4191-83a8-724f3855c889	Mono and Diglycerides of Fatty Acids	E471	low	2
771	8482ab45-381c-4180-a0f9-bcb7d0d8ae39	BHA Butylated Hydroxyanisole	E320	high	15
772	81b2d314-7197-49d4-94df-48dd3b2ad392	Monosodium Glutamate	E621	medium	7
773	81b2d314-7197-49d4-94df-48dd3b2ad392	BHA Butylated Hydroxyanisole	E320	high	15
774	5bef8d4c-4237-4600-837c-a960b6ed8548	Sodium Nitrite	E250	harmful	100
775	4cf6c05c-44ef-4098-9695-de5506f8ba19	Monosodium Glutamate	E621	medium	7
776	4cf6c05c-44ef-4098-9695-de5506f8ba19	Triphosphates	E451	medium	7
777	4cf6c05c-44ef-4098-9695-de5506f8ba19	Polyphosphates	E452	medium	7
778	0ff426d4-ab6e-429a-ad21-a0d9343ddcba	Monosodium Glutamate	E621	medium	7
779	0ff426d4-ab6e-429a-ad21-a0d9343ddcba	Triphosphates	E451	medium	7
780	0ff426d4-ab6e-429a-ad21-a0d9343ddcba	Polyphosphates	E452	medium	7
781	72454402-8522-4304-ad47-da747181f85d	Monosodium Glutamate	E621	medium	7
782	72454402-8522-4304-ad47-da747181f85d	Triphosphates	E451	medium	7
783	72454402-8522-4304-ad47-da747181f85d	Polyphosphates	E452	medium	7
\.


--
-- Data for Name: health_scores; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.health_scores (id, product_id, score, grade) FROM stdin;
\.


--
-- Data for Name: nutrition_facts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nutrition_facts (id, product_id, energy, fat, sugar, salt, protein) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (user_id, username, email, created_at, password_hash, full_name, avatar_url, preferences, updated_at) FROM stdin;
4bbcba73-0acb-4d3f-aa64-e32aaf4ff41a	demo	demo@foodscore.com	2026-05-16 06:49:40.219996+00	$2b$12$DXw9la9wI3Ho9HN6qGnkJ.Hl0NdjZ5pYNctQaAcqp3FjUQIDCuRce	Demo User	\N	{}	2026-05-16 06:49:40.219996
fcefad6d-95fc-4b28-8ae2-2a1ffea48364	testuser	testuser@foodscore.com	2026-05-16 07:21:49.81759+00	$2b$12$gOZQp0GQk1rUdqlQQp/YF.cixggh8mUawAjkCF0cyY6pVsad90/Z2	Test User	\N	{}	2026-05-16 07:21:49.81759
5f394e5e-f771-457a-9829-5e0b5b618047	scantest	scan@test.com	2026-05-16 07:28:41.586138+00	$2b$12$.SNLamOuOs/eDT.BO80dje5vpai2tYxDUV3cJjOKgM7u5M5s.bUtW	Scan Test	\N	{}	2026-05-16 07:28:41.586138
d04a5161-6059-4911-b6bc-f018625ab9e2	debug	debug@test.com	2026-05-16 07:30:55.662737+00	$2b$12$/QXSZBibQuG5Z9TzRGw8be944N9OxToC7ix0K7njRlneZwm13593a	Debug User	\N	{}	2026-05-16 07:30:55.662737
7749f9a9-d94b-43ce-babc-d5bb0d1e4ac0	final2	final2@test.com	2026-05-16 07:38:15.261796+00	$2b$12$rwyMx.5LMcgrjTPGFVzB6O/tv0N7A0xvKCpYiZPtszdCD9/wAUW8e	Final Test	\N	{}	2026-05-16 07:38:15.261796
caeaba20-3fea-4273-a176-d323ca82c016	barcodetest	barcode@test.com	2026-05-16 07:42:31.717371+00	$2b$12$BS1ATNSC6kZ3.WyFqk8P2ecYQBmkPnn0.mukhoRxnAiH/2F4Z/fRe	Barcode Test	\N	{}	2026-05-16 07:42:31.717371
\.


--
-- Data for Name: scan_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.scan_history (scan_id, user_id, product_id, barcode, scanned_at, score_at_scan) FROM stdin;
260cfd98-d7d9-4462-a44c-da1f961aa335	caeaba20-3fea-4273-a176-d323ca82c016	\N	5449000000996	2026-05-16 07:42:46.538637+00	78
\.


--
-- Data for Name: suggestions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.suggestions (suggestion_id, product_id, generated_at, flagged_items, suggestion_text, alternatives) FROM stdin;
22b490f9-33b5-4a70-bc6f-6a19234cab2d	29ced7d5-6229-4df4-bb4d-48dc60b3fa40	2026-07-02 07:18:28.162987+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
f65b95f4-f5b3-4abb-b512-f412ee020c0a	b8745d2a-9b99-4ddd-84aa-7bb20bf55746	2026-07-02 08:12:53.910979+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
6dc8d934-9224-49c6-8c02-631836589be6	30e0d4fc-347c-4b44-a5c4-2aa5a8825997	2026-07-02 08:12:54.023111+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
95a5bf54-fe91-4291-a74c-da2dc81d6021	c8908d33-4f71-4fc2-be5b-f67b732916b9	2026-07-02 08:12:54.103295+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
931b71b2-f78a-41b9-b919-31d3443aa57c	88e1e5d5-a5c5-4c91-9a48-c9b1f16b4772	2026-07-02 08:12:54.175226+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
479bb269-387c-4c60-b78c-1d3c522ae82b	7aca1065-5504-4bfb-8f88-6274ebd30ede	2026-07-02 08:12:54.23882+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
604a8fff-f200-4b92-9d43-ea2d66bb3951	11f7ea7c-039f-407f-9ec6-d4db82c6e662	2026-07-02 08:12:54.306351+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
c7929d4f-4e90-457c-ba58-c9328d8b7f02	8a0156eb-d1a6-404c-86c3-543bafbca793	2026-07-02 08:12:54.376528+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
3c3b59d1-0d1a-4bf1-8949-c71d8f732f86	de217d48-5567-453c-a317-9a5c5c5f66ce	2026-07-02 08:12:54.446077+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is moderate. Consume in limited quantities.	\N
1d74d64d-b265-42ba-b32f-c86c6502de97	f1882699-0c1f-41ee-b0bb-6e1d79ec385f	2026-07-02 08:12:54.516958+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is moderate. Consume in limited quantities.	\N
d1e7e3a5-1758-4051-9aaa-ce15064a0918	c54ac431-c9e5-490c-8667-ac93186fb713	2026-07-02 08:12:54.589101+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
c15e707c-6fda-4b7f-ad95-e66fb6d36fdd	83cfb5e1-df1d-4962-a2b7-241e999b11f1	2026-07-02 08:12:54.658049+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
3c0fe289-4adc-4501-b355-70854b1afd55	7aac7d56-7293-4cf8-826d-a33ec7f1de4f	2026-07-02 08:12:54.726923+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is moderate. Consume in limited quantities.	\N
81fd8994-60cb-4836-9bb2-53caf8301f59	a950db18-aa01-4cf3-9222-b90287b5dac8	2026-07-02 08:12:54.80291+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is moderate. Consume in limited quantities.	\N
e49d8479-a349-439d-8981-8c38f6b0c333	528caf7e-7537-4bc9-ab8a-92c3fcf84642	2026-07-02 08:12:54.875621+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is moderate. Consume in limited quantities.	\N
de6b6b74-9520-4ff4-b459-02557c416f0f	76b7b4db-0882-4859-8759-40beb6b8f28c	2026-07-02 08:12:54.946991+00	[{"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
fbbcc98a-b738-4c11-b9eb-9d7d2fc21014	b97be944-3ef6-4d4c-bad9-f377621a5be7	2026-07-02 08:12:55.085439+00	[{"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Aspartame", "risk": "medium", "penalty": 7, "e_number": "E951"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is moderate. Consume in limited quantities.	\N
831c817e-5968-415c-a98a-027beb8bba6a	7237a6c8-96bb-46e7-b6a7-58c19feb52ba	2026-07-02 08:12:55.15613+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
9bc84e40-6f84-4a94-bda0-e89f4b79b600	98247ed6-6f52-4c51-96e0-e77880c8eb00	2026-07-02 08:12:55.217826+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
c3754c80-df6a-4ad2-8cce-d53e30856f9d	8a8b4601-55f1-4b80-840b-61254d455afd	2026-07-02 08:12:55.279933+00	[{"name": "Aspartame", "risk": "medium", "penalty": 7, "e_number": "E951"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is moderate. Consume in limited quantities.	\N
7b032a9b-b5e2-4230-92a8-99324444e05a	98e59dad-10f9-45f1-965f-3c19a6142817	2026-07-02 08:12:55.350141+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is moderate. Consume in limited quantities.	\N
354a5e5a-c0eb-4c4e-9642-e2ac29db120f	3da78728-38a4-45a6-8ba2-04cbed4df354	2026-07-02 08:12:55.425209+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
4319732c-87fe-4789-be00-f7fb9d5125e0	e7ab417d-36e1-4316-845a-6cc40189b2c2	2026-07-02 08:12:55.4934+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
76fe01e6-92d5-4aa6-b948-0b42d9d6f94c	ef256bb1-3c12-493f-80fb-6a1828deadc3	2026-07-02 08:24:45.916033+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4f4f0d51-236b-4ecc-8053-1284eccbf613	a2660452-c170-48ea-9a84-6ed6a050faa9	2026-07-02 08:12:55.561994+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
fbd406e2-8163-4375-a5d7-acba1403e069	11aea383-5b61-4899-afc0-500159a43add	2026-07-02 08:12:55.63185+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
618abb8f-28c2-4322-a0af-58008178c639	2c2e9f21-4d19-40a6-b3b5-961f02017d7a	2026-07-02 08:12:55.698635+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
03b59c19-40cf-4bf1-91f3-a232b843b222	e3233dbf-4158-41f4-b5c1-8bbcbe0938e5	2026-07-02 08:12:55.763772+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
89d88b96-445a-4818-9f94-4c4e00d79f95	bcfa8153-6e2b-410c-84d0-ebc1dc24aad1	2026-07-02 08:12:55.839016+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Aspartame", "risk": "medium", "penalty": 7, "e_number": "E951"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is not recommended. Look for better alternatives.	\N
816c666d-5439-49a8-b038-2df7b3522cc1	8b8fa440-25f2-4fee-a7aa-b035f25c0b47	2026-07-02 08:12:55.909658+00	[{"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
46b362ce-4ffc-4488-94e3-5cb4c56ad548	868be5bf-53c6-4e2e-9c27-152fd9dd4873	2026-07-02 08:12:55.980854+00	[{"name": "Indigotine", "risk": "high", "penalty": 15, "e_number": "E132"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
0749e1b1-0aea-4d5c-a873-9490a9d019df	10cd85ae-ecf8-4d5e-af3a-09414978a7d1	2026-07-02 08:12:56.054381+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
dd094b8c-1634-4c52-a460-0c38875ad6ec	3a3dd6d9-ab01-4366-b6a7-5f5e6cdbc500	2026-07-02 08:12:56.12747+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
78c888bf-456d-4026-a9bb-e944f8f59d8f	5ae0decc-a2d6-4004-b42f-16e118986b0b	2026-07-02 08:12:56.201507+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
17411462-296d-4f08-ba0d-55f1bfacef2c	c7f71efa-3f0c-4cef-b71d-455ac86887a1	2026-07-02 08:12:56.268438+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
841dcb6b-0f1c-4355-a745-5f5691789ce0	593b94b5-33ab-4cfd-9ac8-107cfc85813a	2026-07-02 08:12:56.331218+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c031957a-9c5f-4e08-8ba4-7993beda3254	adfa9f97-5389-4ac6-a8b6-0d7753711db4	2026-07-02 08:12:56.39547+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f62cf0d3-6b5f-4ef6-85b2-62a45bd1d4d4	07029a5e-4e69-4794-8c55-402750e442fd	2026-07-02 08:12:56.463257+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8a314c9a-7939-4c5b-aad7-f42d5bf7168e	0c6fa9e8-0a37-4051-81c6-f2ea7639fac3	2026-07-02 08:12:56.529598+00	[{"name": "Sodium Phosphates", "risk": "medium", "penalty": 7, "e_number": "E339"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}]	This product is moderate. Consume in limited quantities.	\N
b0bfbb21-61d1-4c46-a36b-8967cc905462	96595679-b228-47d8-9145-5abdc1fddecb	2026-07-02 08:12:56.5971+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
577e638a-8e87-45db-96ad-941a2a80a8bc	dc20f1b9-ca02-4933-a099-79a933065959	2026-07-02 08:12:56.663814+00	[{"name": "Tocopherol Vitamin E", "risk": "low", "penalty": 2, "e_number": "E306"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
ccce8d8d-16b5-42f9-aa15-1bed09ad8a8b	6ecd8c34-e3c0-4d76-a0cd-448a01b4f506	2026-07-02 08:12:56.730849+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
cdc94f0b-e704-402a-bb3a-be0160c3e957	0fad246c-7e5e-4317-b06b-6472238b5758	2026-07-02 08:12:56.796912+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1e3f555b-81c4-40ca-b729-969ab312fb4d	6f15eb4b-a7f1-487b-a639-40eb9ded70d9	2026-07-02 08:12:56.86176+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
8912c476-75e4-4aae-a46d-9aef80492ca6	0aae908a-fb68-4814-abd2-0dbf266d4aa9	2026-07-02 08:12:56.935605+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
da2aece3-b8b4-4c16-ab1f-fc4f5ac944eb	b4deeab4-bb72-4dde-b3fe-8cca2684376b	2026-07-02 08:12:57.010645+00	[{"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
e8e0a639-9aa7-4db3-a184-9a267fd86030	1ca690c3-89fa-432e-8b75-96404d456a33	2026-07-02 08:12:57.081903+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
0a741d48-ded5-4ba9-ab7e-fdd5dc05b172	fbae416e-96ad-47e4-a068-954530d194d5	2026-07-02 08:12:57.155904+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
c6961d4d-3619-4b9e-98e2-fd55d5c765ac	b427de3b-5fa4-46b4-af92-f528730451ae	2026-07-02 08:12:57.227719+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
835ae7c8-b59f-4e40-a7a8-6def02290647	d220336d-8a80-4747-8eb4-490b9ede7470	2026-07-02 08:12:57.293128+00	[{"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
3eaea523-f300-41e9-9cec-3af3e7beebbc	2d67948e-8bcb-4d37-8489-92b0b1e5a34f	2026-07-02 08:12:57.358777+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}, {"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product is moderate. Consume in limited quantities.	\N
cae403a8-9f3b-4fe0-b3f7-dfb519bc4335	1f18ca02-2d63-4157-b119-40c7ed81b599	2026-07-02 08:26:53.676029+00	[]	This product is moderate. Consume in limited quantities.	\N
1cbfc411-76c7-427e-b9cf-490df926640e	e084db98-b176-4f8c-85ff-9acdc172e1f8	2026-07-02 08:12:57.428014+00	[{"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
202ecb6c-31c7-4d45-981a-ca7f46fea133	def06114-32e6-4f53-9a40-807a88175478	2026-07-02 08:12:57.498309+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Ammonium Carbonates", "risk": "low", "penalty": 2, "e_number": "E503"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
9302915a-4de9-45c6-9cef-c10287110eed	2acb8ad8-71fe-4af4-bb90-5b5ab5f5344e	2026-07-02 08:12:57.567671+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is moderate. Consume in limited quantities.	\N
a06b9ae9-ee8b-4042-a873-626382668c3d	9e604c81-cb6d-4394-a090-99cae0e3e1d0	2026-07-02 08:12:57.637562+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Beta-Carotene", "risk": "low", "penalty": 2, "e_number": "E160A"}]	This product is moderate. Consume in limited quantities.	\N
a2fb48ff-d5cb-4c77-9a1a-21942812753c	837cc3bb-65d8-4e2d-bd61-9ff4f2cb2dd1	2026-07-02 08:12:57.710987+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
9050fc3f-fe03-4355-a672-38166006c9d1	782ae9e2-c653-46e0-a81c-90cd8d1add08	2026-07-02 08:12:57.782737+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}]	This product is moderate. Consume in limited quantities.	\N
e85b56db-ba26-4267-9d8b-6bcb41f5c1e7	9fe1eae7-7d1e-41bd-b2f4-ad54d6761c86	2026-07-02 08:12:57.849976+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is not recommended. Look for better alternatives.	\N
72b7101b-c269-41dd-9c91-5191c8aa582a	a109051a-cd9f-44a4-9dcd-38cef6a1c3e2	2026-07-02 08:12:57.912264+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Ribonucleotides", "risk": "medium", "penalty": 7, "e_number": "E635"}, {"name": "Beta-Carotene", "risk": "low", "penalty": 2, "e_number": "E160A"}]	This product is moderate. Consume in limited quantities.	\N
9ce9aef2-3e6e-4f1a-b17b-9bd054fe387f	ebc51a53-e6d2-434f-826e-b49c7235d39b	2026-07-02 08:12:57.974365+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
188838cc-7e5a-49a5-ac86-9543460a2333	5f9633c8-edd4-4c16-a7bd-67c1b4ec2d08	2026-07-02 08:12:58.036529+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
b30436d9-5bf9-4d95-8bc8-a48d962dd12c	ea5f1802-7015-4b3a-a8e3-3ea16d07bd27	2026-07-02 08:12:58.105831+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
c601863a-6618-41a3-bc83-dd335b3618cc	7b0d94bd-3f0f-4b67-a6a0-52590e7fe615	2026-07-02 08:12:58.175812+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
6108d082-113e-47fc-8139-fc961c2727c0	bc8b4f57-4b5d-4874-ac68-79ffb61f4465	2026-07-02 08:12:58.246796+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
9fd02d9e-1cce-4077-bb62-a4828274f4ed	5c896f21-076f-438c-8eae-91f5499eee0c	2026-07-02 08:12:58.315609+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
a6e239b9-ce41-44e5-9091-e93daafaecc5	f6228d5c-3896-4f06-95dc-5f1162692b88	2026-07-02 08:12:58.386986+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
3745446d-fb88-4b0e-ba22-c82cefb54bcb	72165aca-8c84-4afb-b54c-44c121e046ea	2026-07-02 08:12:58.456736+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
25857023-b6c8-45ce-88c6-f3e720369062	7ad38d07-c78f-4616-ae29-9e00d4c24424	2026-07-02 08:12:58.527962+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
79f758d9-bc60-462b-95e8-e16fe9253c16	71ab9d48-6394-4bb4-be67-4a0e48a29cf2	2026-07-02 08:12:58.601942+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7ef6bfd7-cb39-4f9b-aac5-1a41d71d412e	b61e1c23-43be-4988-9323-e36ad28f6530	2026-07-02 08:12:58.674108+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dc5f6181-08e9-414c-9d37-565977670f54	8661597e-6c0e-463e-a239-d785f92079a3	2026-07-02 08:12:58.742661+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
73e2ee2f-0db2-4f59-8fa7-ff93fa58424e	22cda7e9-390c-4a38-bc4d-9c8679a3ce1e	2026-07-02 08:12:58.811322+00	[{"name": "Tocopherol Vitamin E", "risk": "low", "penalty": 2, "e_number": "E306"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
d56072e5-960a-4695-a7e0-9abeac9153a2	a885ba16-d8b3-44c0-9bb8-445e15a37710	2026-07-02 08:12:58.881675+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8d3a2e2f-1edf-42da-a70e-20457a315f40	58573b7f-c9cd-4a51-a93c-a0c25a4ccba9	2026-07-02 08:12:58.948704+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4dcb1052-47df-48b6-95c8-3f616e58d294	0520372b-d05a-4db5-a268-969456d20148	2026-07-02 08:12:59.017808+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f4059d46-b095-4da8-9426-225431e4a0ad	5745e1f4-3dcf-468a-9af8-5f64465c8288	2026-07-02 08:12:59.092394+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3bdea33c-6f5c-4aa3-8f5c-334725ef6e33	d7152f30-1060-4f9f-b040-dd31845dcf54	2026-07-02 08:12:59.162034+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2fc009b9-5345-43d5-8a16-7b429d0e2eb3	07a869fd-8f64-4568-975d-c18bdab9368c	2026-07-02 08:12:59.229409+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
8c9132ed-555d-4e13-9993-3cc80d20b646	2a02fe47-1d3a-417b-b6fd-ab4e066763ec	2026-07-02 08:13:01.116702+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
d01d8537-78a4-4a98-ac51-277b0f0332ef	ca2dfa92-b7a3-4699-a91d-282439f916c2	2026-07-02 08:12:59.296067+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
7afb4e62-8ffa-4799-bb20-6aa72297b69b	7c913e74-b472-45a7-b9b5-6633f3f1e7e5	2026-07-02 08:12:59.368754+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
fe6e6b5a-86f1-4910-8909-9694f41e8810	6d59b34c-6b80-4174-a13a-84ddc97782da	2026-07-02 08:12:59.44153+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
d6aa4236-73d0-4ab5-bf0f-4b3c9b14bb32	4ace2e61-b0a8-449f-8d17-1027bfe9b7be	2026-07-02 08:12:59.515513+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
4ce38941-135b-4065-8e7c-e49979506d5f	7a233423-2bc3-4f55-b048-af6fa2ea7d07	2026-07-02 08:12:59.586652+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f0ebfa08-2062-4a48-b011-2f08f2a36fe3	10db3f41-4bc5-4592-864f-a573db276629	2026-07-02 08:12:59.657859+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1da23dbf-15e9-4e10-82e3-eb9cba988102	e24664c4-afe6-412d-a4ad-5e8806b2e6f1	2026-07-02 08:12:59.721758+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1e5f1be3-6fb3-4618-84ae-7b34c41b7299	c262857f-0866-4946-8c41-ca91ec6925d9	2026-07-02 08:12:59.785179+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ba1e4af1-b205-4f43-a3ee-1a7da560e563	647b64ac-6065-48df-9c21-55b4b4e10615	2026-07-02 08:12:59.850183+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3ae0c275-ac55-4f2c-8983-e037590f0593	22a8eb82-6196-4475-992f-d48cf980ee5b	2026-07-02 08:12:59.917007+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0f05c0c0-2dc1-4d32-a72b-7b3ef4c3e43a	160d34c7-200a-49fd-adec-b4d944367124	2026-07-02 08:12:59.984065+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4d6c518a-8abb-4caa-92dd-d30cdf1651aa	df2840a7-935d-45ed-b970-61176920740c	2026-07-02 08:13:00.051533+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e2ae5905-7a71-4f25-8f2c-9cdda744f216	c4820084-a58b-4457-a7f3-966da8e54589	2026-07-02 08:13:00.12203+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
4a6e9392-b40d-4861-8000-daf01190926c	828cfca5-521e-4a9f-922c-1a75f5a2dbc2	2026-07-02 08:13:00.194811+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
2db5f9c7-d8cb-4e48-adca-393158cfa6e5	07df5678-ddcd-4429-9328-12e1a9d7bd20	2026-07-02 08:13:00.266754+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
f2f40a21-dce2-4356-9cf9-2e9925e60a1d	5b64b1d0-30e7-416a-ab20-8f9d4427cbf6	2026-07-02 08:13:00.335287+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
b4a45691-9b52-41bc-9d60-f453d91d35bf	66654607-1f40-4148-bf10-ccee08a4e498	2026-07-02 08:13:00.406443+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
3b817e36-47e5-4c94-8773-7edc81253c26	c5735fb5-5e76-4fc2-93b6-56636d574fbd	2026-07-02 08:13:00.477581+00	[{"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
785f75f8-e3ea-4645-85af-9c010c364ea5	1dd36b4d-edd7-4e4d-9331-73469a92d1bf	2026-07-02 08:13:00.548728+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
92f5e496-b995-41a2-b5b2-edcc2739efc6	fb9d6b62-3d82-4622-a387-14e8a3b8b0c2	2026-07-02 08:13:00.621584+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
904d4e19-21e3-45e8-8e94-514388995713	6ba27efd-d717-4003-9834-e81f7fa248a4	2026-07-02 08:13:00.693548+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
317d594b-5bea-4978-93ca-288d1797ff82	2ff1c472-89cf-4ab3-ac21-cb575343840b	2026-07-02 08:13:00.767001+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
430f09fd-e25d-4d28-9836-c90aedfbbf64	c11ed91b-ee4c-4588-9295-f7674d973920	2026-07-02 08:13:00.839261+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
8976a89f-7edb-4ffc-874f-37f441d457b8	b1fac4c9-249c-49e4-9da1-0e4465d6dad1	2026-07-02 08:13:00.910112+00	[{"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
dbcbd9a6-77b2-411b-9689-804a4f1ffb42	050a4d93-3a06-4761-b9b6-fe214a82804e	2026-07-02 08:13:00.977662+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
bb7d121e-4a12-4065-96b3-31352186bf0b	3d4f5922-de6f-4af7-8371-ee499f62ab3c	2026-07-02 08:13:01.046389+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
c399f128-af36-4664-939b-a775ab168094	559bd87b-452b-4c93-8497-9dde13c7a4ef	2026-07-02 08:13:01.185367+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
f2ac8ba5-1565-4e9a-bf78-82dc2110c7e8	1e2c62d9-0b97-4d61-8633-87e595712c25	2026-07-02 08:13:01.252361+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
683c75c2-a755-439d-9e12-94b62e20d6c6	89b8e3d5-3942-406a-b503-596a8d550025	2026-07-02 08:13:01.318805+00	[{"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
1406efbb-730d-4857-a2e9-1c070b7e5867	ba9965cc-1891-44a3-ab55-083f44cffd6a	2026-07-02 08:13:01.389929+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
685e0f7f-9c52-45ea-8bdb-1f68d1da7db0	ba036528-1e11-40fe-9dd7-f73a16267ed5	2026-07-02 08:13:01.462038+00	[{"name": "Tocopherol Vitamin E", "risk": "low", "penalty": 2, "e_number": "E306"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
89638ce7-971f-48eb-9ff6-7449f7d7bcb7	4bef7dae-3de4-4dc1-899b-fa499e263d92	2026-07-02 08:13:01.52687+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
c067aa57-8ece-4756-944a-86ccaac155f2	cfb1b60f-eafe-4e3f-8e6b-fce0f411b236	2026-07-02 08:13:01.589499+00	[{"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
122a2214-5ddc-4740-8d96-bf4826e2d720	f6dbbbb1-dd90-45aa-bbc7-4383729fee98	2026-07-02 08:13:01.660382+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Ascorbic Acid Vitamin C", "risk": "low", "penalty": 2, "e_number": "E300"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
82674ba3-e4b4-4120-a63f-c58e38e76fd6	3559afca-4190-4b02-b069-dd47a8164c52	2026-07-02 08:13:01.73302+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7c6bc2bb-7a75-42f5-877c-1df98e42418b	a5857b2e-f0fb-4808-ad9e-47a250033109	2026-07-02 08:13:01.802042+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dc346b79-00ec-4564-ac4d-b789e490f713	6fbfe6cf-89af-44d5-9f06-396873edd3b3	2026-07-02 08:13:01.872337+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
db6ca9ef-96f5-48c1-8ac6-69b404183914	d6337681-ba37-4f7c-8b2c-5edb3558c2f8	2026-07-02 08:13:01.941813+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
55fd1201-318e-4d29-91df-e5f3fa19be20	d2cf56be-f41c-479e-89e8-bf1b4f393be8	2026-07-02 08:13:02.008402+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2b202d3d-ab7b-4681-8998-fde68f57c544	82ec6dca-c289-4fc8-a376-6942d27ed7c4	2026-07-02 08:13:02.073109+00	[{"name": "Tocopherol Vitamin E", "risk": "low", "penalty": 2, "e_number": "E306"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
307a2972-3ad8-4f9e-a3c0-4536826655bc	ae8046fb-18d2-4a6d-aec5-dc933fe149fc	2026-07-02 08:13:02.13581+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
3b2e2039-a398-475b-bc90-3433c8e6ad24	09737bac-1db4-4042-b064-2e070c3f92df	2026-07-02 08:13:02.20104+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
eb864917-faa1-4621-9e71-a6f79184c95a	c9d92473-a96d-4958-af57-125523365490	2026-07-02 08:13:02.266651+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b49097e6-a6fe-4f76-a0f3-9927cf679d72	b9ec4642-efae-4baa-a16e-2dd36ab7650b	2026-07-02 08:13:02.330473+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
88b3ba71-d59c-45f2-8251-0e7c37abfb7f	6ad20bd4-d72a-49bb-a730-8c61f814461c	2026-07-02 08:13:02.393896+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is moderate. Consume in limited quantities.	\N
fd69eca7-d44f-4528-824b-cc4c2efc44cb	b9347ad5-f3fa-405f-b716-e396523b3148	2026-07-02 08:13:02.466248+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Phosphoric Acid", "risk": "medium", "penalty": 7, "e_number": "E338"}]	This product is moderate. Consume in limited quantities.	\N
1905a1af-aed5-4bac-9d03-bfa7b815e0b8	e0cf5436-3537-4b24-a535-4cc60925e1b8	2026-07-02 08:13:02.535616+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
7b87822b-3e73-4eb9-aae0-4749f6e3475b	16110c8e-120a-4b96-be66-35f2615743df	2026-07-02 08:13:02.597768+00	[{"name": "Paprika Extract", "risk": "low", "penalty": 2, "e_number": "E160C"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
14334769-60ea-403c-a53c-07f8c88095cc	28f658ed-6b28-4199-a571-910423efbf57	2026-07-02 08:13:02.659943+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
8e9655f2-b362-4e4a-9869-f63b1de1948e	88f106a2-3932-4b23-8157-16bf9fa0cc10	2026-07-02 08:13:02.731571+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
9f29913a-7c54-4ca7-bd12-b45c2ab03af3	c253b8f2-5879-48ec-ae8e-3daedbb4d377	2026-07-02 08:13:02.80477+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
141f2514-9a23-43e8-8216-68c5f4d244f1	42151194-65d6-4474-9da1-4cc8d895fee8	2026-07-02 08:13:02.87703+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
46087940-3044-4f31-b733-855700eaa20e	3c2093e8-1380-4372-9f5c-b043e1c3f53e	2026-07-02 08:13:02.940761+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8e3194d5-b93b-4ae5-92df-44bcb3814379	e579a641-ae62-4e1f-aed7-a0588f4e198e	2026-07-02 08:13:02.999649+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3b9f59fe-9e59-4a32-856c-6a265c938422	bbb5ecd1-a7ba-437d-8dd2-f9d750ae6cb6	2026-07-02 08:13:03.062893+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
95bb61b8-c372-4fd0-bde3-6f2381b90baf	b6ba4b00-8c7c-43af-9426-0c1c774b356f	2026-07-02 08:13:03.131161+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
c11c2674-3784-4048-af1d-e2f5732c18ac	0cd2a7f1-88ba-4b8d-a6a8-4056d9c37c2f	2026-07-02 08:13:03.203227+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
81ab584f-800b-4be8-8504-ac6b3ce15d82	dcd81afd-996d-4250-85c2-fa5be43a3ece	2026-07-02 08:13:03.274678+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
786a50bd-fd1a-47ea-bf0d-cd1d9d95bab3	48021e7c-0eed-4d3e-b85c-ea4dba525465	2026-07-02 08:13:03.343591+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
dd0e59d7-a133-4d3b-a6ef-c8791fbd86d9	b13f26f1-b5bb-491c-8af4-a83ca94a7c3c	2026-07-02 08:24:40.039103+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
f8307ad9-0b75-441a-9693-c29f70b1ba99	f7eea792-7008-4cf7-964d-3937ed7cd634	2026-07-02 08:24:40.167533+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
f889fd00-f08d-499c-93ba-b5a4e3a65e55	59a2f4f3-b096-466e-af62-2b73006c59ad	2026-07-02 08:24:40.298299+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
5de0e98f-9bfe-4ffb-b1d4-8d1fc72fca04	196fe87a-b9cf-4cde-918e-e57e2262d433	2026-07-02 08:24:40.42176+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
bafb7c43-652e-4c35-a02f-cb7c736e698b	e8ea367a-6f80-41aa-bc43-6ba73665d462	2026-07-02 08:24:40.549328+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
2d7d7d1c-d4eb-47f4-a020-1119225265c8	a5604b96-7bd9-4f6f-a2c1-030a8a086729	2026-07-02 08:24:41.475074+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}]	This product is moderate. Consume in limited quantities.	\N
1f5cff3a-b14e-4101-a59c-e7c925d0caab	bb5ce0a0-b859-4b19-9b66-0eb8b719159e	2026-07-02 08:24:41.600832+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
92393777-624f-46bc-a6e7-5764d646f0f3	2bee57b4-f635-4c96-8ced-47b8f45102a2	2026-07-02 08:24:41.728276+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
12baf808-db0c-48dc-a906-1424e5a1f4ab	9a479e93-ba48-4106-b56e-1b5392d51b50	2026-07-02 08:24:41.85613+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6826b45f-750a-4cd1-a64d-128bc19180de	b2a43f29-577d-403f-a550-1c3f21d196b6	2026-07-02 08:24:41.982942+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
23172cbc-19c3-4393-bd65-6e18ddfab932	d4e4dba8-a298-4a96-a1e8-2ec21a3c33bb	2026-07-02 08:24:42.112596+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e6fba136-357a-4e41-8cfc-f2a1c3af61d9	b3614db4-31ce-4b1f-b5ff-a0fe8e4e2be9	2026-07-02 08:24:42.240102+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
aed1559c-9853-4d69-8955-06186206615d	ca45e81d-d8b9-45b6-9c21-ededce0796b4	2026-07-02 08:24:42.367415+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
bfc60e68-9a31-429d-a117-9bff0055d6db	cddb21b3-739e-4e2c-be70-032d9109eaf8	2026-07-02 08:24:42.494804+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
e274c1cb-41e1-4851-b7d8-613fa66b0fe2	f52db7ec-d828-4fb4-b538-11053edfb506	2026-07-02 08:24:42.622162+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1c213c7d-4737-48f9-85b6-802a51d5e7ff	9f77c88a-bb42-4027-9ac0-6194a6364525	2026-07-02 08:24:42.74886+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
06aae890-ef46-44bd-b062-8b051495b1cb	a00468b3-7a91-4060-bd22-55f14e578e22	2026-07-02 08:24:42.873921+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
248a71a9-a4ea-40b9-95a2-4342c60e85a3	ad0a8d86-fc44-4f08-84d9-bbaa750a5f5a	2026-07-02 08:24:43.001572+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f0275d89-7045-45d1-acaf-0d0cbb781766	e7cbc2af-cc23-497a-a28e-e7481c5980b4	2026-07-02 08:24:43.13005+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2da3eb07-ef81-4be2-8a3d-770cfda36cb5	586930c0-1e4a-41d7-bb9f-18c3a6e7d5da	2026-07-02 08:24:43.258162+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2f096e6e-5e3f-493f-b43b-10def7c4aeca	f7da59c7-69c0-43e3-b7a0-861c7f2ba9b6	2026-07-02 08:24:43.386096+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6a2238ad-f051-4ae7-b90a-78d13a368d74	f23ab0a1-cc0b-40d7-9471-13c5424208a5	2026-07-02 08:24:43.511697+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
72aec340-92d0-4fff-873e-572a308ac99f	f313998b-9d92-4510-9d50-de8b4cf699c6	2026-07-02 08:24:43.636956+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
478569d7-3258-457b-814b-709f8f072e93	7d028ee0-1fdf-458c-8769-358863ae9681	2026-07-02 08:24:43.766849+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1556117e-6d6c-4de7-8901-afc6ef7b6573	38db3169-fdeb-4d8a-a3f8-a2548ddcf9ff	2026-07-02 08:24:43.888784+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a5e26453-016c-4a0f-bc95-decee007f240	69ecd505-0e6c-41e2-9f3e-2bcb782c57a0	2026-07-02 08:24:44.013544+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
8c8ce7e3-960a-424f-8c98-9b0d21df82ee	12f6949b-3c00-4f80-8450-e53fd073295d	2026-07-02 08:24:44.139761+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a37638c3-1b43-4952-9080-776046cb2ea4	9da4f0f1-31ed-452f-8235-330c48f5944a	2026-07-02 08:24:44.267184+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
003337d4-123c-40e5-892e-55328371e21b	52b994c9-b354-40b7-86bb-cd6ede222803	2026-07-02 08:24:44.396427+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
84306e30-73fa-4ccf-a135-ff90f10c0d1c	42c25916-0d40-4c08-976b-7851c7e3c4fd	2026-07-02 08:24:44.524561+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8967301e-1a52-4486-a9d6-3498ddb6cf08	2c7dddc5-db58-4a4d-82d2-da7a6b593ac7	2026-07-02 08:24:44.651408+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7724bcff-6a45-4ce5-8aae-7a378f38978d	e117826a-dbb6-4416-84aa-b975a1419c4e	2026-07-02 08:24:44.77609+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0ad3f8be-6ca1-4172-a4ea-9bcdfd555192	eba144f9-5f91-4d0e-b2d9-a22db3823584	2026-07-02 08:24:44.90405+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
774c427a-2a67-48a2-af9b-b2a18c902d9e	7bc06a6f-b43f-4e52-a520-a240c3b53fb6	2026-07-02 08:24:45.028875+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
67ba76cb-5f39-4c16-8045-3ac3720abc36	392a3bcb-eb07-421c-ad8d-7a400b7af7a6	2026-07-02 08:24:45.155183+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fa3aa89e-5e0c-42f6-bf48-897e51faa2c9	c485fb77-74d8-4144-8bbf-0b61bdc906c9	2026-07-02 08:24:45.282414+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
56acb94a-04d4-440d-b611-1464b02a9ddc	4139c97a-113a-4a3e-82a8-65aaabe3dd43	2026-07-02 08:24:45.409605+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5e1fce8c-669b-402d-b118-a0a4f9334329	add3fa61-a92d-4b74-9221-5e63d4add208	2026-07-02 08:24:45.534991+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fef99481-7930-45f7-99e7-28bbe178fcb2	2c10ae46-940b-43e6-88dd-ca899e797833	2026-07-02 08:24:45.661438+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c75d96dd-edec-469f-84b0-056817d9b8ba	2a25f3ba-3392-4407-b49d-82b0e277e14e	2026-07-02 08:24:45.788927+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
18b0c6bc-4571-45f9-adfc-fa115c8a61a8	668b2a20-e6e9-4fb6-b2ba-30b94b1e44ae	2026-07-02 08:24:46.044776+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a39efc6d-466b-4f72-b746-37124cc618a3	582289da-cf0f-45e0-b5e3-5ac8826ad194	2026-07-02 08:24:46.171695+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8eb86fa2-f378-4f43-b2ea-6fb5559374d0	3bdb075f-5ec7-4403-9dbf-a78365172caa	2026-07-02 08:24:46.298946+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4f9d9865-76c5-45d9-b053-5b9335c67581	7fae53ae-333c-4546-b345-52a198492014	2026-07-02 08:24:46.424588+00	[{"name": "Sodium Citrates", "risk": "low", "penalty": 2, "e_number": "E331"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
de7a68a4-55b7-4f84-9a0d-021617d7f030	b2df4ed4-e3aa-4309-9958-99920d890d18	2026-07-02 08:24:46.554116+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
41a05c44-23d3-460e-af44-c75bd65c4e10	c89a9470-9981-4f5b-9c77-d6310829652d	2026-07-02 08:24:46.6783+00	[{"name": "Sodium Citrates", "risk": "low", "penalty": 2, "e_number": "E331"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
ce8b3633-e8b9-4994-9b5e-bdb5698ee9ea	c4f593fd-fce6-4c8d-9ed6-e81ab6a09c62	2026-07-02 08:24:46.796741+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5730078e-feb1-4d8e-96a8-d94a08ca648e	8d74fae0-a49d-4c08-968b-8767ba0dd71d	2026-07-02 08:24:46.923538+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
9d25e62f-0f56-4d7b-9c52-7182b67c27b5	d7185766-4cfb-450e-80e6-b723d9dd0f0c	2026-07-02 08:24:47.05267+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
4cd7b554-7e8a-4144-a52f-2b270f4cfde9	0bd87317-09d5-4e03-a7ed-89041e3177c7	2026-07-02 08:24:47.182761+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is not recommended. Look for better alternatives.	\N
8f6c9b60-b2ed-45fc-a130-bf5151e040dd	711b9359-dade-4c63-a9cb-31990dad39cd	2026-07-02 08:24:47.315435+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
83254177-98ae-4852-a7e6-4b33b0ebb100	a8b8d023-6c15-465e-84d1-c6ea565748c1	2026-07-02 08:24:47.446163+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is moderate. Consume in limited quantities.	\N
9e8b1a3d-258b-4274-8268-76285369c85e	d8f8495b-1ef2-4770-871a-66f24dc43fe0	2026-07-02 08:24:47.573018+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
e9287cd3-1602-4e72-bd32-1c75972bdf35	30079409-cb2c-4581-aeea-521c38fb47b2	2026-07-02 08:24:47.701782+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
a7103c5e-7847-4a2a-9427-21916dfffccc	e104d706-a920-4569-889b-f10d7130a61e	2026-07-02 08:24:47.825942+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0fe2040b-16ae-4197-8437-75bff64d1e6d	5408272f-e279-4978-adb7-116c469e11d5	2026-07-02 08:24:47.948538+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
6ad91aa0-e9bf-46e2-8008-7d1b3c546a12	5945762c-b46e-43bb-8f0b-d7d7fd25836b	2026-07-02 08:24:48.070899+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product is moderate. Consume in limited quantities.	\N
edc5303a-ba0d-4fc7-9ce3-b09f9440f0fe	bf4b4ae0-0444-44bb-8741-9649eaa002a7	2026-07-02 08:24:48.185654+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
db419f3b-6ca2-4d51-aefd-6047d6a383c3	56b33d5e-6588-49a6-b847-17967b7f88c5	2026-07-02 08:24:48.309425+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
12d02061-aa35-432c-8965-fe142a7b5f87	f2cc5bc0-e450-487f-83c9-947bcf17a22c	2026-07-02 08:24:48.427632+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
d825efed-4fda-4009-9af8-ad1162f26401	8f8862fd-0cea-4081-b351-0d061dd576c9	2026-07-02 08:24:48.547919+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
d60357ed-dedd-45fd-b646-9e26ca668f26	c45bafbe-e167-475a-92d5-930c7ad9b9ba	2026-07-02 08:24:48.672008+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
d763b0b3-ed51-4c35-a441-a02cd02a8bbc	967f3c8e-54b5-4d19-86dc-7803f714b7d1	2026-07-02 08:24:48.794946+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
db467bf6-7d09-4ad9-9ad6-16e7ec8440b6	0812499b-42e1-422e-b24b-e4ccb72fca2d	2026-07-02 08:24:48.922277+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
b171ba68-fcab-46f9-98fc-19c9c3c089f7	8c6779c2-b82f-404b-9387-1475eac99313	2026-07-02 08:24:49.044003+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
2c1e5731-6d41-49d7-82e9-fe9a8f128891	a4d1f3a9-c003-4f1d-8a58-503ddc54a04f	2026-07-02 08:24:49.169519+00	[]	This product is moderate. Consume in limited quantities.	\N
ea09d04a-e1b2-46eb-8bad-53e67c13802d	27b3b5ea-fca4-4a70-b110-b882755fbd6e	2026-07-02 08:24:49.300636+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product is moderate. Consume in limited quantities.	\N
3dd3e213-606a-4ba0-a28b-f7c0b9911c20	b3f74984-6a05-47eb-a56d-407e2882080f	2026-07-02 08:24:49.417441+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9709ed5b-4753-4932-8e04-ff0814df16ff	30c18bd0-e790-4031-98d4-75aa4168bdd5	2026-07-02 08:24:49.540671+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3e3d9176-5ada-4932-89de-db36272f672e	e9eb3314-26af-48d1-a028-2a1735045ef9	2026-07-02 08:24:49.668973+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e9534b99-01cd-4229-9852-289c08602833	746b117e-48e9-4aab-9209-b11e8eb1256a	2026-07-02 08:24:49.801628+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a32c57b3-fe65-4eba-9712-e44e39c08d30	b2fd9e37-f9b8-4a36-86c4-8559520e5ac1	2026-07-02 08:24:49.930958+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
33dc4861-7658-4b92-bd62-6d939915527f	05866fd3-2dfb-4931-bbf0-fc2b40af4015	2026-07-02 08:24:50.061382+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
133ad847-75bc-428e-b963-811dadb9aa15	f4fdc510-8ec4-4191-8865-338f8ba4b119	2026-07-02 08:24:50.192648+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
680cb8af-7167-4127-a4d6-6449f3c4d264	3f888c23-74b1-4ffb-a997-9679b7bbfcc9	2026-07-02 08:24:50.31874+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dfaac0ab-3ed7-4758-93b1-8ec2781e38d3	348f8ac1-0d2c-406d-a830-33374f9f3eab	2026-07-02 08:24:50.446711+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
babb5a19-006f-4782-94e6-4ff10965c9bb	3fc9f710-197e-4fc0-a1c8-4403e30ec786	2026-07-02 08:24:50.574544+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ec44c19d-20aa-4608-82db-15349dfcaa9d	c5c25f89-d527-421d-80c6-eaa1ef0a5bab	2026-07-02 08:24:50.701423+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
233fb317-ddaa-48ab-bd26-c33d60416b65	da8a20ab-9721-442e-a48c-a0f17f40e1a8	2026-07-02 08:24:50.829603+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
62d03e86-e844-4e86-9314-202f8166dab9	ad86f8c5-e9c1-479c-af7c-313c482ad139	2026-07-02 08:26:25.46786+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
bc90d023-8dea-403b-b799-dd6a657de9f7	b4244120-1d5a-4534-9c60-da5f36ef7ee9	2026-07-02 08:26:25.594511+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
f1c47dd2-c3c3-452b-a3e5-642f59ec612b	91d01be9-13ae-4d43-9bcd-ed4f43464818	2026-07-02 08:26:25.716978+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f2397376-59d0-47b5-9030-e4ca360cc4a1	dba9838f-cd5d-4716-999f-bb7917e38ae1	2026-07-02 08:26:25.840297+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
827731b2-1eab-43b7-a8b5-60c37a8ac47f	00ad2a3a-ca13-4e5d-80a8-8b0e45a2a4d5	2026-07-02 08:26:25.962835+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b96bcfa6-e4ee-4065-9b7d-a177b7e7e17f	9d64a6da-e1cf-4911-b21a-8bf889352200	2026-07-02 08:26:26.08784+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5bb48ce9-b8c3-468b-8ee8-b82c59f4b17b	e12197e9-3bab-4173-b6cb-d519e6fa422a	2026-07-02 08:26:28.716913+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
a91f83a0-8d7f-4e03-adc9-877ac98416f4	a57658b7-d359-4ea7-9802-7c8a9e0358f4	2026-07-02 08:26:28.843683+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
860d00bb-b17a-41b1-9cea-393ce879b713	59fdcf87-fc00-456a-81f9-07d95d063a73	2026-07-02 08:26:28.967258+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
12058244-d026-44ae-877b-42e6f86d3495	6b366c62-8dfd-4e10-b33e-b0bed9c108af	2026-07-02 08:26:29.090989+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c530fcb4-8eb7-4255-b94c-dacddfc1ed21	09bff28b-83b6-4619-b406-5d80bee5f2dd	2026-07-02 08:26:29.216338+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5bbb524b-22e7-4047-b115-83eb9166c7d6	4d8ed6aa-8321-4617-a82e-30fe0566c1f4	2026-07-02 08:26:34.379178+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
563f969b-ff91-4ebe-86d8-f07464ceab7c	44a25c78-4655-4adc-9ccf-3f62cf877dde	2026-07-02 08:26:34.507917+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
c0c60320-6742-4138-bb43-c51849cb2959	646e8597-d4ad-4feb-ba67-3f831a5afe58	2026-07-02 08:26:34.637855+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
70e0ff65-90bf-4d5a-8a95-90cecb9f8bff	b1370922-5d96-4009-82a2-23e9bcac3a41	2026-07-02 08:26:34.768309+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
68180eba-bfde-4bde-81ee-af9026ab47ca	c83192a5-8fa5-42c1-9980-56767fd0fb62	2026-07-02 08:26:34.890509+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
3e64e00e-0b3f-4d27-8fbc-7f1c4847c451	6d273774-54fe-4ab9-af6a-0c31a6ab729c	2026-07-02 08:26:35.021465+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
6df52cab-a154-4a7b-8f88-7cc31225314d	eb707302-2192-45d5-988c-511a1e2e15ae	2026-07-02 08:26:35.149771+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
fbc00632-c58a-44d1-8ff3-32e9b01b6f60	1fd9f1a0-1909-4694-a8ad-0f0154c47da9	2026-07-02 08:26:35.277261+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
edc09fba-c92d-4897-8660-a18f135deeb1	4d637007-f473-4944-9ba4-b7a58ae3257f	2026-07-02 08:26:35.406528+00	[]	This product is moderate. Consume in limited quantities.	\N
f3fa13e5-5b9c-48ca-ada7-313b98da135c	8368af0b-02ae-45ee-aae6-f43fc1571b94	2026-07-02 08:26:35.533454+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product is moderate. Consume in limited quantities.	\N
de78bbb7-6274-4eaa-9338-0f018c0953a9	c6c226d8-1b9f-4bac-9e4e-e168198eb098	2026-07-02 08:26:36.062114+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
bd56abbc-714a-48f9-a033-3fad517fa7c3	27cb9dbb-4faa-4379-ab56-238b82913a48	2026-07-02 08:26:36.191818+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
1b01764e-67d8-4cfa-8e07-cd56cfe0347b	ee1eb2ab-9a0f-4827-aed5-e6ab6e093f90	2026-07-02 08:26:36.320415+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product is not recommended. Look for better alternatives.	\N
1e9b3341-da33-4ff1-9267-d2dfae446487	9ed72570-2162-4632-ae7d-a6db561795c7	2026-07-02 08:26:36.450459+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
05267ae3-1e4f-4031-a67f-6e6ff8902570	88d132b6-1e22-4683-abe9-1add3aab947f	2026-07-02 08:26:36.577771+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
abcc44cc-0baf-42a8-918c-4914216e187e	6a66fc5c-91ea-4905-b046-4fe89b50ed88	2026-07-02 08:26:36.706743+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b61fdc38-fbb4-49fa-82c2-4815c52d2207	f9b48688-40f1-46a2-9a56-9551604f24f0	2026-07-02 08:26:36.834457+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
85e181cd-a657-4075-ad05-bacad15f1ac9	0d890a77-763e-4f9d-9d1f-1bfdf7fbb453	2026-07-02 08:26:36.962742+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
baa89003-edba-40c4-9231-9fadc4146be0	49cbb290-fb1e-4cee-a6a4-32bf75aaae5b	2026-07-02 08:26:37.094807+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4bcdc1d0-62a0-446a-b3c4-c7037ff709e9	0b35a9b8-eb95-48ed-9f9c-c3667146a833	2026-07-02 08:26:37.22253+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
faae60f3-f614-485f-a4f2-872ff7a4366f	0243e29e-f090-4eb6-a0fe-58168efbaa45	2026-07-02 08:26:37.751526+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3b8d5e3d-6bfa-4318-b303-92059436f6bf	e9629a1d-97d0-4e11-877f-8e18d83637b0	2026-07-02 08:26:37.880956+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9864bfaf-72db-4365-8a23-fe30c3870f5e	1eec470b-d37d-4a0b-bb34-fc0e1c269793	2026-07-02 08:26:38.01129+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2de824fc-5fa9-4496-9213-92db5b3a35b1	1850ebff-05de-42b1-9f03-c5aff422c16f	2026-07-02 08:26:38.13881+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3c896698-353c-4d26-b067-dccd4c0fb939	3795cd03-6c99-46e6-9805-36bfcc2984a6	2026-07-02 08:26:38.268204+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1801f7fe-7e4c-4b16-9bc0-1c1a4a969646	9e9c06cd-6fab-4382-8533-dd98475ebd26	2026-07-02 08:26:38.399941+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
66b5f602-e1ff-47fa-8257-57ce37becf8d	1c6caac4-b27f-4a24-8192-40447f6b336c	2026-07-02 08:26:38.524426+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
969b3ec3-7a51-4c13-b90c-0961cab7ede2	eb75b8ba-d332-49a7-8341-ff528637de1b	2026-07-02 08:26:38.649966+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9b488552-9a8a-4146-ab0f-c4159d2757a4	cd715c2f-f67b-404b-b116-c835ba45b88f	2026-07-02 08:26:38.779552+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
05d9ccac-9f2c-4206-8f36-94f931f81c73	99eb296f-0d0e-4513-a21c-40a182cc221c	2026-07-02 08:26:38.90267+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e76b1da2-ff72-458b-a0d4-d8b415272260	0c8d0fb8-537a-4644-889d-478d8ad2959c	2026-07-02 08:26:39.425153+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
70b10710-4137-443b-83ea-48e95ec2ac09	452a5573-136d-4c90-a539-32d7651f33df	2026-07-02 08:26:39.551398+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d6ad99e2-f693-4354-8451-911f791baafd	8b1d43b4-3400-4629-9ff1-8eab78d4ed16	2026-07-02 08:26:39.680209+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
69d4de4f-3422-4d6d-8d7f-8f52e060ff23	f0f2564e-b084-49a0-81dd-5eb4597407d3	2026-07-02 08:26:39.807317+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2eb31fe2-cb1f-42c6-a819-3192a345f312	c3b5e78f-606d-4246-b399-a9852b005d2e	2026-07-02 08:26:39.93319+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a47f8e3c-8339-4b73-b4fe-9d6a88419773	ef797229-def6-4c81-98d1-e88e4335f3e9	2026-07-02 08:26:40.058489+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
92912d88-35af-4cfe-ae67-4002f9e46a90	a03634cc-adbf-480c-972e-e1075ec5b6af	2026-07-02 08:26:40.185454+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3ceac4f1-26d3-464e-864c-04e16579c75e	ff44d2cb-8d5c-4377-9c11-3134e443e718	2026-07-02 08:26:40.313268+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8b6183e0-9ae7-4c0b-86c6-0056114667a0	b14af4ab-8970-4ef5-ae6e-1eb55fa72072	2026-07-02 08:26:40.439439+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
416a1520-9aba-4411-afcb-d68b261c1a1c	889f8e69-584e-488f-be0f-8f3f644d34d4	2026-07-02 08:26:40.567671+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cd1e170c-dc0a-446e-adf0-9a565e4e53b2	a7fef9cc-c724-4cf3-aef5-9d6c63a837fa	2026-07-02 08:26:41.095739+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
095d5907-2b91-49b0-b400-9d71a1594e4a	86092185-e4a6-4a44-b1ca-f3733a751277	2026-07-02 08:26:41.22359+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
32d782ba-db91-46ac-b560-665f309a0daa	1cae1872-29f8-4561-9a0a-42c3cf3d5413	2026-07-02 08:26:41.348667+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1ae6415c-3092-47ef-b8ad-39bd8774cd5c	52e908fb-d241-4676-b38a-f22605fd67e8	2026-07-02 08:26:41.472479+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0a0eceb0-dda7-4fc2-9433-cba3195d90d0	b7591621-f3c1-46da-9044-d8051c96e3b5	2026-07-02 08:26:41.600154+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f8a39c2d-cc86-4f5f-9628-c9642d701435	4a5d519f-a364-497f-a45e-2f51d8eeb064	2026-07-02 08:26:41.724646+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9033c723-d18b-4712-8ca3-b669b3adb106	d0f96eeb-59bc-4ccd-86c2-7ed6f9f6b06d	2026-07-02 08:26:41.84646+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
55808138-6979-485f-ab72-c0ba71d47178	5c6c9e5e-3b18-4ff9-b015-e2c3314f0329	2026-07-02 08:26:41.975555+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e0fc6fa9-e97a-4e8d-ae9f-ada634ea90c7	c73695ae-54ab-4304-b00d-69fc63bc9ad8	2026-07-02 08:26:42.097492+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3cdd8ece-2197-45ac-9bea-5e66e252b3d6	742a662c-a2ec-411b-8ced-cb09a69cbc0d	2026-07-02 08:26:42.221238+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
929cdeee-5977-45f0-9525-7159d920080b	c23c7a81-e61d-4563-8f44-b4bef30a02e0	2026-07-02 08:26:42.746592+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
be7d4fd9-f63e-48d2-96b1-25e17a548c35	499751c6-8155-49cd-9169-0dc2492dfb18	2026-07-02 08:26:42.874261+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7928b513-2a8c-4abf-abdd-ea69b889cceb	5802bf6c-ad74-42e3-8b09-4d86f20a2720	2026-07-02 08:26:42.998187+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2baee3e8-0777-4a27-828c-e8910a874829	72003a49-ade2-4ab3-a206-0cea8e460f77	2026-07-02 08:26:43.126142+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b763a0b4-4c40-47b2-a490-25f647feb24d	4a306f60-43d8-498e-a48b-179f4a2e5899	2026-07-02 08:26:43.253881+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d22bba6b-3624-44b2-a207-d45671fff838	512c9905-ff6e-406f-9e31-d0611f9c5577	2026-07-02 08:26:43.381431+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c94d63e2-d79f-4882-8bb0-2e74d605afc6	a20a076d-30de-43b6-b3a8-1f4d81f72556	2026-07-02 08:26:43.50905+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
90ef514d-ffeb-41d1-a03c-74080360e49c	15e3eaa0-89cf-411e-9ea6-dd8017db96a6	2026-07-02 08:26:43.634051+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a30e08a8-5126-41ab-af5c-e4f888a8437d	c32c80be-baef-42ce-9091-5145ce64149f	2026-07-02 08:26:43.760134+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
68b1df2f-f358-4583-9274-e2ea1738d396	e55bc40f-70da-42e9-8a13-e1ce3c1faff9	2026-07-02 08:26:43.887829+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7efd7ed9-5adb-4af8-b1f0-bf1abccddcd2	fb44848b-f1c1-46a7-80b1-9eaf5b0bcce4	2026-07-02 08:26:44.415823+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9fd7e017-0d15-45c4-a2c9-ddd0157fa016	810504be-2824-4a6e-9af3-06a9599f263c	2026-07-02 08:26:44.545872+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
17471e24-9ba1-4bf4-807a-3d3133722b95	c1dc5ad7-f56f-4ea8-84dc-f705bc2bb982	2026-07-02 08:26:44.666408+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2c7971c3-c002-4f9d-bbce-51b112268f64	7bbec508-3c1e-426d-bf11-c9c19b9de3e9	2026-07-02 08:26:44.792729+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ee0f94da-a387-4698-93cb-47d4ce226c0b	8b5010aa-3709-4cf4-ad5f-6703ae3d9e77	2026-07-02 08:26:44.919219+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cf399bfa-8d15-4290-a25a-16210f94b1d5	056e2761-fa28-4498-80ed-29f62e1c2be6	2026-07-02 08:26:45.04734+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
27007bd5-2381-4c01-8fca-32908e05da41	802e0d65-a723-4ef4-984b-826b970a1a81	2026-07-02 08:26:45.17494+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a1979ed4-4ec5-4d41-a438-f92129ace5b2	0936c294-8c45-4e24-9693-a949b4eaa512	2026-07-02 08:26:45.30297+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
14cb7395-2bfc-4d00-925f-5149c7448648	de5a8c76-4ec0-4685-9fbe-82ecf2924094	2026-07-02 08:26:45.432607+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b8e205b9-5cf9-4462-ae30-956566baa12c	cd544dbe-6a2e-4fce-a43d-d7f14de0d09f	2026-07-02 08:26:45.561295+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cf95c9fe-ca10-4eb3-a501-30ef23f6b23f	2565505f-12f4-4875-9e2e-fe33cfb28a5d	2026-07-02 08:26:46.089231+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
09c09349-d419-4663-8b5f-5dde2bd2b8fa	d9386aef-4503-456a-b146-b877a8c8cf54	2026-07-02 08:26:46.217938+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
860f3803-3abb-4273-b3c5-4ba39185cfa0	72d36f15-9eac-4b79-9ffc-6249029b3643	2026-07-02 08:26:46.344522+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
45d84ed1-8fd5-42ed-aba9-a167df754518	8b669121-65ef-4e8b-a220-08b93b82fd8f	2026-07-02 08:26:46.471869+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f9380e56-46e6-4448-bf1a-8bcc303468dc	deb23715-eefc-42a4-9f29-5f3871b6d695	2026-07-02 08:26:46.597291+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0a4d4bc2-7042-4eb5-8a9e-39e9d5812989	79759e20-75d4-4e8f-ba52-5d690c9e2ac3	2026-07-02 08:26:46.72505+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f03f00d7-5db8-4461-a3ff-5718b9696c78	99af8c98-9395-4e2a-9c37-49e36b8b4741	2026-07-02 08:26:46.853366+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4c9212b8-e715-4bcc-a6e4-7d5c74e8a4c4	0f1c6776-e829-4f2f-997e-891934f5e110	2026-07-02 08:26:46.980602+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
86d89ddb-7e4d-48eb-a2fb-0b1b95cda3d5	4c508b3a-5a3a-4dee-9e16-2bad164573ea	2026-07-02 08:26:47.108769+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bc433066-011c-472b-a359-54ad9bdc4c0f	31187764-6558-41ec-9f1f-adfef990b8b8	2026-07-02 08:26:47.235861+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
30f4a3b5-1a34-4537-9cce-08c38a7dbe12	f4322105-e7e5-4739-a98d-a82b62168f88	2026-07-02 08:26:47.762958+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
3a0a8c7b-cf80-4df6-8fd4-042f37e0d946	d0de6fde-1fdc-4d90-a15f-3df4fe394d66	2026-07-02 08:26:47.875109+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
580e0a4c-5b93-4e77-90ae-0dc8848aa74b	59f06ce3-e72f-490c-bd40-bfe271deb17b	2026-07-02 08:26:47.993214+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}]	This product is moderate. Consume in limited quantities.	\N
881d2968-4a4f-4cf2-b812-a635c5a4ee45	ea9b0bc5-2a78-46d6-87f7-92776808cf64	2026-07-02 08:26:48.115306+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
f6854416-4a18-4a3a-a2e3-0e7a40f8e367	f247cfdc-b506-4653-b9f4-5f925f968353	2026-07-02 08:26:48.242107+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product is moderate. Consume in limited quantities.	\N
7f7e6705-e399-49cd-9ea8-83d5403ff32a	efaadeab-ac8d-4400-a2f2-630bcfb21bc8	2026-07-02 08:26:48.371437+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
210af38e-e3e7-4425-a2d9-77d0d6780187	ac4f855a-b384-47df-893f-faebf91821fe	2026-07-02 08:26:48.498309+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
d09458a3-14e1-4686-aa13-eaff60eb4994	f3e8b0ed-4a8d-4724-ae51-298a9330fa58	2026-07-02 08:26:48.621257+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
0286864f-96ea-4e75-b93b-4eda5f598b97	4258a87b-ee6a-407f-bcd5-8b41ba152e27	2026-07-02 08:26:48.746087+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9d44e5c8-2c1f-4f69-a906-2be349449743	6efbc925-a97d-4de8-bc85-6c9b5d565723	2026-07-02 08:26:48.866539+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
eff8751a-5665-4310-a5da-18109b9db2fa	5108669d-ea17-4c63-96cd-2c4b69a1e436	2026-07-02 08:26:49.393635+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
068d1747-9f54-46d5-ab81-fe055b794630	57ec8683-14a9-4ad0-add2-78802c3359d9	2026-07-02 08:26:49.516849+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1d9a0a49-c40d-4d09-9a74-bf20a45446be	7591f1e6-a6b2-41bf-81c7-ccd10568f56b	2026-07-02 08:26:49.640888+00	[{"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
a1fb6076-e5b4-49fd-b814-aebdf8bc5938	fd5c5aaf-d712-4248-b1c7-b677ae7119d8	2026-07-02 08:26:49.764007+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product is moderate. Consume in limited quantities.	\N
6d8489ee-74f4-4736-bb67-243acf0f981e	02cceb52-9afc-4fdc-a8b9-0059b3485acb	2026-07-02 08:26:49.887746+00	[{"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
06e90e3b-f3af-43fc-b4bd-8015e396050d	e775614a-b598-4b24-bdb9-a3d2e8a799a5	2026-07-02 08:26:50.011138+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7e524598-7da9-49e7-b0ab-d297617029c3	5f9ee9ce-43db-4f7d-818b-ddfe50671ccb	2026-07-02 08:26:50.132785+00	[]	This product is moderate. Consume in limited quantities.	\N
02f85b8d-1392-46fb-9b0f-8235e50bebd7	97fcc670-df87-484d-993e-868120e80180	2026-07-02 08:26:50.261345+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
220f4518-9738-4461-bc15-8a4e82f3fadc	628c5c2c-df1e-4a53-8e94-87d8a65ab364	2026-07-02 08:26:50.389942+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d5bdee5a-ae91-4544-98db-12012326176c	338814ef-da83-4365-97d1-b3de8326ac0a	2026-07-02 08:26:50.518005+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
307c30b3-4dc1-4560-98af-9e6acd9d4c46	814719aa-2847-4c4e-a47c-46cf37d19dab	2026-07-02 08:26:51.044551+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5d96b412-4f46-467e-9d96-dd7f83dbe640	9f044419-e611-4f9c-bfa4-4ae250b7f156	2026-07-02 08:26:51.173217+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
40e58021-bc0d-428c-86ec-b8753f826389	534fc264-9173-4d81-95fd-c9e198b73574	2026-07-02 08:26:51.298029+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e41d9cec-b4b4-4f3b-a7ea-b5480e67e47b	141e6ba3-52a5-4e5f-b9ce-d4676325cee6	2026-07-02 08:26:51.419628+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a98b53ac-5b9b-46b2-99e5-bc7c2f5af376	bd66688a-4920-4532-8397-b8077f6a6183	2026-07-02 08:26:51.543737+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c100237f-c648-4bdc-846b-d36d46e3d4ea	d1194f51-87c4-44aa-b53a-5a94c60bdc32	2026-07-02 08:26:51.67272+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
3cd34abd-4c91-4561-92ef-3a75e81c3d8a	e26c245a-5694-4da8-bb93-213c7c04dddf	2026-07-02 08:26:51.793427+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d7547b0c-b6c7-47c8-95d0-9822840bd929	48513933-15dd-440f-89e5-d749c442d28c	2026-07-02 08:26:51.909669+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8ca48caa-e120-47a9-acbd-824b8fcd1ccd	8ace2e74-bae6-410b-a20e-b35b3e458534	2026-07-02 08:26:52.030863+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f0f04795-4a47-4a16-a3a4-a3a9aa41bf92	b9f593cb-387f-4d21-b88e-c5808facc044	2026-07-02 08:26:52.153968+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product is moderate. Consume in limited quantities.	\N
d9654a20-fa65-495d-a98d-9e2d3bdea2ed	50e69978-0bdb-4952-bd29-605308cb1272	2026-07-02 08:26:52.673724+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
847d42d5-e661-433d-b094-d947eb29ed94	6e197c34-e14e-4548-8489-c6abed04305e	2026-07-02 08:26:52.790792+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e1179516-9394-4730-b4bb-22c1f1f88e42	76a602a9-2b7e-4a9b-b5d2-b8b61b8fddec	2026-07-02 08:26:52.913831+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
2759310d-27bd-4147-baa2-1392c830cf03	147c19bf-0b94-476e-8662-198ab1cd7404	2026-07-02 08:26:53.043048+00	[{"name": "Sodium Citrates", "risk": "low", "penalty": 2, "e_number": "E331"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
46eea0d6-60f5-4d61-83a3-e80cd51705d6	5d685b46-2589-4e7f-9540-c7287f221d98	2026-07-02 08:26:53.169155+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9256da11-46cd-4149-afb5-0cbf1bc8d300	5955c06d-0e1b-4593-9397-552f2383ab79	2026-07-02 08:26:53.291725+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
5baa2a9f-912e-4a70-801b-3ee4c092c9a1	5c8bba2d-53e0-41a5-8eb9-0ecb2602812b	2026-07-02 08:26:53.417933+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
ce6cccf7-f7e0-4a35-883b-d8e5bcd7fba3	1eebfb56-03b4-4561-a43f-49e0e6d66433	2026-07-02 08:26:53.547584+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d85926ff-bbc7-488c-a936-140da3ee32a7	0cb844c2-7980-4724-ba3c-cadd042143b6	2026-07-02 08:26:53.801594+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
c5614f17-7a70-4c52-848a-2656bb5d7c55	d68a8103-5816-446c-85e2-955925fbf04f	2026-07-02 08:26:54.323775+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product is moderate. Consume in limited quantities.	\N
0a13e545-5b5f-4d09-a163-5f6e9f33b48e	75ce5221-5442-48f2-bf38-18914ba68704	2026-07-02 08:26:54.438892+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bea4748a-d697-43f8-b689-181b40d43cbc	66427204-aaa6-4b68-9456-7ee69b2c807c	2026-07-02 08:26:54.56384+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d2b4cf22-7c6d-4ae0-806c-a293cc5f77c9	161dfdd1-4acc-4816-9aea-9bec6859b311	2026-07-02 08:26:54.692312+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cd0c9052-7cca-498c-99c8-b8f9315329dc	8e27f2dd-fb63-4278-aaf7-4d3340a48079	2026-07-02 08:26:54.819105+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
f89e6e13-5b2f-4fcd-882b-4d5a39856b90	a9a344d8-4378-4bc7-a11a-b45ea39ec5c0	2026-07-02 08:26:54.945969+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
371dee2a-d52d-4d61-a78b-b224d57b44bf	c3f96a53-087c-4103-9098-14c04d45953a	2026-07-02 08:26:55.071645+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
471057c4-8035-4145-8733-effa6385a127	5bb618e1-a162-4a77-a57f-dc49910eb3ca	2026-07-02 08:26:55.198317+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
88ea986d-d1d9-4b2f-b2af-54a6cd839d86	6eaaca89-6eda-4075-8d5c-fd77bd9df81d	2026-07-02 08:26:55.324118+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
594f327d-c99b-4131-8f3d-8ff90e7ccf4e	487bf2a9-c3fb-4eda-b127-94679dcf9296	2026-07-02 08:26:55.4475+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
bdc29e9e-820d-4b5d-b876-a27f47ceed04	e9925ea8-cd37-4dd6-be42-e1f68c6e6678	2026-07-02 08:26:55.971144+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9963ced8-f4fd-443c-af6d-2a6452f0bafa	06bbd5af-d7b5-4563-a19a-0629ab5a4f2d	2026-07-02 08:26:56.088462+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6c59dec7-790a-4479-b148-7c2f89476599	46a74e59-fb14-4e40-9954-f229f1b0896d	2026-07-02 08:26:56.201401+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
029125cb-e181-44cc-ab51-346bf5978531	662b9de1-611f-466b-ac0c-8511421462bf	2026-07-02 08:26:56.316337+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d23580c0-6308-4a68-8706-5ae66d265b05	567f2ee3-5d1c-49c0-bb7c-d3a2e6e84668	2026-07-02 08:26:56.427458+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
29aaeda7-be63-4ec8-857e-eb26e87ce598	f4a2f5c4-7830-4135-ab58-aee76c13a864	2026-07-02 08:26:56.547656+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
306f9786-3e14-43ae-9255-9adbab7ae9bd	d6a0bc5e-9136-4f0a-9a31-b648676dd9a0	2026-07-02 08:26:56.673391+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
20e437eb-1318-4e41-b888-8e8b67596e78	bdf09f9f-38d5-438a-ae7f-e433ee2713ba	2026-07-02 08:26:56.794427+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0404a609-0600-48fb-a9bf-0c7697fb8cfb	11c50688-50fc-44f5-b217-2005d7496d83	2026-07-02 08:26:56.917687+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
9ac91e86-65e4-4f66-b6c7-19bc1a2014d4	96acbcf6-aebc-41a6-bcea-c45dafc7bf16	2026-07-02 08:26:57.037696+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3630a783-2987-45e4-ad87-f2b74a0e15f0	501f1783-5c9d-4d44-807f-370922bb015b	2026-07-02 08:32:33.173614+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f7bf6a80-be25-4268-b264-a6f69694b0b9	39339c48-7f15-45e0-927b-5682fd1dcc0b	2026-07-02 08:32:33.289588+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
41726a93-8530-4bcb-ad0f-970ea7f805c9	a78272b8-05b1-4f14-8d65-dfff8c1c3e49	2026-07-02 08:32:33.411605+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2c39fefa-0e7e-4e45-bd8a-5d8ada4ee342	304dd92a-bbad-4e76-8b5d-91b56d68dcde	2026-07-02 08:32:33.531565+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f5cd69ef-85fe-4915-942c-87c8e88640d2	c246b511-5d90-4c7e-b1e3-b7bafd8e159e	2026-07-02 08:32:33.652902+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d525a060-fd2a-496d-9608-358974e890de	91dd3846-02a5-4b04-a1ec-e11b205a266b	2026-07-02 08:32:33.773479+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e6cb473c-2289-4d45-90c2-7c7998b0d314	106b9e12-ba62-4bca-8da9-c7f4bac1cec9	2026-07-02 08:32:33.893597+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
35b7b441-4014-4ad7-890e-ce5568df83c3	1eb838db-90c7-4427-b145-5c2d500cd1c0	2026-07-02 08:32:34.008679+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
730794e1-3383-4a2d-b3aa-32765f549464	d649ee6a-bc4c-4cdb-a3fe-258954699407	2026-07-02 08:32:34.125514+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
604d6684-b8fc-43cb-b829-537d084fbe4b	13b9ca86-559b-4610-b92f-f3a9ae863556	2026-07-02 08:32:34.235661+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3713ba42-9157-4913-b151-1de0e8ce17f5	a720d16c-f0c8-4349-b84a-6faa8c9fd71c	2026-07-02 08:32:34.345974+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c2b1222f-c6d7-4153-98b2-82489e72dc8f	32c84382-132c-4ad1-9fe8-7b8a3a2f1830	2026-07-02 08:32:34.459579+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d2b5cb97-a04e-4f65-aa26-150980bb64c8	cd0676f5-31f9-447d-bc23-4e32ac422dfa	2026-07-02 08:32:34.573526+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cfc6626c-9fd9-48ff-a83b-f617dfda9091	a233d458-757a-4b47-8cb8-5d444a47a582	2026-07-02 08:32:34.689218+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7bffb53b-2fa5-41f5-865b-417ea62b14cb	840e35df-1809-408f-a63a-9ce0aba32967	2026-07-02 08:32:34.804082+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
077b8034-3d7a-4ed4-b625-ca3c685eb49d	77eb4e2a-e3d3-41c9-bb08-57c36e7933fd	2026-07-02 08:32:34.919181+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7bbd4308-469b-469e-b103-840d39ec3cb0	62019df5-7904-4954-a1bc-16908d313ed9	2026-07-02 08:32:35.034027+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
030e918e-d408-4a0c-933c-05838deeb610	f99ac29a-fae5-4b94-b79b-6db6353f9b1c	2026-07-02 08:32:35.15009+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ad5b3099-deea-4ea8-90ec-005cd5bca963	4c826c6a-087d-4565-a979-94d579abea79	2026-07-02 08:32:35.266166+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c0e64255-f47c-4d1c-81de-a63680066b1d	683474e2-bd19-4327-b2ff-9e98b018f23b	2026-07-02 08:32:35.381025+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fe615f65-1bdc-49f7-ac84-710214658409	65cdeac6-5bd9-4855-ada1-9e4aaa9f5725	2026-07-02 08:32:35.495072+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4a9ec635-49ed-4ffb-89c6-df4bd5f8c804	d48709c4-c09c-4596-98a0-1b984e0d0efd	2026-07-02 08:32:35.608538+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0adb4859-1216-45bf-ab3c-125f2e3345ba	d74e899b-3269-478f-99e9-b11f111a4cb6	2026-07-02 08:32:35.723796+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bbe1237b-f344-4778-a73d-011b66160397	b6bed046-2838-4343-9bea-268850c1ec12	2026-07-02 08:32:35.834207+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
057a0265-8b16-4906-ba10-5d52d0cc9af4	401a029d-192e-4851-af2f-90cdcb4c7867	2026-07-02 08:32:35.950002+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
eb2f6844-4edb-4da2-a014-3b50b8f24b51	73ab61cd-2363-4ca7-b60c-e65702a59299	2026-07-02 08:32:36.067599+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
50b4b716-1971-43dd-a6c2-ee025b377eb9	9b97726e-683a-4ae9-bd45-3882301bfa24	2026-07-02 08:32:36.186116+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c2a5fad9-5419-4567-948f-6aa8202fd024	f9a08dfd-90d1-42a1-8104-0506cc23bcc2	2026-07-02 08:32:36.304492+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
84872bc6-bd46-4172-a288-23f25d643a46	fd73eeb4-33d0-4957-be38-c5dc2c68cffc	2026-07-02 08:32:36.422935+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7b266a3f-8d08-46e2-b62b-923cf813cd95	e5434547-6d2f-498b-9e88-c65de5c00461	2026-07-02 08:32:36.54137+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b85b07d0-da24-451a-93d6-4f3b2623217b	7eaecc9d-afa9-4cd8-9aee-9bdc9cde2ede	2026-07-02 08:32:36.658606+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9ab951b0-279e-4b8c-887d-9d6e25b95613	0bc06962-b6f0-4802-8292-c48e86e35e8f	2026-07-02 08:32:36.773242+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5232eabb-771b-4648-9bb0-2c885e45699e	9e277caa-1618-4158-a09b-21257b6a73d1	2026-07-02 08:32:36.887993+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2a61849c-de3a-4502-9bec-d551bfda8451	453e9d1f-f3ea-4259-b9ec-a35cf321d302	2026-07-02 08:32:37.002529+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
362c3a8a-842c-4ab8-a4e1-30efa8c73a87	79137fd7-e4af-499d-b08f-fc33f153f85f	2026-07-02 08:32:37.11725+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
050a0427-8d44-42a2-b585-828533b4a77a	ffe579bf-8484-4f08-b84f-b3b703f543f6	2026-07-02 08:32:37.232495+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4d4d2ac2-361a-45e8-bbbc-0a81b5b442b9	c5fd7e72-e0d4-4126-aae5-0c1b5996f69a	2026-07-02 08:32:37.346486+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
eeafcb1f-9e0d-452b-beda-e6aa07d2a8cd	af0bc11e-6ea6-4d35-ab4f-48185c875849	2026-07-02 08:32:37.461884+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b7f42cfe-55b9-4cbc-a07d-3a7e1ffc78e6	48b70bf6-eac5-44c6-83a9-21c840bc1957	2026-07-02 08:32:37.577631+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e6e3ef40-d1d8-4b62-a24e-70694cc3e8d0	8698c896-fd00-4fda-80b7-ecd1abf7ae8d	2026-07-02 08:32:37.693255+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ab75cfc2-b6dc-46d3-89bc-265f9b640107	7b866b3f-c908-4bb6-8fe3-83749b9eb631	2026-07-02 08:32:37.808509+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1d3015c5-aed3-4c0c-8be2-4b519974d242	e22419f5-750a-4ca2-bd85-c5a9ec5e6fdc	2026-07-02 08:32:37.923102+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ffb7f79f-4802-4cb3-97de-dcd728e3c807	b70c64ba-23dc-441e-b3e9-b7b0dd54a829	2026-07-02 08:32:38.037393+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c678511c-b9b3-4705-9bdb-0b907262119f	e3e13eeb-c7dd-47d6-8fee-7e2b5165d2de	2026-07-02 08:32:38.152475+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cfd831ff-0f1a-4d17-9989-44ffe5f94cb2	f453d76c-57b2-4c4f-bb32-e0e6f69500dd	2026-07-02 08:32:38.267913+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
de8c31a8-529b-43c7-b6cd-94bd8cc9e478	b052ba42-be0b-4499-970c-9ff52276cb28	2026-07-02 08:32:38.384097+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ab9135c2-6ad2-431c-90e5-75b843eb4ace	1b99e6e4-991f-4ffb-bbe4-3851df98ed5e	2026-07-02 08:32:38.498228+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
de68dea2-433b-4989-a001-85f614b67e5a	d6a5d120-e124-4f36-84d3-28a42f042e54	2026-07-02 08:32:38.612898+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dd8cf10a-8b28-4010-b14f-1eabc69c8745	85066721-7fb0-4dca-939a-2356b74ffb91	2026-07-02 08:32:38.726974+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e282a081-5e74-4c8a-87cc-ebd2c2218d1c	9a05e42e-0369-4a2d-92aa-aee83a98caea	2026-07-02 08:32:38.841454+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0e5ab2f3-2ddb-42c4-8efe-4777bb155d04	4681ef5a-c9bc-4c6a-85df-e93586e35f85	2026-07-02 08:32:38.955037+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
da575567-bdd0-4ae1-9bb4-51086e820e96	4cfdf3bb-264a-4415-8c5f-0e377425e85a	2026-07-02 08:32:39.069605+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a0c529c1-a241-4b9f-b616-def6b1710d64	7daa8e5b-fc93-4465-ad70-57865e730f96	2026-07-02 08:32:39.18385+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
54ef870d-0e7c-4e5c-a5b8-7177312d6a5a	d0d40c5f-4dc4-410d-9ef3-fc2ba91be83a	2026-07-02 08:32:39.296359+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c694eadc-29b5-41ae-a4c0-235237a4a5e3	693eb8da-0236-49a3-839a-d4beb8a48290	2026-07-02 08:32:39.411527+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
706ef004-12cb-47fe-9969-9e58e207c326	eed9398a-bedb-4d67-ae74-fc4d68c69605	2026-07-02 08:32:39.526949+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f384833e-fa99-4ba7-bb68-b8a5d33fd3e9	4c4f9604-8abf-499b-8108-79ebacb0c42f	2026-07-02 08:32:39.641676+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8a249722-a918-4e02-8ba2-71fd6aa61681	8c06d623-9f55-4ce9-a65a-e7174900b012	2026-07-02 08:32:39.755828+00	[{"name": "Sulfur Dioxide", "risk": "high", "penalty": 15, "e_number": "E220"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
681bcc99-8c60-4c8b-89e1-9d3717f1209a	c352bbf9-1cdf-4aa6-8a05-7d7f045cb068	2026-07-02 08:32:39.865323+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
76c94014-5e28-405b-a8a5-18a0a5900cd1	089f6659-13d0-402e-998e-c65437b26667	2026-07-02 08:32:39.979892+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
60142c45-65cc-400d-b7ef-51113e2da1fc	7c3c5dd4-6b23-42c2-b39d-f2c0fbd4ab4f	2026-07-02 08:32:40.095518+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d4aca4e7-96ff-4ae2-a95a-53252ba1d3df	af249b54-be76-4cb5-93e6-f9a46391b080	2026-07-02 08:32:40.20618+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6a58574e-2899-40f9-970b-ba047e1265a2	2b5203a4-b3ec-4aee-81c5-54343f7e7723	2026-07-02 08:32:40.321023+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9fd9e530-3fab-472b-a251-42adba24426e	6757ff13-c1b2-4580-a203-bae2694828e6	2026-07-02 08:32:40.436409+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
227c32be-b521-400f-912c-b89016b93972	2270c3ee-a02d-40f4-8b30-afa2f7c99b6d	2026-07-02 08:32:40.552843+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
42656e3c-688f-4253-801e-381ff1fc3d0d	21bc7a28-6b00-4c97-890a-b9dc96e1a378	2026-07-02 08:32:40.671703+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c80c9d72-e7ca-4b24-acbb-2f59af7d9187	3d2fe5a4-e512-4d03-b22e-6fe6132a06a2	2026-07-02 08:32:40.788091+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0fd5478c-8117-4bd3-a6ee-57b3cec9718c	1a9cf9c1-b196-4362-b6ed-1df78b3c68c5	2026-07-02 08:32:40.904116+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9a55c938-fdc6-448d-a5c3-4be3f2a80c24	b99c00a9-da9e-4a31-b220-8909affe8a4c	2026-07-02 08:32:41.023806+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6bd967de-af63-43bd-a919-bcc5761c8a33	0cd1d19a-9884-4ddd-8dd6-8af6375915de	2026-07-02 08:32:41.140765+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
abb51e14-778c-4325-85bd-2e9ec5e9492c	73eee30e-3757-4e93-82d0-72d4376da6fe	2026-07-02 08:32:41.250798+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f396e9f0-b03a-41ce-9895-daec485a8015	a9587157-fbed-4caa-9325-ec7033381c27	2026-07-02 08:32:41.366472+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3cdf6ad5-ea83-4332-99d0-7b31ee6352fe	c4121a6c-fc13-4a4a-84c0-2b66ced45fb9	2026-07-02 08:32:41.48503+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c518ddc6-3529-4d1b-b3dd-aea232ac6fa0	52be5bfd-5fb1-4bde-9f33-6d4312d0fe7e	2026-07-02 08:32:41.600286+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
14c8a5e5-5d6a-4305-b7db-57fbcc4cb457	86754abe-86a0-401a-9efa-b981beba30ba	2026-07-02 08:32:41.716228+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
009f1e05-95a7-41da-bdec-f2f2c687c48f	7ccbcc0a-28c0-45e3-a1c5-40f3882f1319	2026-07-02 08:32:41.831262+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
50da18cc-3e62-4d9f-93f6-594ca66a3e2c	6caae591-8017-481f-a524-7cd6674f4948	2026-07-02 08:32:41.944116+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
edea50ec-055b-49cd-87bc-8bc3993890d4	52e41d7d-da12-4ea0-a138-88810cf2622a	2026-07-02 08:32:42.057989+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ff28e121-09e4-4ac2-bbff-71b442177aa9	a224514a-0412-46e3-8dd4-32db47e61435	2026-07-02 08:32:42.176842+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
08d8b13d-1340-4668-ac89-06d7f39cb93f	30c5d05d-05e6-4997-9411-4d4d155314f8	2026-07-02 08:32:42.296162+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e502ffbc-d016-4267-be19-721d8b46ec72	8c39c99f-fa74-4075-aa63-b8da476865aa	2026-07-02 08:32:42.414774+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
70c9908d-6dea-4d1b-8d1d-22ee21db0ac6	f15b7d6c-d228-45aa-a71d-6af120112dcc	2026-07-02 08:32:42.533611+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a056a2b7-b57b-43b7-b6b4-5de47afbf0a1	28c813ee-1aea-4335-8de9-f8b2bdfcf0d4	2026-07-02 08:32:42.652074+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bc280408-a39c-4f84-8109-f863b7c90311	53d61eba-62d0-459b-87aa-1ea58fad1572	2026-07-02 08:32:42.769405+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
119f0c2e-4db3-4f4f-bf0c-8937b3b62b4f	23c3ea65-8064-4e96-a2aa-7687b514b3da	2026-07-02 08:32:42.888173+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8c01f969-d015-4ebc-83ee-21e56d83f83d	3574279b-2c5c-41d8-a9c3-60feefd3ca26	2026-07-02 08:32:43.002612+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
149148ac-3ca1-4a81-8c9b-9c8098dbcd7d	8a50c4ee-3ee6-475d-8c77-f3388a476762	2026-07-02 08:32:43.11616+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c6d7df3b-ef3d-4844-89cf-7585e812fdf5	d67e8166-5878-4d8b-aade-da21df47cec1	2026-07-02 08:32:43.234591+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4280888e-a2d4-4744-9fd6-573f4be3676b	337ff074-9df9-4b28-bfb3-8350ad249d24	2026-07-02 08:32:43.354762+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
43ce0005-9904-40a8-99d2-e3398a26c843	47dc47d5-b2db-433c-9d32-02d116713fcf	2026-07-02 08:32:43.471672+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d138c6a9-aba7-43e4-b7bd-b95e1d5943e6	0c621bdd-bb5a-461b-8463-491af95cd279	2026-07-02 08:32:43.587224+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1405d1ef-245a-4267-a5fa-62b64f2204f2	c755d315-170b-4631-a4a2-5d44bd6996c1	2026-07-02 08:32:43.704479+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d826bc99-1c4a-46f0-bcd6-8d58c3c9000c	e44db57e-0cb5-4bfd-92b2-2a067d25e726	2026-07-02 08:32:43.820044+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
975f61e4-eacf-46af-a534-4fd0dc1ba7f9	497cbdad-a33a-4fb5-b5e7-364b3f3e9ed8	2026-07-02 08:32:43.93565+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4508cc89-9f47-409d-90f4-c8561a0bd507	4f04f656-c63b-4532-a7d3-b123f0895891	2026-07-02 08:32:44.053706+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f3b9ce2d-349b-452b-89a0-d6ca76384bcc	366a00a1-269e-4d50-ae85-0c40d3fd42b5	2026-07-02 08:32:44.171106+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fc74ce10-f0fa-4e55-999e-dcbc5dbe6907	d763141a-8927-4fc4-86f5-601ab878eb48	2026-07-02 08:32:44.289384+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4ae8bafd-0ab1-46e0-91ce-0ad265cfd184	c0901b47-f381-45c6-90f0-e0c787c1d70c	2026-07-02 08:32:44.408125+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b1af95b2-6b32-415e-aa36-56f34a3b6279	cb78f0e8-4344-456a-abd9-6576ac650e9c	2026-07-02 08:32:44.523824+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bccc9749-fda1-41b6-ae37-2d94ed5e4e1f	f4213b65-0f6a-4903-963a-aad8b5ac6ac1	2026-07-02 08:32:44.639623+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f921e464-de10-4517-b178-466901bd00a8	4de9dfdb-15c4-4ef9-bb59-42972727f908	2026-07-02 08:33:54.151072+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Brilliant Blue FCF", "risk": "high", "penalty": 15, "e_number": "E133"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is not recommended. Look for better alternatives.	\N
e21981f8-f3ae-4594-bfe5-8b1ffa0e771b	c7e215ce-4cf5-4f4e-8903-6acb4dad0e9f	2026-07-02 08:33:54.268411+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
19531221-1a9d-43b8-a157-3030c2367666	94a0f146-225f-4639-842a-b5805bc1891d	2026-07-02 08:33:54.386903+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
18ef1d60-bba9-4aa0-8524-f3cdb894d66f	3f34f8c6-da59-42e0-9c7e-715a9f839f62	2026-07-02 08:33:54.503237+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
6bfc9dcd-ef45-4d52-a951-2bcf999c1a1f	3f7f1e44-1d1b-4aa5-8784-7cda02f529ac	2026-07-02 08:33:54.615049+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
aa0ee04a-b8c4-4d48-9e4b-16b3da5a1b3f	01a0cacd-7780-4808-a712-f02315c037b6	2026-07-02 08:33:54.731483+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e31b4511-cfb3-45d5-9919-c62faaaebbf5	964afb10-9c57-4d3b-a860-4d0e766a9fc9	2026-07-02 08:33:54.849051+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
e7ffd0b0-24e2-496b-8e46-ecb1c0145b62	70ffef33-d32f-4ed7-91a9-ffdd1aa07867	2026-07-02 08:33:54.964202+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Brilliant Blue FCF", "risk": "high", "penalty": 15, "e_number": "E133"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is not recommended. Look for better alternatives.	\N
bfeaf86c-4502-4988-bde5-b3b370f356e4	b8efa7c5-0619-4e1d-8440-aa141326af30	2026-07-02 08:33:55.079427+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
6d13cfb8-a977-44e6-81ce-a58f54c0a504	a6c1c1b3-646f-4980-b50a-f4076ab8f1c4	2026-07-02 08:33:55.1963+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e26a726e-1715-4c33-a44f-526d3a718ed4	5743fdb2-1ae8-4c1f-af3e-b6cdf2e1dd55	2026-07-02 08:33:55.313417+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
b25927a5-5dfc-4862-afe6-8bd9d4cdf76a	3d1ed315-540b-4c9b-b5b8-8d92a4939efe	2026-07-02 08:33:55.432761+00	[{"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Glycerol", "risk": "low", "penalty": 2, "e_number": "E422"}, {"name": "Carnauba Wax", "risk": "low", "penalty": 2, "e_number": "E903"}]	This product is moderate. Consume in limited quantities.	\N
9e9f203a-f4bb-4853-af10-7ba08aca63f5	7e947faf-13f3-401b-85f8-d2bcfdb42aac	2026-07-02 08:35:15.949075+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8c60383b-c0ff-4037-a859-1d478a9201ee	8331c96b-2655-40f0-8130-0c0b830566b1	2026-07-02 08:33:55.553255+00	[{"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Glycerol", "risk": "low", "penalty": 2, "e_number": "E422"}, {"name": "Carnauba Wax", "risk": "low", "penalty": 2, "e_number": "E903"}]	This product is moderate. Consume in limited quantities.	\N
54e2d44b-6812-4aef-9205-9a139cee48cc	8a82dff6-7305-46c5-9611-4463fc3933f8	2026-07-02 08:33:55.673572+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
a1b4bd99-d092-4ec1-b2f4-5383f4b9a1cb	ed229e52-f109-4bc3-baa4-581cf2a13885	2026-07-02 08:33:55.792741+00	[{"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Aspartame", "risk": "medium", "penalty": 7, "e_number": "E951"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Glycerol", "risk": "low", "penalty": 2, "e_number": "E422"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
91db325e-a33d-402c-beb9-83b899b7d62c	b3169849-6642-4b7a-9b26-50c512e97e39	2026-07-02 08:33:55.912482+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
443bcbb7-fde1-4ff6-a769-d3575cb5f305	17582dca-225e-4f1a-bd28-74aa0dbe9d82	2026-07-02 08:33:56.032301+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0edd1cb5-2b28-43a7-9576-3dfc6d3b354f	926dd52b-10f4-4da4-90bc-9905662de31d	2026-07-02 08:33:56.149175+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
6dcc8a25-4582-4648-8a48-d545debb8d19	98c9e063-913f-4838-957a-ff225904138d	2026-07-02 08:33:56.261571+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0a412fe3-b02a-4952-bb7d-e56b97411714	d7edbb8f-7c2b-45a2-a0d5-99fb804298df	2026-07-02 08:33:56.376981+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
a47986bd-69ca-4d1c-96a8-24a1b237b537	3472b518-797f-4ac7-abce-ec944dc6000a	2026-07-02 08:33:56.494438+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is not recommended. Look for better alternatives.	\N
eff213c4-7057-4b64-8cdb-14a83006a69e	d0de52af-bada-4793-9c31-58b1690f506a	2026-07-02 08:33:56.614298+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
89e4aeef-6b97-4639-a4c6-cdb9bbfb63a0	8533c9e4-cbe4-4500-9e10-d22689f1d9de	2026-07-02 08:33:56.730906+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
d4b141b1-4505-4081-a027-33dff557aee6	dc7b37ee-b9d1-483b-a57a-5636deb91100	2026-07-02 08:33:56.846075+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
65277fde-5611-445e-997b-14a36b6af127	7ed3cb54-4cd4-4e55-9275-0c542dc37b9b	2026-07-02 08:33:56.962316+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is not recommended. Look for better alternatives.	\N
ce9bedb3-38c9-456d-9c5f-ecc4bb705af1	136f12c9-4c73-4b7b-8df5-e02317228018	2026-07-02 08:35:16.063675+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b8c6ecc3-abd6-4c6e-a1d0-837efdcbf7d2	e647d742-e364-4659-b69b-c8909596e94f	2026-07-02 08:33:57.078744+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
1dfe8fbd-73ce-4006-8c80-06d130d4feff	854ddbe8-d255-427b-af96-13426408a698	2026-07-02 08:33:57.196628+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Potassium Carbonates", "risk": "low", "penalty": 2, "e_number": "E501"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
90517f0e-0c08-4e22-932f-99e280f71ae2	edb5cc7b-6b86-4bf7-b278-c86606572327	2026-07-02 08:33:57.315934+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
3845baf0-e480-4cfd-95bc-fe6a6b2c976f	d3480181-9185-443e-9e69-c244e30a738d	2026-07-02 08:33:57.434899+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
d96e8322-3fe5-4705-b029-08dc1889e035	0953f9bc-c25f-4da3-a58e-cbc2b928acc8	2026-07-02 08:33:57.553447+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
c25e599f-8f52-48fb-8767-6d6331972399	665b0388-b46e-4e88-8ab9-36a444297ee9	2026-07-02 08:33:57.671864+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is not recommended. Look for better alternatives.	\N
f26201aa-b3c8-466a-ac34-109e5245d18a	9c0a0e1d-76b7-43b5-b1fc-64bb29b4bc78	2026-07-02 08:33:57.79162+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
dc6824bf-4dd3-42f0-9c9b-65c8ec2b409e	1cc7812a-894d-46b4-8235-9c4f262da749	2026-07-02 08:33:57.911226+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is not recommended. Look for better alternatives.	\N
dc03a5ab-d015-49d2-ae87-438056eb109a	9d2d86a8-5abb-4ac3-a91b-c80d052be83c	2026-07-02 08:33:58.030153+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
211ddd64-a83a-4aae-8a92-40989b020d3e	72a9dd9d-1c35-44df-ab58-92fe80a704be	2026-07-02 08:33:58.149178+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is not recommended. Look for better alternatives.	\N
2fab668a-9b06-4201-9aa8-0b6a79ad3f8a	a13bc77c-8d4e-4d26-846a-7a758eaf51c0	2026-07-02 08:33:58.265565+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is not recommended. Look for better alternatives.	\N
6239b802-c2cb-4efd-ae2b-9850b878b84f	ffed87e5-2486-46f2-bc83-4da1c78b8747	2026-07-02 08:33:58.382378+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
71aa2c13-1592-4c4c-acb1-91817bee861f	ce6dab29-eeca-4d31-aa01-24f757037c97	2026-07-02 08:33:58.498461+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is not recommended. Look for better alternatives.	\N
cef65007-9c7d-4d7b-9abe-297c839f7836	c24edac9-ff9f-4874-8b21-3941de2ea1cf	2026-07-02 08:33:58.613829+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is not recommended. Look for better alternatives.	\N
e04f6d50-e6db-4703-999b-9c1e0d6c6b51	721ec833-791b-42f2-97ea-30171eb575c6	2026-07-02 08:33:58.730069+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is not recommended. Look for better alternatives.	\N
680f2207-b898-444a-a802-a5de34e6b015	0b068756-73cd-4e27-9e36-ac128432b268	2026-07-02 08:33:58.841358+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
8f6fbdbd-023d-4e4a-8209-f58d987bd994	09eccd96-3e34-43f1-aab7-65a704a790d9	2026-07-02 08:33:58.956621+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is moderate. Consume in limited quantities.	\N
de206d4d-da5f-4201-a87d-2a02a88ba5e3	e9645bf1-f190-4c40-9a15-48d99e7150a4	2026-07-02 08:34:02.70076+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
0327b48b-fcbb-4920-96b8-14674ff9dee0	7307a1c1-ee5d-4a5b-9e4a-d31830470456	2026-07-02 08:33:59.074044+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is moderate. Consume in limited quantities.	\N
4f48d203-9486-4292-a336-ada213ef8e05	dec7011b-bac1-44b7-b0c2-a0d23a273605	2026-07-02 08:33:59.187233+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}]	This product is not recommended. Look for better alternatives.	\N
cb6ddc9a-1c0c-4ed3-81a9-5e234f0a100f	65d65462-4d79-44b7-af5e-ebba6f634354	2026-07-02 08:33:59.303643+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Disodium Guanylate", "risk": "medium", "penalty": 7, "e_number": "E627"}, {"name": "Disodium Inosinate", "risk": "medium", "penalty": 7, "e_number": "E631"}]	This product is not recommended. Look for better alternatives.	\N
a7d0217c-bebb-44de-8056-595515203e7a	b91dd866-8c04-41c5-af1b-224fe1c51757	2026-07-02 08:33:59.420861+00	[{"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product is moderate. Consume in limited quantities.	\N
233a6a44-26ec-478c-9f73-8c36d26c2d31	3385cc71-48d8-4894-9179-88fe789a72e2	2026-07-02 08:33:59.5371+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
9b22df7e-05fd-46ea-b81f-be19b2f72cbb	87c3d219-9b92-4b77-9981-eafe41a1e322	2026-07-02 08:33:59.655057+00	[{"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
2c7bac80-17e6-45d2-96b4-0f57b9177dee	0ae763fe-02b2-42a9-b57c-c80b737265b8	2026-07-02 08:33:59.776416+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}]	This product is moderate. Consume in limited quantities.	\N
084196fe-fbb8-4f46-9973-b0b7ac9c47e8	de40a436-b81e-47c3-9e58-b5303dd91a91	2026-07-02 08:33:59.896188+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Pectins", "risk": "low", "penalty": 2, "e_number": "E440"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
c9f6be22-f807-4937-9337-b2885d9ebb03	6a8c3f8e-534a-473f-a2c7-2b0035d3191c	2026-07-02 08:34:00.012345+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
da0f1e5f-3622-4a8c-b42b-0b40d3e16fb5	fd7017c1-dc34-48b5-8183-fc8fa79dc688	2026-07-02 08:34:00.128636+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product is moderate. Consume in limited quantities.	\N
18daf0f0-c5ab-4cfa-8219-a272c26e4947	00fb7cda-8333-454b-ae27-dc61129b5289	2026-07-02 08:34:00.245574+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
547da1b8-a52c-4e3f-ab9d-0ee38165f5a2	1b0af267-4209-42ff-b3dd-e85b0f028062	2026-07-02 08:34:00.363362+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Polyglycerol Polyricinoleate", "risk": "low", "penalty": 2, "e_number": "E476"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
ca92ecb8-9bdd-4138-8473-92d6a3194a34	c68a2a28-e9be-436d-ba61-3bac09723e46	2026-07-02 08:34:00.479018+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
30f40b2f-ab18-4639-9857-de7c9e604221	e1a97a90-3548-464a-8d95-b1000bf1ce5a	2026-07-02 08:34:00.59543+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is not recommended. Look for better alternatives.	\N
bb0e5053-47d8-40b9-b5c6-43abd3f22902	6f939a1d-076d-4907-9e67-80036452a064	2026-07-02 08:34:02.814612+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
96f45dbe-f577-4b34-88f9-ef74fd7c66a0	cc01816c-790a-47f4-afbb-a56c03c1edc9	2026-07-02 08:34:00.712171+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
2a06717d-63b4-4566-a9f4-1c1392be742c	58dd0ec3-fde9-4a1f-92b5-2e96a2185e93	2026-07-02 08:34:00.828265+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is not recommended. Look for better alternatives.	\N
8cc5bf29-dbd1-4318-892e-5ce814327399	df395e1d-d0ef-4535-a6ea-7940187e428b	2026-07-02 08:34:00.945224+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is not recommended. Look for better alternatives.	\N
89a7cf6c-cdec-4aab-89c6-72b1b0d634b8	93730a2b-77e0-4134-b04d-71218eb86951	2026-07-02 08:34:01.062403+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e323d2dd-e1cd-464a-a844-68f338d3072e	88ae8390-5dac-45de-9048-ea9b9c52c5ee	2026-07-02 08:34:01.180302+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
b57b197d-7dbf-42e0-9f2a-5e0187c349c8	30b84763-39f5-46e9-992f-7e6f260debd5	2026-07-02 08:34:01.29629+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Sodium Citrates", "risk": "low", "penalty": 2, "e_number": "E331"}]	This product is not recommended. Look for better alternatives.	\N
aa842c9c-f55a-4e85-b839-22f4573e27d7	a9d4a825-377d-4550-9fd9-d1f11cc5cbc9	2026-07-02 08:34:01.412186+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sunset Yellow", "risk": "high", "penalty": 15, "e_number": "E110"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
f25adc57-bd04-426e-88da-2428a83d8693	db5eddae-eb70-480b-a8f7-6904f4b6f18c	2026-07-02 08:34:01.529418+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0e0a5645-10fa-4555-be66-18ecc294b4ed	5b4c7f15-69a9-42eb-9bfe-bcfdebfa3bc7	2026-07-02 08:34:01.645813+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0d99c62c-606f-4fab-bb29-bcd11f2fffe9	4c075b9e-bd99-4d19-aeb5-7276f2b6da66	2026-07-02 08:34:01.760335+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
d51fac4f-64a0-495b-8b3e-39f699b1719f	27accff4-d7b1-41a0-a2e7-22cfdd28c7f3	2026-07-02 08:34:01.877382+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
287126aa-d772-44a4-b716-c695a5edd85c	a9fbade5-e722-4336-b4f4-92a9c7259485	2026-07-02 08:34:01.994068+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
972a5eeb-93f6-4881-8766-5053ad791ce9	6c9f2482-ee1f-49f1-a206-7ee8b64deb4c	2026-07-02 08:34:02.113572+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
44b6d143-78be-4d14-ae80-5079f1ffb90a	e2fa7372-9442-48f2-b982-5e972606ee68	2026-07-02 08:34:02.232618+00	[{"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
30c9a93f-fc3e-4776-b9f4-d2459e2b2320	f6a7f2bd-717a-49a1-98ed-8ee60576673f	2026-07-02 08:34:02.347976+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
e36c79b4-ea6e-4bae-9db7-64f2c8774603	d6d89b93-2215-403d-a93f-1fbcbbed387b	2026-07-02 08:34:02.463831+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
f45a1746-3e95-4654-972c-becab1a858eb	89556c5e-da2b-4d60-ac1b-f17c6bfdcb48	2026-07-02 08:34:02.583917+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
54bd1359-a77f-49e2-a2ba-cfdb478868db	f698ba57-96b6-4638-a1ab-445fdd48596d	2026-07-02 08:35:15.603199+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0357b554-adda-4a86-99d8-3d84d411d053	e8e5b019-b19f-436b-b978-1fe9e5262e74	2026-07-02 08:34:02.935476+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}, {"name": "Xanthan Gum", "risk": "low", "penalty": 2, "e_number": "E415"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
0c85a5eb-a725-4e19-aa0d-eb64f511348e	e3a00e3f-e4b9-44ce-825e-83a2e23db92c	2026-07-02 08:34:03.052576+00	[{"name": "Sodium Metabisulfite", "risk": "high", "penalty": 15, "e_number": "E223"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
9bb87f4d-b0f1-47cc-8c7b-c0a87cdbaae7	59664cce-c369-4e8d-9ee5-a9fbce13f0ad	2026-07-02 08:34:03.168104+00	[{"name": "Sodium Metabisulfite", "risk": "high", "penalty": 15, "e_number": "E223"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
c28898ab-c0b3-4f02-a3f9-00dabbc3eff7	187041c9-b63e-48c8-a2ba-514f6f39b5ac	2026-07-02 08:34:03.284821+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Triphosphates", "risk": "medium", "penalty": 7, "e_number": "E451"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
ed6596b4-7cb1-4e36-a0c1-fe6b5f5bacd4	602318ad-5d7a-4072-9106-1dcc94dc573d	2026-07-02 08:34:03.40385+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Triphosphates", "risk": "medium", "penalty": 7, "e_number": "E451"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e694eac8-2ab4-4a0b-a3c4-1c2f69da131d	46e51926-9558-4c42-8fc9-de1a1743dbbf	2026-07-02 08:34:03.526874+00	[{"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
3710b20a-8fef-4d12-b91a-ac8e80b2e4cb	a037409a-7022-4585-9cae-52f006aa49c0	2026-07-02 08:34:03.649041+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
290d4a53-1518-4ac0-be5b-dfc700019100	64f9bf2f-a437-4a70-ad67-699406792a71	2026-07-02 08:34:03.767006+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sodium Metabisulfite", "risk": "high", "penalty": 15, "e_number": "E223"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product is moderate. Consume in limited quantities.	\N
d8ea4dc8-1a3a-4d96-a80b-df4f392a5fd0	0a71d5b6-965a-4eb7-94cf-9984cc8dcc58	2026-07-02 08:34:03.886019+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Sodium Metabisulfite", "risk": "high", "penalty": 15, "e_number": "E223"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
22456f6e-56ff-4454-868e-2462147015a7	95cd4fef-878d-4a26-bc58-fd8af1d2c414	2026-07-02 08:34:04.018074+00	[{"name": "Sodium Metabisulfite", "risk": "high", "penalty": 15, "e_number": "E223"}, {"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
6ddfd1b6-ac91-4840-8af7-a1da90638cd6	ad0dc8e2-7889-43cd-a0e1-a6aee0943155	2026-07-02 08:34:04.138628+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is not recommended. Look for better alternatives.	\N
cce5fae1-5dfc-4344-a00a-6286d1f2218f	8198e8fe-907c-4760-b3e3-a8fa91d05bb6	2026-07-02 08:34:04.265511+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
33051be2-44de-49cf-960c-d54870c95203	78790027-851b-475f-8285-435f5c442371	2026-07-02 08:34:04.388258+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is not recommended. Look for better alternatives.	\N
79b49a69-4256-417c-b270-1c92ff0130f8	b69b24b9-a6cd-4ef8-8156-5ae40b064e32	2026-07-02 08:34:04.503587+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Potassium Sorbate", "risk": "low", "penalty": 2, "e_number": "E202"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
f793e506-7a99-485b-906a-e1dcbf8b8728	77eeed79-4bb3-4940-ab65-e4d765ada889	2026-07-02 08:34:04.618664+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is not recommended. Look for better alternatives.	\N
a41ba0d9-afb9-491a-bd60-e104ca848845	3fe603ed-5ece-4a11-b116-1e2bc4b0c223	2026-07-02 08:35:15.719053+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0fbb143f-6eb4-4594-8fc7-429b077557c0	ec3c18aa-b4c5-4bb0-b07c-823820fdd7a9	2026-07-02 08:35:15.833323+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9b6cd247-0116-4b67-985c-31cd189d241b	60d0c8aa-e608-415a-804e-c17637f444aa	2026-07-02 08:34:04.736867+00	[{"name": "Sulfite Ammonia Caramel", "risk": "medium", "penalty": 7, "e_number": "E150D"}, {"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
ebf18778-f823-4e76-9c4c-9e1145de1fa0	3bb1cd67-2693-440d-9ca0-40d96696ac75	2026-07-02 08:34:04.854746+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}, {"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
cf9616e8-775f-4a7b-ba20-cd089b58cce6	cc3f4db7-7601-4f01-a5ec-c8d88b53143c	2026-07-02 08:34:04.970992+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
da468e77-4222-4105-8e80-0d6bb6fa9632	ad8c916a-70b1-4872-8f10-1d98bd478b7b	2026-07-02 08:34:05.089273+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product is moderate. Consume in limited quantities.	\N
e6a466f4-1126-4f77-b7d8-4238496aceb0	61ae71ba-63e5-4213-b9b7-8b9db0d8375d	2026-07-02 08:34:05.205935+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
ee341951-f301-4fba-b9ff-e9a75b4e64a2	0914975e-e614-48b8-ad1f-7d8724b450ae	2026-07-02 08:34:05.321846+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
94938458-4935-4926-acfb-06f6a927664c	b6a9900c-c5e6-4611-b670-f3653793fec1	2026-07-02 08:34:05.432874+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
af3cec70-a3e2-4cea-932f-1a40a1aa68c9	75526512-90c7-4f25-9cfe-64ac1bfd3b8f	2026-07-02 08:34:05.549092+00	[{"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
705a225e-904d-4e93-b667-e6d8b884f552	dfe6f40e-f7d5-43b9-aed1-d46d36dfc6f5	2026-07-02 08:34:05.664474+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Calcium Propionate", "risk": "medium", "penalty": 7, "e_number": "E282"}]	This product is moderate. Consume in limited quantities.	\N
cfb758fd-93fd-4297-8864-c2b23173f904	62b9c078-e40a-4ec6-9474-adc006929566	2026-07-02 08:34:05.780724+00	[{"name": "Diphosphates", "risk": "medium", "penalty": 7, "e_number": "E450"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
0e00fcb2-31e0-4f90-82ba-52a7e1c42cd6	d21a0965-2887-491a-8e59-c4ebb43db137	2026-07-02 08:35:12.932386+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a242634c-f058-4691-9a43-b188829d5585	59135e20-0e8b-49b3-83d8-3f3d731e8557	2026-07-02 08:35:13.050455+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a59b801a-0cc5-4f73-8a8f-533a2b9f63a3	157c6ad7-056e-4cec-8df7-9831e394316e	2026-07-02 08:35:13.167343+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
17373523-f3ab-4505-b88e-3b049b58c902	dca6a75c-d94c-4bb0-a9b3-77b4a11a44ab	2026-07-02 08:35:13.283597+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a0409866-e193-40f0-8d50-6a1a38848f97	4006996a-6890-4145-a9f3-d11823cce0e0	2026-07-02 08:35:13.399313+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
16d7bb94-121d-48ef-88cd-0ce89304b1ca	c3d7bb43-057b-4803-87de-63c18e065e7c	2026-07-02 08:35:13.51786+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
15ef5c56-d2d8-4157-a913-b694c78e842e	9bf0610e-f0bf-4a71-9ca7-d322d7f03924	2026-07-02 08:35:13.635056+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4125ae17-4093-489f-a33a-144081ce2621	6a9967ba-8b50-4be1-b350-081536fa7fb8	2026-07-02 08:35:13.750621+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
941dc485-272e-4c96-b704-13a8433953a7	6129829a-e97d-4670-98e9-1c2a1033fe4f	2026-07-02 08:35:13.861337+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6dcc9693-4f88-49f9-afa7-05af90e9d37c	c46f39a4-cd9c-41ea-aa98-f49cf04226ed	2026-07-02 08:35:13.976453+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
b780e0e5-82e8-4dc6-8ebe-445b4122d6d1	d00a4287-2d49-4a3b-a124-5e4c89875edc	2026-07-02 08:35:14.092526+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
e1d4b19e-78ee-48ee-9776-aa09f5e72360	5bfb1b91-1a27-4c2d-ad83-023cafb0fb12	2026-07-02 08:35:14.208959+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fb1c7fe1-901b-482d-8596-3ac22308d345	eb00c6c1-976a-4102-9490-753cfd8ec91c	2026-07-02 08:35:14.324232+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7e305723-b36e-4ce3-9f75-4cd43b762e02	ff78e080-9e5a-44dc-b5ef-2d6b1fb5bbc9	2026-07-02 08:35:14.439773+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7e4c4c24-5c7d-40d4-a9e8-e5a85b9bc5fd	5f3e5995-5c3f-455b-9c0d-a8571243aa0a	2026-07-02 08:35:14.554835+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d7d02234-c28c-4df2-aefc-ccfdf3afac64	2057985a-eaa6-4e44-8b09-f833e17eb048	2026-07-02 08:35:14.670198+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7fc3873a-921b-4df4-ac34-51e9d52f3d01	adbc83a6-fb63-4153-ad5f-eb7c9ee8e836	2026-07-02 08:35:14.787238+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b14d27bc-a0a7-4942-9080-c5ee87ad90b8	6b96a6fd-efcf-473c-822b-7bb93add2090	2026-07-02 08:35:14.905687+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e32ff51e-ffec-4ee8-8000-8b7618452aeb	1a7e7247-ea1f-4b20-ae68-e43bd28dcffe	2026-07-02 08:35:15.024057+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
128592f8-21a9-4800-837a-d812fe84c24d	53a9cc20-fe04-40b5-baef-6d27f738857a	2026-07-02 08:35:15.141495+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
528130bf-bec8-4553-b8b1-f15e2cb6f7a0	bad5eccf-0f0e-4531-ba4d-5ae4a782d0cf	2026-07-02 08:35:15.257991+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f2b78af9-1f3d-49cb-9f4e-2d4359373606	ccaad9e2-72db-4276-a8c2-03465ae8784b	2026-07-02 08:35:15.372514+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
409e2015-1145-47fc-8426-c7b604e365cd	a463f8f5-5265-4e64-9e3a-5f72b3a321fa	2026-07-02 08:35:15.489137+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a19ef61b-083b-4275-8b1e-47c113cc9a4d	efd3d141-81bc-4ed4-a7e5-376d114a1f0e	2026-07-02 08:35:16.17962+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
afb8b135-a096-4aae-9732-65a819bc15b7	02ab8654-334b-4da2-94b0-78d65e70140a	2026-07-02 08:35:16.297553+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
15ad5f53-10a4-426a-8807-915c94e183a8	9b4b92ac-7268-4246-b669-975ac93b6b4f	2026-07-02 08:35:16.412711+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
87006131-d94f-4ba3-b403-598c80cba10d	8d788ffc-ae8b-463f-ba2f-a3b074b41f5e	2026-07-02 08:35:16.529957+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6a676a59-9078-4d8d-be97-1f13063985b1	0ac8b0be-202c-4943-93b0-d86511f19504	2026-07-02 08:35:16.645632+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
024fb9c2-9dc2-445d-9fff-2465a49aff62	0addb6f8-8084-40de-b7aa-adf1e698e355	2026-07-02 08:35:16.765913+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
92d31384-f6cb-4ef8-acbf-6d771e932c52	27da0876-21b7-48d9-8519-8532ce450b4b	2026-07-02 08:35:16.888341+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9985d777-fc9c-43c0-87d2-67fcbe88cad6	6ce9ef98-f572-453b-b833-c0e61b840893	2026-07-02 08:35:17.010648+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a10ee9c4-a714-4aab-8cf8-f8ba19ee2b46	5c29c06e-ed81-4ea2-af4d-f9f1a9a25973	2026-07-02 08:35:17.132845+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
76cb8342-f93e-4ef2-a71e-1b614f91cf03	5b54aa38-f73b-4479-bd0c-d524a90b2231	2026-07-02 08:35:17.253724+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fe80fb8a-0eb4-428e-977a-1e961aeb42ca	f9cbf043-deb5-4372-8073-1afa0c5df2d7	2026-07-02 08:35:17.378365+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7c1a19f1-405b-46f3-b9d2-b36669842f46	2820a14a-f297-46b7-add3-3c6ab55385df	2026-07-02 08:35:17.502777+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
97352ea7-8f87-4e12-b1c5-6a545fbd0508	8ed65025-8608-460c-a4c0-0a044dd899dc	2026-07-02 08:35:17.626192+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c310d18c-c293-46b8-acdd-68b25f6b3bf4	fc47f755-f519-45e5-a1b9-5391121c916e	2026-07-02 08:35:17.746932+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
92a65e0e-781b-4cc6-af56-1f7d28fc56fb	f17d84e3-8aa0-4b1d-b83e-e9683e8db07f	2026-07-02 08:35:17.862941+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
724da7f5-6bb7-47ff-bb2d-71aa06ceb9d5	44c3fd93-15ec-43bf-8f88-5eaf3579b729	2026-07-02 08:35:17.977162+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
84e1f800-37e7-4037-b67a-97eaf0c01f47	de4c31a1-ea7b-4537-bc4e-abdf46e680f8	2026-07-02 08:35:18.091722+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b246a789-6059-4ab7-a542-d6c48556e3f4	0dee4761-accc-425f-92e0-00cd6bef5865	2026-07-02 08:35:18.207353+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7790ab58-895e-4a40-a6f8-8b3ae5c758a4	63d5119e-1862-46a3-a75d-36902628ee0f	2026-07-02 08:35:18.321927+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
901cb200-2e59-427b-9664-f1e61c9e2b85	a191815c-5ae0-469c-9fc1-7232f843cccc	2026-07-02 08:35:18.431519+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
29d0d05b-5783-44b5-801b-013c905bbbc2	8efad127-7e05-41c2-8740-062b50ef15c2	2026-07-02 08:35:18.549629+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b6bc7150-6d71-4d57-9f5c-b434e5b854b4	449befc1-5aaf-4989-8839-b766b0f571d0	2026-07-02 08:35:18.668303+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fa97878b-858e-43e6-a080-987b162ebe07	96406c78-8f16-4380-9e01-aedf0a2461c7	2026-07-02 08:35:18.786106+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c5631da9-abd9-4ba4-aa9c-2ad96d0b4c50	303c001a-f7a2-491d-9200-978cdad05274	2026-07-02 08:35:18.901891+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cbccbaa7-d576-4dd4-a510-4690f49ca664	a63bb8b5-6bbf-47f1-8e48-b198b0074234	2026-07-02 08:35:19.016588+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cc7b5283-6fc3-452a-9e65-0492652931cd	cd864115-1aa3-4080-97d6-14707dac2af3	2026-07-02 08:35:19.131073+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d962de2c-4604-479d-b9d9-0f738eca23f1	7ade6801-210d-4d10-9324-def9736d7234	2026-07-02 08:35:19.246587+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
94782f0f-772e-439c-a481-8ed22698f99f	53d434e7-4f88-4cdc-8558-18b5f38d404b	2026-07-02 08:35:19.361689+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
568edf45-d1ee-4885-9b26-f463893e2181	f78d2a89-3266-48b9-bbd9-8bf09ea313b1	2026-07-02 08:35:19.479907+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f4349b20-ccc9-4ceb-8cbb-e146280ffff9	a88b096c-ccaf-4a14-b73e-1a2c1d8d3d4a	2026-07-02 08:35:19.59792+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e7495428-3a6d-4f05-bffa-5eaf7335408d	ee9fff4e-22f2-4227-abd5-9ad050664f9b	2026-07-02 08:35:19.715955+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
507418b4-6cdc-4c0f-9668-07f8b900e79f	a2f2d1e0-f60b-4d5a-afff-0f54eb55958a	2026-07-02 08:35:19.832735+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a98c9566-ed7c-4812-8d1e-2cc170e281a0	6724e5fe-d43e-4990-add4-d2c5477373e7	2026-07-02 08:35:19.949409+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
fe14edca-b195-4a00-b32e-a98f4385ecfa	64c5714a-6c28-4e6e-8695-4ced0c4d0923	2026-07-02 08:35:20.067277+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0290135e-31eb-4454-8650-b6a51147e1b0	68cbe13d-b57d-4aeb-b3b0-c04691b04edd	2026-07-02 08:35:20.183375+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9962aaca-cbf6-4504-8d94-29a7cf8ff44d	90e96da2-0ef7-40b8-a978-8912c634f5b2	2026-07-02 08:35:20.298302+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
701c0585-0e69-4649-8cce-5dfe926e9bab	b84de2ca-6bfa-4fb4-98a1-3ce5a5442593	2026-07-02 08:35:20.416184+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
06814ce3-ba0b-42e1-a713-9ec1c072cb9a	83e29e73-cb51-4741-8a70-f0fea645e1bf	2026-07-02 08:35:20.531236+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cbe3f6f3-e108-4061-a77d-bc7f963a15e2	1d38f559-f29a-448f-9f7a-fa2c62915009	2026-07-02 08:35:20.647249+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
49a0f806-d1ba-4db4-904a-fd513da6dec3	26a5c0c8-0de4-48c6-af68-4a2c09ecd273	2026-07-02 08:35:20.761735+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4296cca1-c6d5-404e-a61b-07d5be1745e4	d7e3b8a3-0a6b-4ef5-97f2-eb875425370b	2026-07-02 08:35:20.876507+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
02e9036a-8a84-4539-80f8-d7cea3aea28f	955f107a-dfde-4b5b-b899-687c7b724158	2026-07-02 08:35:20.991435+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
29935a3f-9665-440a-b822-3cd6e234a68b	e1bae76c-c22c-440a-a8c2-56792d88f700	2026-07-02 08:35:21.107216+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
46a3d313-87ac-4aff-ba33-86005ee9a670	55d2fee7-aee6-4f2e-ac6d-b29cddef15f8	2026-07-02 08:35:21.225172+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
20d0c910-41ff-4a18-a108-68401da40813	50b3435d-e724-4ca2-b2b4-fc4903420a9c	2026-07-02 08:35:21.342495+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1884fa07-54ce-418b-9085-2ad23884476a	cfc4c481-b4a0-4d54-ae2c-a8dd448bc9f2	2026-07-02 08:35:21.457815+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f694796c-1f2c-47c4-a679-9aef8c922c7b	ffd8ce2f-622b-43f4-bc6e-9956515d6dc4	2026-07-02 08:35:21.571985+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7c4a3a82-4e3a-4054-8975-e66dc51d28f5	65641319-b8bd-4485-b9b4-5bb44d1d2e9c	2026-07-02 08:35:21.687619+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1a64b352-9c2a-4581-b108-cf4b02909607	0f21ec78-9dde-416c-a954-8e2ed2d33b7c	2026-07-02 08:35:21.803268+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
cff28efc-5f76-4722-a151-62df5ad3a75f	547a3a53-ae39-4322-b5a9-52c8a92aae02	2026-07-02 08:35:21.91767+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
622d6eb0-d54a-47a1-b612-ee9707d46bd9	207874d8-2e3d-45a1-aaba-69181d46faa3	2026-07-02 08:35:22.032568+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c86e0ee2-27b9-4130-9605-feb230a885a6	d6f929b0-1aba-4336-aff4-43b24af4c7c4	2026-07-02 08:35:22.147416+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d73a12ab-0c4c-4e82-bedb-87cedf9fa421	d5fbef29-7504-4c85-941d-e80cd0cf5232	2026-07-02 08:35:22.258024+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
08fcc05a-7056-4c4f-a405-1a85840596ff	a7583f5a-618a-4b4d-9885-f479935a3002	2026-07-02 08:35:22.371964+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8ecec43f-cb24-4b9b-9e4a-c671fdfa5ceb	9fc69d63-db4c-4ba6-bced-cdafdc76f61a	2026-07-02 08:35:22.484868+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9af897bb-5a0d-4af6-8196-a79f8a5afe95	5a3806a3-dd74-4f29-b114-d61309d6b72c	2026-07-02 08:35:22.599528+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
aa10a609-bdb1-406f-8898-ee2e00254ddd	eda52ba4-8ea6-409b-aec8-27bb1f5a579c	2026-07-02 08:35:22.714673+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0bc5016c-9d63-4313-ac15-009502340ee7	4cc936e1-802d-42db-ac71-f2b5657d97a3	2026-07-02 08:35:22.829393+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f3e168c0-4a79-4ee1-971b-7dcd099adcbd	eed432f3-978f-4a40-b0bc-b8d052582168	2026-07-02 08:35:22.944107+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a133c9aa-d30f-41e7-8efc-215456a2e743	25940e74-a2e2-48fe-9d1c-4c124cc44823	2026-07-02 08:35:23.061795+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d8914c17-6554-4c73-acbf-b4b6463cc19a	b2645b2c-b783-40f3-9ef0-dbb0ab185b03	2026-07-02 08:35:23.179009+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b0f632d8-3d05-48f4-91b1-4bb79328cb7e	184d45b1-b999-4f93-84f6-0e2bedeb425c	2026-07-02 08:35:23.290825+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
75c393fc-839b-48f3-9396-9142f1143f96	5c26ebd8-9c58-4a4f-8479-52f34f2c225a	2026-07-02 08:35:23.404432+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e797b9f3-db79-4918-be82-ec52c3c46883	0dd85390-2bef-4bf9-b66e-813c644ec577	2026-07-02 08:35:23.518331+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
05715852-cb23-4f21-a229-ac919b5b16e3	00902a8e-90ff-4b3b-baa5-de5b3134be24	2026-07-02 08:35:23.633324+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ab2921cd-357a-4d12-800d-f7f627a92912	bd60e9c7-6458-423e-b460-91039d4dd4b8	2026-07-02 08:35:23.751564+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ca76a3f2-ec8c-4f71-972f-e69d700ac307	b6ca6b40-f512-473e-89e9-04e9aed2d856	2026-07-02 08:35:23.870356+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
95f1935f-fbc9-4f24-8ca3-a083663a8881	67318e25-4824-478b-9650-c8f896d7c2b1	2026-07-02 08:35:23.988466+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
690622e0-70ef-4149-acd6-6cbe441ea090	56da3e73-8a9d-487c-b4cb-42845db99816	2026-07-02 08:35:24.106916+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dbc44452-1d6b-47f4-93b4-709dfd19a330	eea0614f-255c-4b44-a226-006ddf88b2e6	2026-07-02 08:35:24.223674+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f4535d80-dc26-4332-8757-edb87324fe89	c54a17d1-2d77-4939-b630-29c0b14af053	2026-07-02 08:35:24.341322+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
77f1c7b2-4e33-4563-bc62-139db31aa5cb	d5f67685-8e8e-40a6-812c-a4c5cd8afad5	2026-07-02 08:35:24.459074+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ffb6d0fd-0143-447d-a58e-2966a2d7a5c7	b9387e82-66f1-4922-9caa-029b23843d8e	2026-07-02 08:42:34.130284+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1db5d185-9e76-42ca-8b0a-744e645d2b06	db75d719-13ae-4d3d-8101-11580a3e7f8b	2026-07-02 08:42:34.249331+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
800f8774-1041-48ab-9def-cb6252d102eb	1a1d235d-8d86-4007-bfa6-b0136281a412	2026-07-02 08:42:34.367548+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6b344318-8c4e-4bdc-bce4-d8fd5f24a704	3c0992e2-d303-4fd7-a542-607692acd140	2026-07-02 08:42:34.484566+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
001cddfa-7ce0-4306-bffa-5d537a7a2559	e3c87d3a-6713-4af0-82f7-1e7ee7c7ec1c	2026-07-02 08:42:34.602384+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
edd21a5b-1fbd-4258-81bf-c6435508bce0	fd490572-4b54-4d40-a897-7e8e53647c79	2026-07-02 08:42:34.720563+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
76f6b82f-6c91-4984-9b57-87cd609b6f5b	dbf43cc2-f90f-42a4-8e36-cbb4294d533c	2026-07-02 08:42:34.831492+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
beca7e79-d920-429a-95e3-108dd70ea507	46d87596-a41c-4292-b873-f1e4d54fc9ca	2026-07-02 08:42:34.946859+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
54df800f-bcaf-4b15-b8ca-f75177a6a947	1c5f5662-01b7-4576-80fd-a2dbcf4ab34d	2026-07-02 08:42:35.063939+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
202ec173-e5c2-4543-b12a-138e096a2c0e	dc851c24-ffb9-4255-bc58-5a8e187df6d8	2026-07-02 08:42:35.17829+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
caa60558-dbe9-4eed-90d3-8e3d243537f2	1d0ae918-c538-4728-8937-167cc718749a	2026-07-02 08:42:35.289511+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0a2d6544-9a3b-42e4-9904-d3327cef782e	8edc17f6-e556-409f-ad7f-8b6bc76beaaa	2026-07-02 08:42:35.408565+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d640eefb-716e-4bc9-aa5d-7105b213254d	38f6d2c7-71b8-4881-a567-43730a7aded5	2026-07-02 08:42:35.522199+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9dd75154-4795-4a05-9004-b60ee5859da9	f868344e-0b58-4f45-91e2-1b44ebb885a4	2026-07-02 08:42:35.637136+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d0a09dda-6087-4900-8ff2-d46f982e865c	2479e3ac-817d-4dce-a7ac-b24bef216c70	2026-07-02 08:42:35.752734+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8016ba29-c4f2-4707-a9a3-305174f9a57a	ae4731cd-cb35-4fd2-ba12-3bac7b443891	2026-07-02 08:42:35.870818+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e36fe42c-c90e-4c6f-87e1-74704a569f8b	d633828b-aaf1-4ea3-a993-f4c8db266684	2026-07-02 08:42:35.989257+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
83684143-8bd1-47fb-b583-3e0425e0912d	85093cfc-7162-401f-8c45-708512c34a64	2026-07-02 08:42:36.100312+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a6982379-a7f0-414d-be92-96a06b1891a2	2d0bc833-3860-48f5-b07e-8821ff6a900a	2026-07-02 08:42:36.215131+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
27b8c6d9-8e86-475c-bd72-044900acec47	cf998713-4336-4acb-ac3e-b372c85eba09	2026-07-02 08:42:36.33117+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2dae43cd-802e-4578-ad19-178f71df47d8	9faa73ff-14d8-47f5-9dd3-cbb250d0d11d	2026-07-02 08:42:36.442725+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
27ee2a73-cc22-4e3c-9196-093a493e5849	9e0e2571-57b0-49f0-b2e1-c9b00b5d0593	2026-07-02 08:42:36.557659+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7c3cf441-7bbd-4b0e-b166-2e7219b5f53a	0629647f-9123-4fe7-af77-9cc9de13a6cd	2026-07-02 08:42:36.675021+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7bd2219a-c373-4432-9c8e-bc60f56223af	46136d6b-dc60-48fd-8440-14db9fc2e685	2026-07-02 08:42:36.791174+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2b4b7df0-23d0-41a3-8097-49066d74b8fa	7e09a878-a976-41ba-b52a-fe6e359a5329	2026-07-02 08:42:36.904747+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5cbd5732-71e4-4464-9f48-f2feae27eb35	791d50ee-5cd1-42ed-9c04-859360dc2994	2026-07-02 08:42:37.023446+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b69a228e-f6e0-4bf6-b216-531f12df71c5	f257d39c-c903-4ddb-8f0a-e7bbe6adde00	2026-07-02 08:42:37.137808+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2cae9255-b05b-42c0-833f-6a74482daa98	f5225013-2aaa-4c47-9f6d-9427156df504	2026-07-02 08:42:37.252406+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
17f41c8a-ecc8-4476-a807-8cff60b80b32	f7085dc9-2798-40fe-94d5-a54cc3b4d9ca	2026-07-02 08:42:37.370243+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ed68a84d-4219-4fa8-b566-b2e5b11fe006	f5ab694b-51a1-4e3e-b1d9-f7f4035768a4	2026-07-02 08:42:37.486474+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e66d31fd-43a4-4139-8b2f-25c4d83ef985	b5eab72a-9d93-419b-a239-89728981ba34	2026-07-02 08:42:37.601878+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
98c11a38-d9e7-4bb0-a885-0eac67944205	5655e9ec-faed-4fb1-acef-ce97357c6d88	2026-07-02 08:42:37.716579+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
e7b875d6-f650-42b0-af4d-5a9133911abe	faa18497-31af-462b-a0b3-aa2ec11dbfa2	2026-07-02 08:42:37.834373+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ce4f1bf1-61b9-4fbb-908e-8e44c09db53f	b89601ee-71df-49da-8ec9-3dc2885c241f	2026-07-02 08:42:37.952076+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0d5b485c-149e-4a36-8c65-a7a6c321f2a7	8d0c8d5e-8ee8-456d-9aa3-29eff58e2dac	2026-07-02 08:42:38.062333+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0f4ed0c7-f146-4274-b69f-b4113d92f9d3	66ed68d6-f563-4b1f-8cc6-f38c91601918	2026-07-02 08:42:38.178282+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
48149f81-55df-452c-8e28-74186c6f27a9	1c2f775b-d6f1-4708-a85f-8e1a0f0c18ce	2026-07-02 08:42:38.297427+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
6ab41835-e925-4148-b68a-09afff03aabd	43db0c8e-f2d0-49c6-a428-61b2d7a6ac81	2026-07-02 08:42:38.412252+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
28b1b6c3-67d6-4159-be0e-53dfd370d35f	f502c63c-88c8-4ad2-9f1f-b5e3085f9edb	2026-07-02 08:42:38.530743+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Allura Red", "risk": "high", "penalty": 15, "e_number": "E129"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
ab06b7d4-10c0-4b7f-9140-4141992daa0f	9e84d9b6-ad29-4991-9d0c-7079462a1529	2026-07-02 08:42:38.650445+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0c304f69-ee4f-44b5-83dc-e84762cfb447	356f6115-922e-4fc4-9f7f-4f9093c16b98	2026-07-02 08:42:38.770706+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
49f032f0-7726-48a7-a87e-d8f7f17ead9d	4392b1d6-e033-414d-a7c9-ecd52ab7c429	2026-07-02 08:42:38.890883+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8be4e132-9f3a-4627-ac16-ea7f55159682	bf100ebe-3665-4496-b437-2f12d9c196f0	2026-07-02 08:42:39.012545+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
97fc5abe-cd79-4667-8aee-809acf73ba59	45550833-bb86-4297-96c2-cdb87d58d834	2026-07-02 08:42:39.130175+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9c0475c4-91eb-4e6a-99c8-fc5e688518f5	233d27f8-4530-4f93-881b-343d546e4435	2026-07-02 08:42:39.249824+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f90e5f21-9840-4bd4-b012-a9efeef08a56	7fb13217-27c0-4aae-b0b2-16929b2b8fc3	2026-07-02 08:42:39.366044+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
8c13e331-1736-4ad1-8068-d4f365906516	da73ce8f-65e6-4f6c-9dda-f5d6b7d32b25	2026-07-02 08:42:39.484601+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3e99d7fd-fc21-411f-b287-4b2a0f2923ca	c3028b7f-5f71-48c8-af64-1eafd742ce55	2026-07-02 08:42:39.599066+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
42fd568f-e863-401d-9a2f-f9ed46e196a8	d2a4bd2c-f6ee-4c08-994e-7ec447ab51a6	2026-07-02 08:42:39.714906+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4e0f5570-f985-4364-b668-7c8f9c0789be	b676ec13-7496-48f1-b988-91460ab748f6	2026-07-02 08:42:39.830365+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f9932e89-2298-46dd-9153-3e8b43cde885	c15a8a59-ab0e-4eea-b43e-30748cc8ebb2	2026-07-02 08:42:39.94557+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
dd9ba02d-8f89-46d6-9e9d-a75952ddb2e5	38ea444d-cf26-480b-b856-e9334193826a	2026-07-02 08:42:40.06047+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ed457e39-b51c-494a-8135-a13692666d4b	ba9e2749-7a84-4984-b3ef-d30803900ee3	2026-07-02 08:42:40.174851+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}]	This product is moderate. Consume in limited quantities.	\N
593ba3c0-3051-4361-8a60-e88109cc2584	9339f6da-fc37-4d3c-b568-c33c3527250e	2026-07-02 08:42:40.29075+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
94a8a2ca-d7b9-4a13-b1dd-1430e8442c4c	4131900d-a795-43d7-9142-6720fb7fddb0	2026-07-02 08:42:40.405237+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a1326068-cad5-49f5-aa7c-552d18fd5586	c96def5e-cc78-49ac-a7a0-e4d3a7948e2c	2026-07-02 08:42:40.519072+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
46b251ad-de67-4200-85c3-d0ba59cc6a32	f69d3b50-0d46-404d-9ac9-1278f5549a99	2026-07-02 08:42:40.635646+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
05f517ca-fd01-4601-9336-017f160d815b	dc2afb88-a70b-4b9d-b7f8-ca24da844581	2026-07-02 08:42:40.748668+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0d6fed81-7e2b-4dd2-9ce4-1eed1f73808c	29658492-ad1c-4e1a-bf10-cf9e20c8a96f	2026-07-02 08:42:40.857211+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
95b1fd3f-7255-4f4b-bb70-8083154a0bf7	e02df9af-7f06-4183-a0ff-4edbcaa932d3	2026-07-02 08:42:40.97165+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b8937545-f16d-43dd-a811-75460772e003	d1b50a1c-cd8e-4b1c-b8b7-2cbab2dfc7e2	2026-07-02 08:42:41.087577+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4f944505-b819-41ab-8d08-afb2a9848388	e531c748-fe19-4e62-8392-171b549941ab	2026-07-02 08:42:41.201972+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
59a00418-c1fe-4e4d-9a27-6344644dd1e2	8e5dc975-26c3-4fea-ba68-bea0435da37e	2026-07-02 08:42:41.318502+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7e2d845a-3594-42f9-9174-181af5b74ca6	82b0bc6b-b3e3-4a66-9f4d-a3fd27d429a2	2026-07-02 08:42:41.435175+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4c006010-03c1-4946-8377-4624e3c83f68	fe414a80-27fb-4f3b-b813-b88a068c86a4	2026-07-02 08:42:41.554952+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a2149cdf-c1be-492c-bc56-278de9b674e8	2596dd7f-e60d-431c-8456-e7590b1710f5	2026-07-02 08:42:41.67235+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
342e72e5-9120-464d-b545-33f4e2b5af85	76d04b3d-de8a-4714-b09b-dce4484a9bdd	2026-07-02 08:42:41.787711+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0bf0f69d-5a0b-488c-81bf-9b7b018bcc1c	31abc78a-530d-41e1-b217-30647718789b	2026-07-02 08:42:41.90321+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0846c964-7257-4432-89d3-231574430a44	da7a7e3e-60b9-42ff-a0bd-d026d8566850	2026-07-02 08:42:42.019908+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
7ac9ac8c-cf10-48fc-9151-d4cc7a561c9c	1f92d8ad-9924-486c-826d-c91abd2e5480	2026-07-02 08:42:42.136321+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d6353578-1a10-4807-8d0c-3777cd31db66	6383ffb9-aeb7-4daa-81d7-512d7732b5e7	2026-07-02 08:42:42.252769+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6554bc17-59ad-45a9-af4a-d23ca5482b29	9c191d3a-4920-465f-8948-69fcdbb1eaf9	2026-07-02 08:42:42.370671+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
26adbd6f-74c4-495c-9576-efef38763989	f2b7bd0f-84a2-444b-b074-73629c9a06ef	2026-07-02 08:42:42.487146+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
25f5d58b-7ab1-4d27-814c-093f311ada08	80a234b6-3af1-4813-a115-f4fa0d038d6a	2026-07-02 08:42:42.604767+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
72181cd3-b51a-4b4d-b040-508add5bab07	8891972b-4a65-4316-987e-04ab6e383820	2026-07-02 08:42:42.720717+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0e0b3402-59da-49cc-93cb-fbc4c17845d4	dd8dff23-892c-4552-bb73-f9b64fec93ca	2026-07-02 08:42:42.835629+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
5708751b-e811-42b2-b991-842eb4401289	c61ac0db-7ab8-4c46-a511-9a3bc370ad28	2026-07-02 08:42:42.949784+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
bac21325-59f0-4027-ad01-ce47049d1bee	3e3ba2d7-6610-49b1-886a-775c92883b00	2026-07-02 08:42:43.064209+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9a496cce-fd34-45ab-a86f-8c5814788065	5e309701-e3b0-482e-8c37-77bc93eb005e	2026-07-02 08:42:43.179056+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0051e5e9-5484-4dd0-b9fd-3f71b5b3b39a	d10e2b01-70d1-4e39-9552-967fe58b0a86	2026-07-02 08:42:43.294594+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
95e75806-a9c2-49e4-a64a-ea386e3501ad	311a0a38-7712-417f-863e-1dd7c5cc3462	2026-07-02 08:42:43.418011+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6f8dde56-7617-451f-b814-192a59190380	b092421c-8a5f-4706-930d-972ec1f9bd58	2026-07-02 08:42:43.535822+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
93ee29d7-54f4-4538-b1b5-028717a0f2eb	1e37da57-a5b7-4c72-9c0b-0ea0918d43f9	2026-07-02 08:42:43.651207+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
9c57ea7a-e9f2-4540-a4d2-a072350bf6b3	5dd66a46-4296-473d-ab8a-636c25ebb331	2026-07-02 08:42:43.769575+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c3c796ac-a88f-4835-a703-fdbb9e7b6479	0c6d8510-5eb4-487d-b80d-ac304c60ef9e	2026-07-02 08:42:43.886557+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3a4719ef-2d9e-44d8-a6c8-3b6987757a2d	e2289eef-4b12-4d81-b3bf-19868d29b035	2026-07-02 08:42:44.001521+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4b077dce-4eaa-457d-8ca0-26d6f2cf787f	cac6158c-a9bd-4810-a37f-92f6a9055a3e	2026-07-02 08:42:44.121894+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
b9ff6e7c-25ef-4b82-8e04-e2027db2693a	05c8ce8e-a23d-43a3-bf5e-1398140024ce	2026-07-02 08:42:44.234233+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3e40e279-d11c-47fd-acd1-722797bb3f13	4497f2ba-a96f-4980-ad52-09e45ea715d4	2026-07-02 08:42:44.352917+00	[{"name": "Sodium Benzoate", "risk": "medium", "penalty": 7, "e_number": "E211"}, {"name": "Acetic Acid", "risk": "low", "penalty": 2, "e_number": "E260"}]	This product is moderate. Consume in limited quantities.	\N
f092b73f-9024-4b30-b044-be6893b62f70	7350e69b-e5d0-4420-8b3f-6a130d7c26e9	2026-07-02 08:42:44.473006+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
c3ed283b-f15a-45b9-96e6-20378c1971b7	1e574d7c-aeef-4f74-9150-0f942273f921	2026-07-02 08:42:44.583852+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
54831f73-2dde-4937-ba73-b4f4ef491afd	e64b1d65-0c23-4f5f-8ca1-4eb1c0ce3e14	2026-07-02 08:42:44.699983+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
56ee07aa-7097-4be5-8b42-bbacdb95989d	850f8595-45d9-4132-9ff9-2f2946d23fdb	2026-07-02 08:42:44.815389+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1e4038f1-7894-43a7-aa2c-7fd1a507904c	84c19285-fd09-4948-8339-1f10d89d508f	2026-07-02 08:42:44.932115+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1a2d7e93-fbb9-4f2a-a109-0f2ab1b61bac	e1be86f4-6e07-48e7-9259-5ba69f75f5e0	2026-07-02 08:42:45.042344+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
24683044-2209-4b92-bdb3-375f7df6177a	b5bf3ee4-feaf-4ef8-aaf3-646f271ef57f	2026-07-02 08:42:45.153806+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
2f73841b-fc84-41b4-8bfd-323038ed8a70	2995c5cd-4b16-424f-9497-453689bdd536	2026-07-02 08:42:45.272794+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
c8056c0a-fff5-4843-ba0b-9d0bc9a26a0b	b91161ec-7a47-4745-b08e-49aab77fc5f0	2026-07-02 08:42:45.390271+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
eb6a87f1-ad8f-40d9-ab7e-cb21197684f3	a821b8b3-bd87-47ca-a36e-0147ad643008	2026-07-02 08:42:45.51157+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
fe84fc7d-aa27-4571-ad95-f2270f7b5c33	9a7bd9a7-349e-4d94-a980-eb7d8097e0ac	2026-07-02 08:42:45.626253+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
c1dae5bd-7d71-47ea-8831-30a20fc36c86	b503c1c8-166d-428d-8527-b7245168aa96	2026-07-02 08:42:45.736879+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
e31f229d-6545-4067-93b1-b6fb579168e2	07e75c4e-9889-40ce-8838-04b2e4c9aa1a	2026-07-02 08:42:45.854048+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
fe9a9825-7a06-4553-b9bd-f52043d4ff2c	5e05b1f9-44f4-4f39-a5cb-fca91c4ef949	2026-07-02 08:42:45.969885+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
d8d3eaa9-9b29-4e59-a425-6df983b67eb2	2bb4cb7f-076d-4ad5-a957-51f85cd08620	2026-07-02 08:42:46.088157+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
06c7884a-732a-411c-9c76-ebc956e689f9	f21e2217-0af5-4b93-9ddf-1bbd2244ffbb	2026-07-02 08:42:46.203578+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
d3323a28-376d-47c0-8429-49d7e6c7940f	50fc9da2-0bb2-4517-b9d6-9681b61d9862	2026-07-02 08:42:46.317401+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
49443a0e-8a66-4673-8465-d5f361694a29	06b21590-0b88-4727-a479-6662ad937ca6	2026-07-02 08:42:46.432618+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
9201a7b4-2b8a-45e5-b133-0b7c9e97df8c	4aeac621-2d9a-4634-86af-30d75f46c0cf	2026-07-02 08:42:46.547774+00	[{"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Carboxymethyl Cellulose", "risk": "low", "penalty": 2, "e_number": "E466"}]	This product is moderate. Consume in limited quantities.	\N
1d502469-0ee1-45c4-a028-428deb5c8acc	adbf1e06-e473-4284-8edb-5fc3646a9b78	2026-07-02 08:42:46.662792+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c0a88261-2bf2-4ab2-b835-2fed43b058ef	c13679ce-a212-49f5-a626-597c5d32d9ce	2026-07-02 08:42:46.776507+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
07256bcc-bb05-4265-8e36-0b088c7bb1ca	6f0f6e5b-cc8c-4c61-a335-f203faabdd45	2026-07-02 08:42:46.889992+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
051a7fb1-de27-43aa-9ce2-2722f1b8e8e0	6f951477-3d6d-4b8e-a4f5-02228f1e37b0	2026-07-02 08:42:47.004742+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
75a53dcd-afc2-4c11-b245-5ada638c4aad	208c604a-ce00-4540-bdee-a1cfbee57df3	2026-07-02 08:42:47.119666+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ed6b4ede-85ff-4226-866b-d8b1927a30f3	4b853fff-cc9d-487d-ac29-5377e59390d9	2026-07-02 08:42:47.234567+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
ba754752-260e-45da-8a80-8224a41c9557	030c25f8-ae3e-4413-816c-457854ac54fd	2026-07-02 08:42:47.348194+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
0264daad-b8bb-4150-ac18-dc24a58dea48	ee9e33c8-a392-4a19-9c9b-d567ab79a9b6	2026-07-02 08:42:47.463166+00	[{"name": "Citric Acid", "risk": "low", "penalty": 2, "e_number": "E330"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
7b638764-6714-475f-bb42-9da33bf55bbb	6e46ec6c-a622-4a73-aaa7-bfb57dc22e9e	2026-07-02 08:42:47.573941+00	[{"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
706a0cd5-d045-410e-9988-ee8de4bb8213	7991073a-e80c-437a-9608-e856de4209a8	2026-07-02 08:42:47.684608+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Sodium Carbonates", "risk": "low", "penalty": 2, "e_number": "E500"}]	This product is moderate. Consume in limited quantities.	\N
d2de0222-da42-43f7-a816-67ee4480230f	10d77f99-33bf-4765-8c3f-4dc479b89802	2026-07-02 08:42:47.798928+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
f2886376-f1be-447f-8c00-fce79d2ab2f5	d05f47e4-423c-490b-b857-009c036e5f54	2026-07-02 08:42:47.91363+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
ec74a0ad-a07c-4c74-bdae-4727f70ada0d	9633732c-3bb3-46a1-b625-befe62ada12b	2026-07-02 08:42:48.023111+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1cd8884d-aa84-41d6-9ba8-2c3f9e5c9832	9da1d511-caf1-4bdd-a481-41c33da4bece	2026-07-02 08:42:48.137882+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3efeee79-57e2-4963-9820-21ca0fe5ece9	bc8bd4b4-2f64-4784-9be1-ea603f9a9bcf	2026-07-02 08:42:48.255668+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2b6207c0-ba62-4d13-96af-22226b4daee4	329f2307-1665-4fdf-ad1d-a51d0f318b88	2026-07-02 08:42:48.368541+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
66d3ff42-6208-4256-85f1-0f1621b77b43	1c553c42-746f-4205-a43c-178e1a379509	2026-07-02 08:42:48.486252+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4307367f-d732-4fb0-b20c-709039d238c3	3f877390-77c0-474b-919a-6a38c2858ef8	2026-07-02 08:42:48.602008+00	[{"name": "Acesulfame K", "risk": "medium", "penalty": 7, "e_number": "E950"}, {"name": "Lecithins", "risk": "low", "penalty": 2, "e_number": "E322"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
474063eb-db20-4a51-9ad6-ee8ac511d1e1	924b5cbc-4722-4dad-ad98-5d98591a7710	2026-07-02 08:42:48.712503+00	[{"name": "Titanium Dioxide", "risk": "high", "penalty": 15, "e_number": "E171"}, {"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product is moderate. Consume in limited quantities.	\N
a892dbf5-9960-432f-a18e-307b05258482	7481e55e-5611-47c2-8797-08f54b7ae537	2026-07-02 08:42:48.824638+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
fc66966b-1aeb-4d09-9caf-b2dc6438b392	55ed35d6-4d82-4b93-923b-40c972af23a3	2026-07-02 08:42:48.945423+00	[{"name": "Titanium Dioxide", "risk": "high", "penalty": 15, "e_number": "E171"}, {"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product is moderate. Consume in limited quantities.	\N
6f8b65a1-47fd-41ce-83c2-265880bfa7f3	402d68dc-2c2b-4363-8277-48ed4200d318	2026-07-02 08:42:49.057107+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
295c2ddb-8fe4-415d-95a1-02640b8efed5	a4f08562-9b1c-4280-9547-32da2bb3af9f	2026-07-02 08:42:49.174334+00	[{"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}, {"name": "Glycerol", "risk": "low", "penalty": 2, "e_number": "E422"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
034a583f-bcdc-4a5e-a3c8-e1ce8f768707	d4e5f5e0-7ff6-47ca-be5b-a61d4d63590a	2026-07-02 08:42:49.302735+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
53157551-ec17-43ba-a53c-0efdb3298810	e463c002-3f41-4dd4-902a-bcda80b68126	2026-07-02 08:42:49.426667+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a2910987-976b-4e03-b95f-3a1f7ded7a96	02bc7ba6-bd62-4647-a8e7-2370ec97088e	2026-07-02 08:42:49.549863+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
46d72c63-4e17-4bbc-864f-ec7cf8b73203	f95047cf-c9af-446c-89eb-cc9bc33725f6	2026-07-02 08:42:49.678599+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
42049e28-5566-48a2-86df-74ba99dc7415	403e380d-742b-492f-bb41-c2edc884961e	2026-07-02 08:42:49.797285+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
9818b7c4-2c36-4168-bd45-c764d694aae6	b3ed7f9e-9dde-4ed5-a219-cf6360944e0a	2026-07-02 08:42:49.921175+00	[{"name": "Tartrazine", "risk": "high", "penalty": 15, "e_number": "E102"}, {"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e58b0ca4-9305-4a44-8885-3cc5df7e2d7d	6f429a70-9ab4-4538-92ac-5ee954a89786	2026-07-02 08:42:50.051222+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
a7ccbcaa-b364-40e1-8437-d453264c7e62	18b5011c-9f39-4061-9b41-7d087e05b44c	2026-07-02 08:42:50.171547+00	[{"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
30d53f6b-5795-40e3-ab44-75fd3a487dfa	cbb55548-9624-4ebe-92cb-2108f76c7839	2026-07-02 08:42:50.286838+00	[{"name": "Titanium Dioxide", "risk": "high", "penalty": 15, "e_number": "E171"}, {"name": "Cellulose", "risk": "low", "penalty": 2, "e_number": "E460"}]	This product is moderate. Consume in limited quantities.	\N
f2d7a886-db9e-4484-979f-6ae3b6320b9a	358251bb-17e4-4244-9f15-b81c7f09df42	2026-07-02 08:42:50.408253+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2a19af88-4948-4df8-b0d6-501295268296	5998dcc0-5987-4d3d-a44d-732c304ed426	2026-07-02 08:42:50.53307+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c192d9c9-dd1d-4069-b0b8-f78c039f3f82	bed681b1-9e73-4aec-b380-350978bb68b0	2026-07-02 08:42:50.661929+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4e5007b6-1611-4492-8da3-2758f6644b02	86e157a9-bb2e-4515-aeaf-2783c6d57a94	2026-07-02 08:42:50.785268+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
542d0aeb-68b2-4507-ac3c-62742ed82ba8	ccb75da4-ede9-439b-863e-6f063e4aa96d	2026-07-02 08:42:50.912746+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
333f6055-f08a-4b1e-a3d1-1ab2249b7530	a88da5cd-556e-4277-b44a-991f81ebbf00	2026-07-02 08:42:51.039998+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
60ef7e8a-da02-4409-ab91-075299508273	03561dd6-88ed-4f1d-a420-ab2833ab7a22	2026-07-02 08:42:51.166895+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
366503d7-ad52-4c96-b587-c3d16766759e	4e758331-74de-4d9c-9bca-60d4b346e6d8	2026-07-02 08:42:51.292567+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
65f57083-febc-4faf-b83d-6c83bd14c6a8	d8cb879e-55c3-4514-8e24-d503734b38ed	2026-07-02 08:42:51.41445+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6ad84add-c2c9-4b64-b016-2335f5d0c9bb	edadd413-8b1b-4b13-9a50-1bca3f85e962	2026-07-02 08:42:51.540437+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3465f6a4-1b16-47da-9fc7-f5d4d671c80e	904f9bd6-668d-477f-8cc1-d4d233b49c23	2026-07-02 08:42:51.665662+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
63a25ebe-9ea1-483b-bb2e-2ae0e4c5de06	8b1e2378-ac33-48ce-8e08-20ef2baba212	2026-07-02 08:42:51.782868+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
af9e26db-1560-4a9d-94fd-30d2d4be259a	fe78969a-0fc7-49cb-9d02-3aef45f02072	2026-07-02 08:42:51.906514+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
001af4e9-c3d2-4cf4-8759-1dce9446b62d	2c7bb1f1-fdb7-4ba0-9236-e953647e3c32	2026-07-02 08:42:52.034038+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
6ff6a799-373b-49dc-8e15-ae6fb39d0b3d	cd81d535-daf9-408e-8c23-4ee7a7593790	2026-07-02 08:42:52.159868+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
92fb137d-28c9-40a5-801a-4ed29cc3f020	63c0f087-b6ba-4410-ae07-e1b32d551c03	2026-07-02 08:42:52.28991+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
a040ebd0-e9dc-44b4-80aa-acbfbaad3afe	a05129a1-0204-41dc-b8e1-33cbcab44884	2026-07-02 08:42:52.420404+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
064a88da-1357-437b-8259-408d62c15782	abb0b9bf-3f12-40f9-b553-580f5c85b263	2026-07-02 08:42:52.543974+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
001c5361-45c7-4e09-97bb-bba92b400a5e	34ff15c7-4fb7-494e-bbdb-d5f6e4679f6e	2026-07-02 08:42:52.6668+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
a9b26658-79c5-4bf0-8e2b-ee56864ebe05	dd7cdeff-f23f-4ca5-9e05-6ee5c510f06b	2026-07-02 08:42:52.7918+00	[{"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}]	This product is moderate. Consume in limited quantities.	\N
aca155b5-0a32-4833-b217-7714045da791	9e87bedb-2a05-4cc0-9fc2-9b15bec23aa7	2026-07-02 08:42:52.916454+00	[{"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
b9373f6b-38ec-43ab-9dc8-9154837fecfa	0b29fbb1-a285-4191-83a8-724f3855c889	2026-07-02 08:42:53.0472+00	[{"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}, {"name": "BHT Butylated Hydroxytoluene", "risk": "high", "penalty": 15, "e_number": "E321"}, {"name": "Mono and Diglycerides of Fatty Acids", "risk": "low", "penalty": 2, "e_number": "E471"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
e4d7f9ad-f1c1-4211-b88b-2884b4cf44dc	866a8456-75a4-4636-b00d-189b26216cde	2026-07-02 08:42:53.179962+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a7b13a35-776a-4fa7-9d17-e480a76d4065	8482ab45-381c-4180-a0f9-bcb7d0d8ae39	2026-07-02 08:42:53.306696+00	[{"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}]	This product has a good nutritional profile. Safe to consume regularly.	\N
336cd80f-aeb1-44c4-aa1e-929b43a70563	81b2d314-7197-49d4-94df-48dd3b2ad392	2026-07-02 08:42:53.425638+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "BHA Butylated Hydroxyanisole", "risk": "high", "penalty": 15, "e_number": "E320"}]	This product is moderate. Consume in limited quantities.	\N
c7268ea4-a987-4a71-99fe-4faa6163872c	41b441cf-3352-4a1a-86cb-1d8c7572d7a6	2026-07-02 08:42:53.550144+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
1b70d1d0-995b-4dcc-9092-b1a787aef835	a7126e94-8bcb-4081-a0e4-89566a809494	2026-07-02 08:42:53.677167+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
3f7a3655-7ac2-4c31-908c-2ceee6032eb6	847fa4b9-3cbc-48ef-a625-f515c88793a9	2026-07-02 08:42:53.805738+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
570fb4e5-257b-4a27-9403-49ac964ec578	b979f8c5-b261-44ce-bdca-7cb854f44433	2026-07-02 08:42:53.935376+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
a0b4a984-9e63-42b1-a18a-8e3c7fea4fcc	77d2e2d6-041d-45f0-b353-7123acd0496e	2026-07-02 08:42:54.062451+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c543deb1-8ce1-485f-b957-98df9e1a3d47	0b9a4017-007b-4743-b05f-3399ab94f4ad	2026-07-02 08:42:54.187628+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
77fb806a-69ba-4e92-b802-03284cd09e8a	c8385e03-9b4e-4e04-868e-8f843568d77b	2026-07-02 08:42:54.309858+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
2a54caa9-8927-4999-8225-8b542ee146d6	447e3d74-a170-40a4-9c6a-b02c926bfd43	2026-07-02 08:42:54.435807+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
4f08653f-8d25-4c28-a749-a751c848024c	5bef8d4c-4237-4600-837c-a960b6ed8548	2026-07-02 08:42:54.562105+00	[{"name": "Sodium Nitrite", "risk": "harmful", "penalty": 100, "e_number": "E250"}]	This product contains harmful additives. Avoid consumption.	\N
75f962c1-94ac-40e4-94f3-ed58ae3f4462	4cf6c05c-44ef-4098-9695-de5506f8ba19	2026-07-02 08:42:54.691089+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Triphosphates", "risk": "medium", "penalty": 7, "e_number": "E451"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
91c21c82-2f2f-4f07-a9f7-b1dfa7e56ecd	52f76b07-f1ee-4fd1-88bb-dede96b7b27c	2026-07-02 08:42:54.821399+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
0723835f-119d-4f83-afdd-5f2d96435b37	0ff426d4-ab6e-429a-ad21-a0d9343ddcba	2026-07-02 08:42:54.944093+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Triphosphates", "risk": "medium", "penalty": 7, "e_number": "E451"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}]	This product has poor nutritional value. Consider healthier alternatives.	\N
94567c77-839a-4e98-b17d-e9c01eac3a76	72454402-8522-4304-ad47-da747181f85d	2026-07-02 08:42:55.07007+00	[{"name": "Monosodium Glutamate", "risk": "medium", "penalty": 7, "e_number": "E621"}, {"name": "Triphosphates", "risk": "medium", "penalty": 7, "e_number": "E451"}, {"name": "Polyphosphates", "risk": "medium", "penalty": 7, "e_number": "E452"}]	This product is moderate. Consume in limited quantities.	\N
a6909df8-ba8a-4a83-9b39-7ceec5c5e04d	e2c8d2a8-3f64-4afc-9ae3-8ecb2e62e951	2026-07-02 08:42:55.200892+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
c5fd2ba9-00fd-4a82-92a3-7a27ecc11741	10c9e2b2-c87d-4b01-9d43-eac85328cb01	2026-07-02 08:42:55.322728+00	[]	This product has a good nutritional profile. Safe to consume regularly.	\N
\.


--
-- Name: flagged_ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.flagged_ingredients_id_seq', 783, true);


--
-- Name: health_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.health_scores_id_seq', 1, false);


--
-- Name: nutrition_facts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nutrition_facts_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict LXq7ZfCaIW5KLRfAGBp9qJnARVK4ONXiaVwqlxGRmm3xJzQXsAekzxV8U7vAZOh

