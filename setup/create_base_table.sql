CREATE SCHEMA startdataengg;
DROP TABLE IF EXISTS startdataengg.raw_greeting_events;
CREATE TABLE startdataengg.raw_greeting_events (
    id SERIAL PRIMARY KEY,
    input_text VARCHAR(10),
    datetime_created TIMESTAMP
);