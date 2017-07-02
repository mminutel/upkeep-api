CREATE TABLE upkeep.lu_task_status
(
    task_status_id serial NOT NULL,
    title text NOT NULL,
    display_order integer,
    deleted_date date,
    CONSTRAINT pk_task_status_id PRIMARY KEY (task_status_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.lu_task_status OWNER to db1;

COMMENT ON TABLE upkeep.lu_task_status
    IS 'This table will store lookup values for text status.';

INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('Not Evaluated', 1);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('In Development', 2);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('Testing - Internal', 3);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('Testing - Customer', 4);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('Awaiting Deployment', 5);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('On Hold - Internal', 6);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('On Hold - Customer', 7);
INSERT INTO upkeep.lu_task_status(title, display_order) VALUES ('Closed', 8);
