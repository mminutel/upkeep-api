CREATE TABLE upkeep.tbl_company
(
    company_id serial NOT NULL,
    title text NOT NULL,
    short_title text NOT NULL,
    deleted_date date,
    CONSTRAINT pk_company_id PRIMARY KEY (company_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.tbl_company
    OWNER to db1;

ALTER TABLE upkeep.tbl_company
    ADD CONSTRAINT uq_company_title UNIQUE (title, deleted_date);

INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('First Energy Nuclear Operating Company','FENOC');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('Exelon','Exelon');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('Exelon Corporate','Exelon Corp.');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('SCANA','SCANA');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('Xcel Energy','XCEL');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('Energy Northwest','ENW');
INSERT INTO upkeep.tbl_company(title, short_title) VALUES ('Internal','Internal');
