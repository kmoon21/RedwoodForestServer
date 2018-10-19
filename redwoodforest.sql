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
    image                   varchar(255),
    first_name              varchar(50),
    last_name               varchar(50),
    location                varchar(50),
    email                   varchar(50),
    password                varchar(50),
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
('2018-03-17'),
('2018-11-02');

INSERT INTO "Experience" (title, company, duration, location, description)
VALUES
('Full-Stack Software Developer', 'Redwood Code Academy', '2017-03-17', 'Irvine, CA', 'Built multiple projects using JavaScript, ReactJS, React Native, Redux, Node.js, GraphQL, Express, C#, .NET, and SQL'),
('Full-Stack Software Developer', 'Redwood Code Academy', '2017-03-17', 'Irvine, CA', 'Built multiple projects using JavaScript, ReactJS, React Native, Redux, Node.js, GraphQL, Express, C#, .NET, and SQL'),
('Full-Stack Software Developer', 'RedWood Code Academy', '2017-03-17', 'Irvine, CA', 'Making that search bar look clutch');

INSERT INTO "Profile" (image, first_name, last_name, email, password, location, current_job, education, skills, projects, experience_id, gender_id, grad_date_id)
VALUES
('https://media.licdn.com/dms/image/C4E03AQHGIuoy9DMi0A/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=IofNLbjbQRMuxhnf94sgitkelIioBaWzYiUHY8oYOaE', 'Phillip', 'Ngo', 'philip@gmail.com', 'password', 'Saigon City, VN', 'Back-End Engineer at Coke', 'CSUF', 'JavaScript, React, C#, SQL', 'Let Us Choose, Spilling Sprite', 2, 2, 2 ),
('https://media.licdn.com/dms/image/C5603AQFfakgDY5EraA/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=RFr2O4VM-z-Oh9NWD6kTD6dujv8iIvGIbLX-fusuu_I', 'Eric', 'Choi', 'eric@gmail.com', 'password', 'Seoul, KR', 'Engineer at Blizzard', 'UCLA', 'JavaScript, React, Node, and Starcraft', 'Making a new starcraft',1, 1, 1),
('https://media.licdn.com/dms/image/C5603AQGfDCflr4P1hA/profile-displayphoto-shrink_200_200/0?e=1545264000&v=beta&t=FLHOH4YoOubdc4GBr0Tw-6cQTG5_9M7dc1iM_7APBL0', 'Kevin', 'Moon', 'kevin@gmail.com', 'password', 'Santa Ana, CA', 'Back-End Developer at Workspace', 'CSUF', 'JavaScript, React, C#, .NET', 'Let Us Choose, This App', 3, 1, 3),
('https://media.licdn.com/dms/image/C4E03AQGxb0JGI7F7rg/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=5xS-Z7CKtlteHXrYrQToesQT28rLPpCAqbtiBl6rK54', 'John', 'Park', 'johnpark@gmail.com', 'password', 'Irvine, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Fornite Tracker', 3, 1, 3),
('https://media.licdn.com/dms/image/C4D03AQH3EG_nXhIqog/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=RdYksQlmJ4c4R-HCtftpWq3wqI0_btn4fvYEnbqSFcc', 'Tram', 'Dinh', 'tram@gmail.com', 'password', 'Garden Grove, CA', 'Front-End Developer at Google', 'CSULB', 'JavaScript, React, C#, .NET', 'Potty Finder', 3, 2, 3),
('https://media.licdn.com/dms/image/C5603AQF9EVgdn4Pm4A/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=wFRkMUrsgrk0HOAdN4VMn6I6JHu7W7BG_IN1mLwKioE', 'Randy', 'Falcon', 'randy@gmail.com', 'password', 'Anaheim, CA', 'Back-End Developer at Codezen', 'UCLA', 'JavaScript, React, C#, .NET', 'Fornite Tracker', 3, 1, 1),
('https://media.licdn.com/dms/image/C5603AQEmEs56GFgu5Q/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=JQrK4Ex-BYsqWO83Jpi0nJH4LpaUniz71nWjEofUITw', 'Roy', 'Reynolds', 'roy@gmail.com', 'password', 'Costa Mesa, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Trucking Co.', 3, 1, 3),
('https://media.licdn.com/dms/image/C4E03AQG_77k3mUe4Ug/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=dp8EJ06lqSJjwnSo28k-0KeNlKRzIgqNjM6Muk3kN20', 'James', 'Park', 'james@gmail.com', 'password', 'Irvine, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Flashcard App', 3, 1, 3),
('https://media.licdn.com/dms/image/C5603AQHyovwa7oxpjA/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=aaoWAPOaZyzIjCl4cLV00OlyXX_sTdlZcoEvMtKRNDA', 'William', 'Yang', 'will@gmail.com', 'password', 'Irvine, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Creator of Google', 3, 1, 3),
('https://media.licdn.com/dms/image/C4D03AQG89jCeqiWHwg/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=mjFbuZo7H0i6IGlN_NPmMEa0D1-cURo1b-yYAv3vbBk', 'John', 'Chu', 'jc@gmail.com', 'password', 'La Mirada, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Cool School', 3, 1, 3),
('https://media.licdn.com/dms/image/C5603AQEReqch-pMBtQ/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=YWmsYvOqt6JFGgs2YjT-zB5yCgyrfuSiY9NW3v4HKWY', 'Jason', 'Yee', 'jason@gmail.com', 'password', 'Diamond Bar, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Cool School', 3, 1, 3),
('https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/14642346_1551639311528413_9202437866953292851_n.jpg?_nc_cat=107&_nc_ht=scontent-dfw5-1.xx&oh=e453544557da7d78c4364e46b71fa519&oe=5C8A2BBE', 'Hemal', 'Patel', 'hemal@gmail.com', 'password', 'Fountain Valley, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'The Math Game', 3, 1, 3),
('https://media.licdn.com/dms/image/C5603AQEo-_X5kPPZuA/profile-displayphoto-shrink_800_800/0?e=1545264000&v=beta&t=XNCdjobhJbst1-Na5f5iru7sl-Iu5Q1m_XPkz1VbEPA', 'Lucas', 'Cardena', 'lucas@gmail.com', 'password', 'Corona, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'The Math Game', 3, 1, 3),
('picture', 'Rick', 'Franco', 'rick@gmail.com', 'password', 'Riverside, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'The Math Game', 3, 1, 3),
('https://scontent-dfw5-1.xx.fbcdn.net/v/t31.0-8/10514430_4437123344392_2172916841099552822_o.jpg?_nc_cat=107&_nc_ht=scontent-dfw5-1.xx&oh=b902ee2f07da79a91e5e3ef7ff8aec25&oe=5C580FC8', 'Doug', 'Nguyen', 'doug@gmail.com', 'password', 'Irvine, CA', 'Front-End Developer at Codezen', 'UCI', 'JavaScript, React, C#, .NET', 'Italiano Staliono', 3, 1, 3);

INSERT INTO "Post" (post, profile_id)
VALUES
('Job opening at my work! Contact me if interested!', 1),
('My work is looking for more developers.', 2),
('There is a meetup at my work tonight.  Let me know if you want to go!', 3);

-- Hardcode everyone's inforamation
-- Hard a few posts