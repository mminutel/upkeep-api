CREATE TABLE upkeep.tbl_project
(
    project_id serial NOT NULL,
    company_id integer NOT NULL,
    application_id integer NOT NULL,
    deprecated_date date,
    deleted_date date,
    CONSTRAINT pk_project_id PRIMARY KEY (project_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.tbl_project
    OWNER to db1;
COMMENT ON TABLE upkeep.tbl_project
    IS 'This will hold all project information. A project is an application created for a specific company.';

ALTER TABLE upkeep.tbl_project
  ADD CONSTRAINT fk_project_application FOREIGN KEY (application_id)
  REFERENCES upkeep.tbl_application (application_id) MATCH SIMPLE
  ON UPDATE NO ACTION
  ON DELETE NO ACTION;

ALTER TABLE upkeep.tbl_project
    ADD CONSTRAINT fk_project_company FOREIGN KEY (company_id)
    REFERENCES upkeep.tbl_company (company_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

INSERT INTO upkeep.tbl_project(company_id, application_id) VALUES ((SELECT company_id FROM upkeep.tbl_company WHERE short_title = 'FENOC'), (SELECT application_id FROM upkeep.tbl_application WHERE short_title = 'ERMS'));
INSERT INTO upkeep.tbl_project(company_id, application_id) VALUES ((SELECT company_id FROM upkeep.tbl_company WHERE short_title = 'FENOC'), (SELECT application_id FROM upkeep.tbl_application WHERE short_title = 'PHM'));
INSERT INTO upkeep.tbl_project(company_id, application_id) VALUES ((SELECT company_id FROM upkeep.tbl_company WHERE short_title = 'Exelon Corp.'), (SELECT application_id FROM upkeep.tbl_application WHERE short_title = 'RCM'));
