CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Movies (
    movie_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    genres VARCHAR(255)
);

CREATE TABLE Ratings (
    rating_id SERIAL PRIMARY KEY,
    user_id INT,
    movie_id VARCHAR(10),
    rating FLOAT,
    timestamp TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Actors (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE MovieActors (
    movie_id VARCHAR(10),
    actor_id INT,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

CREATE TABLE Directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE MovieDirectors (
    movie_id VARCHAR(10),
    director_id INT,
    PRIMARY KEY (movie_id, director_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);
