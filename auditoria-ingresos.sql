
--NOTA DE INGRESO:
--CABECERA
declare @documento varchar(25);
set  @documento='0000016555'
--select @doc;
SELECT TOP 400   CANUMORD, CAORDFAB,* FROM  [011BDCOMUN].DBO.MOVALMCAB   WHERE  CATD='NI' AND CAALMA='01'
AND CATIPMOV='I' AND CACODMOV='CL'  AND CANUMDOC=@documento 

--DETALLE
SELECT TOP 400 * FROM [011BDCOMUN].DBO.MOVALMDET   WHERE  DENUMDOC=@documento AND  DETD='NI' AND 
DEALMA='01'  AND DECODMOV='CL'



--ORDEN DE COMPRA:
--CABECERA
SELECT TOP 400  OC_CNRODOCREF,OC_SOLICITA,* FROM [011BDCOMUN].DBO.COMOVC 
WHERE  OC_CNUMORD='0000000023947'

--DETALLE
SELECT TOP 400 * FROM [011BDCOMUN].DBO.COMOVD WHERE  OC_CNUMORD='0000000023947'


--RQ DE COMPRA:
--CABECERA
SELECT  TOP 400 * FROM [011BDCOMUN].DBO.REQUISC  WHERE  NROREQUI='0000005572' AND TIPOREQUI='RQ'

--DETALLE
SELECT  TOP 400 * FROM [011BDCOMUN].DBO.REQUISD WHERE  NROREQUI='0000005572' AND TIPOREQUI='RQ'



--PESONAL SOLCITANTE 
SELECT TOP 20 *  FROM  [011BDCOMUN].DBO.TABAYU  WHERE TCOD=12 
AND TCLAVE='90'

--AUDITORIA DE RQ
SELECT TOP 20 * FROM [020BDCOMU