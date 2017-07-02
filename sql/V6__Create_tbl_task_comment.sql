CREATE TABLE upkeep.tbl_task_comment
(
    task_comment_id serial NOT NULL,
    task_id integer NOT NULL,
    comment text NOT NULL,
    deleted_date date,
    CONSTRAINT pk_task_comment_id PRIMARY KEY (task_comment_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE upkeep.tbl_task_comment OWNER to db1;

ALTER TABLE upkeep.tbl_task_comment
    ADD CONSTRAINT fk_task_comment_task FOREIGN KEY (task_comment_id)
    REFERENCES upkeep.tbl_task_comment (task_comment_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

COMMENT ON TABLE upkeep.tbl_application
    IS 'This table will store task comments.';
