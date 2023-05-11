CREATE DATABASE IF NOT EXISTS todolist;
USE todolist;
CREATE TABLE IF NOT EXISTS  entries (
        what_to_do    VARCHAR(160),
        due_date      VARCHAR(60),
        status      VARCHAR(60)
);