
DROP TABLE IF EXISTS users
DROP SEQUENCE IF EXISTS users_id_seq;
DROP TABLE IF EXISTS posts;
DROP SEQUENCE IF EXISTS posts_id_seq;


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name text,
    email text,
);


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title text,
    content tex†,
    views int,  
    user_id int,
    constraint fk_user foreign key(user_id)
    references users(id)
    on delete cascade
);


INSERT INTO users (name, email) VALUES ('John Smith', 'john.smith@example.com');
INSERT INTO users (name, email) VALUES ('Emma Johnson', 'emma.johnson@example.com');
INSERT INTO users (name, email) VALUES ('Michael Davis', 'michael.davis@example.com');
INSERT INTO users (name, email) VALUES ('Sophia Miller', 'sophia.miller@example.com');

INSERT INTO posts (title, content, views, user_id) VALUES ('Tech Innovations', 'Exploring the latest in technology', 1200, 1);
INSERT INTO posts (title, content, views, user_id) VALUES ('Healthy Recipes', 'Delicious and nutritious meal ideas', 800, 2);
INSERT INTO posts (title, content, views, user_id) VALUES ('Adventure Travel', 'Thrilling destinations for your next trip', 1500, 3);
INSERT INTO posts (title, content, views, user_id) VALUES ('Classic Literature', 'Timeless books that everyone should read', 600, 4);
INSERT INTO posts (title, content, views, user_id) VALUES ('Financial Planning Tips', 'Building a secure financial future', 1000, 5);
INSERT INTO posts (title, content, views, user_id) VALUES ('Space Exploration', 'Journeying into the cosmos', 2000, 6);
INSERT INTO posts (title, content, views, user_id) VALUES ('Fitness Motivation', 'Staying active and motivated', 900, 7);
INSERT INTO posts (title, content, views, user_id) VALUES ('Movie Recommendations', 'Must-watch films for every cinephile', 700, 8);

