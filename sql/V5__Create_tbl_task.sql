CREATE TABLE upkeep.tbl_task
(
    task_id serial NOT NULL,
    title integer NOT NULL,
    description text NOT NULL,
    priority text,
    task_status_id integer,
    last_contacted_date date,
    due_date date,
    closed_date date,
    owner text,
    deleted_date date,
    CONSTRAINT pk_task_id PRIMARY KEY (task_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.tbl_task
    OWNER to db1;
COMMENT ON TABLE upkeep.tbl_task
    IS 'This will hold all information relating to tasks for a specific project.';

ALTER TABLE upkeep.tbl_task
    ADD CONSTRAINT fk_task_task_status FOREIGN KEY (task_status_id)
    REFERENCES upkeep.lu_task_status (task_status_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
