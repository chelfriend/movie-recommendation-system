COPY Movies(movie_id, title, release_year, genres) FROM 'data/cleaned/movies_clean.csv' DELIMITER ',' CSV HEADER;
COPY Ratings(rating_id, user_id, movie_id, rating, timestamp) FROM 'data/cleaned/ratings_clean.csv' DELIMITER ',' CSV HEADER;
