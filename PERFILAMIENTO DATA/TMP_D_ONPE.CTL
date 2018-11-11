LOAD DATA
INFILE 'DATA_ONPE.TXT'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_D_ONPE
fields terminated by '|'
trailing nullcols
(
numdoc,
digver,
grpvot,
ubigeo,
appaterno,
apmaterno,
nombres,
fecnac,
sexo
)