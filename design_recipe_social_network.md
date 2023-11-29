# Two Tables Design Recipe Template


## 1. Extract nouns from the user stories or specification

```

As a social network user,
So I can have my information registered,
I'd like to have a user account with my email address.

As a social network user,
So I can have my information registered,
I'd like to have a user account with my username

As a social network user,
So I can write on my timeline,
I'd like to create posts associated with my user account.

As a social network user,
So I can write on my timeline,
I'd like each of my posts to have a title and a content.

As a social network user,
So I can know who reads my posts,
I'd like each of my posts to have a number of views.
```

```
Nouns:

information, user account, email address, user name, timeline, posts, title, content, views
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties          |
| --------------------- | ------------------  |
| user                  | name, email 
| post                  | title, content, views, user_id

1. Name of the first table (always plural): `users` 

    Column names: `name`, `email_address`

2. Name of the second table (always plural): `posts` 

    Column names: `title`, `content`, `views`, `user_id`

## 3. Decide the column types

```
# EXAMPLE:

Table: users
id: SERIAL
name: text
email: text

Table: posts
id: SERIAL
title: text
content: text
views: int
user_id int
```

## 4. Decide on The Tables Relationship

Most of the time, you'll be using a **one-to-many** relationship, and will need a **foreign key** on one of the two tables.

To decide on which one, answer these two questions:

1. Can one [user] have many [posts]? (Yes)
2. Can one [post] have many [users]? (No)



## 5. Write the SQL

```sql

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

```

## 6. Create the tables

```bash
psql -h 127.0.0.1 social_network < social_network.sql
```

