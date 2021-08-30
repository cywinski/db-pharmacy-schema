-- Generated by Oracle SQL Developer Data Modeler 20.4.1.406.0906
--   at:        2021-05-28 18:55:35 CEST
--   site:      Oracle Database 21c
--   type:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE OR REPLACE TRIGGER LEK_PK_SEQ_TRG
/* Automatycznie wypelnia klucz sztuczny, 
pozwalajac rowniez na jawne podstawienie wartosci klucza sztucznego
w skryptach lub aplikacji */
    BEFORE INSERT ON LEKI_REFUNDOWANE 
    FOR EACH ROW WHEN (NEW.id_leku_refundowanego IS NULL)
BEGIN
    SELECT lek_pk_seq.NEXTVAL INTO :NEW.id_leku_refundowanego FROM dual;
END; 
/

CREATE OR REPLACE TRIGGER LEKARZ_PK_SEQ_TRG
/* Automatycznie wypelnia klucz sztuczny, 
pozwalajac rowniez na jawne podstawienie wartosci klucza sztucznego
w skryptach lub aplikacji */
    BEFORE INSERT ON LEKARZE 
    FOR EACH ROW WHEN (NEW.id_lekarza IS NULL)
BEGIN
    SELECT lekarz_pk_seq.NEXTVAL INTO :NEW.id_lekarza FROM dual;
END; 
/

CREATE OR REPLACE TRIGGER PACJ_PK_SEQ_TRG
/* Automatycznie wypelnia klucz sztuczny, 
pozwalajac rowniez na jawne podstawienie wartosci klucza sztucznego
w skryptach lub aplikacji */
    BEFORE INSERT ON PACJENCI 
    FOR EACH ROW WHEN (NEW.id_pacjenta IS NULL)
BEGIN
    SELECT pacj_pk_seq.NEXTVAL INTO :NEW.id_pacjenta FROM dual;
END; 
/

CREATE OR REPLACE TRIGGER SPRZEDAZ_PK_SEQ_TRG
/* Automatycznie wypelnia klucz sztuczny, 
pozwalajac rowniez na jawne podstawienie wartosci klucza sztucznego
w skryptach lub aplikacji */
    BEFORE INSERT ON SPRZEDAZE 
    FOR EACH ROW WHEN (NEW.id_sprzedazy IS NULL)
BEGIN
    SELECT sprzedaz_pk_seq.NEXTVAL INTO :NEW.id_sprzedazy FROM dual;
END; 
/

CREATE OR REPLACE TRIGGER REC_PK_SEQ_TRG
/* Automatycznie wypelnia klucz sztuczny, 
pozwalajac rowniez na jawne podstawienie wartosci klucza sztucznego
w skryptach lub aplikacji */
    BEFORE INSERT ON RECEPTY 
    FOR EACH ROW WHEN (NEW.numer_recepty IS NULL)
BEGIN
	SELECT rec_pk_seq.NEXTVAL INTO :NEW.numer_recepty FROM dual;
END; 
/

-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             0
-- CREATE INDEX                             0
-- ALTER TABLE                              0
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           6
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0