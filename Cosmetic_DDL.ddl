-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2021-04-28 16:05:10 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE brand (
    brandid    VARCHAR(10) NOT NULL,
    brandname  VARCHAR(50)
);

ALTER TABLE brand ADD CONSTRAINT brand_pk PRIMARY KEY ( brandid );

CREATE TABLE color (
    colorid    VARCHAR(10) NOT NULL,
    colorname  VARCHAR(50)
);

ALTER TABLE color ADD CONSTRAINT color_pk PRIMARY KEY ( colorid );

CREATE TABLE product (
    productid      VARCHAR(10) NOT NULL,
    productname    VARCHAR(100),
    productimage   VARCHAR(200),
    price          DECIMAL(7, 2),
    launch_date    DATE,
    description    VARCHAR(4000),
    brand_brandid  VARCHAR(10) NOT NULL
);

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( productid );

CREATE TABLE product_color (
    colorid    VARCHAR(10) NOT NULL,
    productid  VARCHAR(10) NOT NULL
);

ALTER TABLE product_color ADD CONSTRAINT relation_1_pk PRIMARY KEY ( colorid,
                                                                     productid );

ALTER TABLE product
    ADD CONSTRAINT product_brand_fk FOREIGN KEY ( brand_brandid )
        REFERENCES brand ( brandid );

ALTER TABLE product_color
    ADD CONSTRAINT relation_1_color_fk FOREIGN KEY ( colorid )
        REFERENCES color ( colorid );

ALTER TABLE product_color
    ADD CONSTRAINT relation_1_product_fk FOREIGN KEY ( productid )
        REFERENCES product ( productid );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
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
