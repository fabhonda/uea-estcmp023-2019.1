
# Alimentar a Tabela de Regiao

INSERT INTO regiao VALUES (
   1, 'America do Norte');
INSERT INTO regiao VALUES (
   2, 'America do Sul');
INSERT INTO regiao VALUES (
   3, 'Africa / Centro Leste');
INSERT INTO regiao VALUES (
   4, 'Asia');
INSERT INTO regiao VALUES (
   5, 'Europa');
COMMIT;

# Alimenta Tabela de Almoxarifado

INSERT INTO almoxarifado VALUES (
   101, 1,
   '283 King Street',
   'Seattle', 'WA', 'USA',
   NULL,
   NULL, 6);
INSERT INTO almoxarifado VALUES (
   10501, 5,
   '5 Modrany',
   'Bratislava', NULL, 'Czechozlovakia',
   NULL,
   NULL, 10);
INSERT INTO almoxarifado VALUES (
   201, 2,
   '68 Via Centrale',
   'Sao Paulo', NULL, 'Brazil',
   NULL,
   NULL, 7);
INSERT INTO almoxarifado VALUES (
   301, 3,
   '6921 King Way',
   'Lagos', NULL, 'Nigeria',
   NULL,
   NULL, 8);
INSERT INTO almoxarifado VALUES (
   401, 4,
   '86 Chu Street',
   'Hong Kong', NULL, NULL,
   NULL,
   NULL, 9);
COMMIT;

