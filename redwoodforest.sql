CREATE TABLE "Gender" (
    gender_id               SERIAL PRIMARY KEY,
    gender                  varchar(10)
);

CREATE TABLE "GradDate" (
    grad_date_id            SERIAL PRIMARY KEY,
    date                    date
);

CREATE TABLE "Experience" (
    experience_id           SERIAL PRIMARY KEY,
    title                   varchar(50),
    company                 varchar(50),
    duration                date,
    location                varchar(50),
    description             varchar(255)
);

CREATE TABLE "Profile" (
    profile_id              SERIAL PRIMARY KEY,
    first_name               varchar(50),
    last_name                varchar(50),
    location                varchar(50),
    image                   varchar(50),
    gender_id               integer REFERENCES "Gender" (gender_id),
    grad_date_id            integer REFERENCES "GradDate" (grad_date_id),
    experience_id           integer REFERENCES "Experience" (experience_id),
    current_job             varchar(50),
    education               varchar(50),
    skills                  varchar(50),
    projects                varchar(50)
);

CREATE TABLE "Post" (
    post_id             SERIAL PRIMARY KEY,
    profile_id          integer REFERENCES "Profile" (profile_id),
    post                varchar(255)
);

INSERT INTO "Gender" (gender)
VALUES
('male'),
('female');

INSERT INTO "GradDate" (date)
VALUES
('2017-03-17'),
('2017-11-09'),
('2018-03-17');

INSERT INTO "Experience" (title, company, duration, location, description)
VALUES
('Front-End Engineer', 'Technossus', '2017-03-17', 'Irvine, CA', 'Handling the front end using react.'),
('Back-End Engineer', 'Amazon', '2017-03-17', 'Irvine, CA', 'Handle all server requests with SQL'),
('Front-End Engineer', 'Google', '2017-03-17', 'Irvine, CA', 'Making that search bar look clutch');

INSERT INTO "Profile" (first_name, last_name, location, image, current_job, education, skills, projects, experience_id, gender_id, grad_date_id)
VALUES
('Eric', 'Choi','Seoul, KR', 'Picture', 'Engineer at Blizzard', 'Starcraft University', 'JavaScript, React, Node, and Starcraft', 'Making a new starcraft',1, 1, 1),
('Phillip', 'Ngo','Saigon City, VN', 'Picture', 'Back-End Engineer at Coke', 'CSUF', 'JavaScript, React, C#, SQL', 'Let Us Choose, Spilling Sprite', 2, 2, 2 ),
('John', 'Park','Irvine, CA', 'Picture', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Fornite Tracker', 3, 1, 3);

INSERT INTO "Post" (post)
VALUES
('Job opening at my work! Contact me if interested!'),
('My work is looking for more developers.'),
('There is a meetup at my work tonight.  Let me know if you want to go!');