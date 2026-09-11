

# # df = pd.read_csv("netflix_titles.csv")

# # drop column and row not needed
# df = df.drop(columns=['description'])

# df = df.dropna(subset=['date_added',  'rating' , 'duration'])

# #  fillna values with 'Unknown' for specific columns
# df['director'] = df['director'].fillna('Unknown')
# df['cast'] = df['cast'].fillna('Unknown')
# df['country'] = df['country'].fillna('Unknown')

# df['cast'] = df['cast'].str.replace(', ', '; ')
# df['director'] = df['director'].str.replace(', ', '; ')
# df['country'] = df['country'].str.replace(', ', '; ')
# df['listed_in'] = df['listed_in'].str.replace(', ', '; ')

# df['date_added'] = df['date_added'].str.strip()

# df['date_added'] = pd.to_datetime(df['date_added'])

# df.to_csv("netflix_cleaned.csv", index=False)



import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

password = quote_plus('@amaan895463')  # apna poora actual password daalo
username = 'root'

df = pd.read_csv('netflix_cleaned.csv')

# create a connection to the MySQL database
engine = create_engine(f'mysql+pymysql://{username}:{password}@localhost/netflix')

# importing data into MySQL table
df.to_sql('netflix_title', con=engine, if_exists='replace', index=False)

print("Data successfully imported!")