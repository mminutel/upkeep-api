CREATE TABLE upkeep.tbl_application
(
    application_id serial NOT NULL,
    title text NOT NULL,
    short_title text NOT NULL,
    description text NOT NULL,
    deleted_date date,
    CONSTRAINT pk_application_id PRIMARY KEY (application_id),
    CONSTRAINT uq_title UNIQUE (title)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.tbl_application
    OWNER to db1;
COMMENT ON TABLE upkeep.tbl_application
    IS 'This table will store application data.';

ALTER TABLE upkeep.tbl_application
    ADD CONSTRAINT uq_application_title UNIQUE (title, deleted_date);

INSERT INTO upkeep.tbl_application(title, short_title, description) VALUES ('Equipment Reliability Management System', 'ERMS', 'This system''s main function is to determine component criticality based off of a matrix of attributes.');
INSERT INTO upkeep.tbl_application(title, short_title, description) VALUES ('Plant Health Monitor', 'PHM', 'This system''s main function is to monitor the health of plant system''s based on a predefined scoring algorithm.');
INSERT INTO upkeep.tbl_application(title, short_title, description) VALUES ('Proactive Obsolescence Management System', 'POMS', 'This system determines component obsolescence.');
INSERT INTO upkeep.tbl_application(title, short_title, description) VALUES ('Risk Classification Manager', 'RCM', 'The RCM project tracks risks to an organization and allows for various reporting including heat maps.');
