-- Gender
-- -- gender_id         Primary Key

-- GradDate
-- -- grad_date_id      Primary Key
-- -- date              date

-- Experience
-- -- experience_id     Primary Key
-- -- title             varchar
-- -- company           varchar
-- -- duration          date
-- -- location          varchar
-- -- description       varchar

-- Profile
-- -- profile_id        Primary Key
-- -- name              varchar
-- -- location          varchar
-- -- image             varchar
-- -- gender_id         INTEGER REFERENCES
-- -- graddate_id       INTEGER REFERENCES
-- -- experience_id     INTEGER REFERENCES
-- -- current job       varchar
-- -- education         varchar
-- -- skills            varchar
-- -- projects          varchar

-- Post
-- -- post_id           Primary Key
-- -- profile_id        INTEGER REFERENCES
-- -- post              varchar(255)

