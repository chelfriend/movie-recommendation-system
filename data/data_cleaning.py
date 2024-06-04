import pandas as pd

def clean_imdb_data():
    movies = pd.read_csv('data/raw/title.basics.tsv', sep='\t')
    ratings = pd.read_csv('data/raw/title.ratings.tsv', sep='\t')
    # Data cleaning operations
    movies = movies[movies['titleType'] == 'movie']
    movies = movies[['tconst', 'primaryTitle', 'startYear', 'genres']]
    ratings = ratings[['tconst', 'averageRating', 'numVotes']]
    # Save cleaned data
    movies.to_csv('data/cleaned/movies_clean.csv', index=False)
    ratings.to_csv('data/cleaned/ratings_clean.csv', index=False)

if __name__ == "__main__":
    clean_imdb_data()
