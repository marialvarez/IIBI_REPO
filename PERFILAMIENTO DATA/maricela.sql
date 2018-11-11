create table TMP_D_ONPE (
 numdoc      VARCHAR2(20),
    digver      VARCHAR2(20),
    grpvot      VARCHAR2(20),
    ubigeo      VARCHAR2(20),
    appaterno   VARCHAR2(50),
    apmaterno   VARCHAR2(50),
    nombres     VARCHAR2(50),
    fecnac      VARCHAR2(50),
    sexo        CHAR(1)
    );

select * from tmp_d_onpe;
-- CANTIDAD DE PERSONAS EN EL PADRON
select COUNT(*) FROM tmp_d_onpe
--28525
--DIFERENTES GRUPOS DE VOTACION


SELECT
CASE WHEN TRIM(NUMDOC) IS NULL THEN 'NULOS' ELSE 'VALOR' END NUMDOC,
CASE WHEN TRIM(DIGVER) IS NULL THEN 'NULOS' ELSE 'VALOR' END DIGVER,
CASE WHEN TRIM(grpvot) IS NULL THEN 'NULOS' ELSE 'VALOR' END grpvot,
CASE WHEN TRIM(ubigeo) IS NULL THEN 'NULOS' ELSE 'VALOR' END ubigeo,
CASE WHEN TRIM(appaterno) IS NULL THEN 'NULOS' ELSE 'VALOR' END appaterno,
CASE WHEN TRIM(apmaterno) IS NULL THEN 'NULOS' ELSE 'VALOR' END apmaterno,
CASE WHEN TRIM(nombres) IS NULL THEN 'NULOS' ELSE 'VALOR' END nombres,
CASE WHEN TRIM(fecnac) IS NULL THEN 'NULOS' ELSE 'VALOR' END fecnac,
CASE WHEN TRIM(sexo) IS NULL THEN 'NULOS' ELSE 'VALOR' END sexo,
COUNT(*)
FROM TMP_D_ONPE T
GROUP BY
CASE WHEN TRIM(NUMDOC) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(DIGVER) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(grpvot) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(ubigeo) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(appaterno) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(apmaterno) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(nombres) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(fecnac) IS NULL THEN 'NULOS' ELSE 'VALOR' END,
CASE WHEN TRIM(sexo) IS NULL THEN 'NULOS' ELSE 'VALOR' END

drop table TMP_D_UBIGEO
create table TMP_D_UBIGEO (
    ubigeo                     VARCHAR2(20),
    departamento               VARCHAR2(20),
    provincia                  VARCHAR2(20),
    distrito                   VARCHAR2(20),
    codigo                     VARCHAR2(20),
    distrito_det               VARCHAR2(50),
    flgzona                    VARCHAR2(50),
    centronegocio              VARCHAR2(50),
    flgprovcentrosnegocio      VARCHAR2(50),
    distrito_agg               VARCHAR2(50),
    flgciudad                  VARCHAR2(50)
    );

select * from TMP_D_UBIGEO;
