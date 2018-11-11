OPTIONS (SKIP=1) 
LOAD DATA
INFILE 'UBIGEOS_DATA.TXT'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_D_UBIGEO
fields terminated by '|'
trailing nullcols
(
ubigeo,
departamento,
provincia,
distrito,
codigo,
distrito_det,
flgzona,
centronegocio,
flgprovcentrosnegocio,
distrito_agg,
flgciudad
)