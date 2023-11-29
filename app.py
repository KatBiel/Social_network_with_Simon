from lib.database_connection import DatabaseConnection
from lib.artist_repository import ArtistRepository


# Connect to the database
connection = DatabaseConnection()
connection.connect()

# Seed with some seed data
connection.seed("seeds/music_library.sql")


artist_repository = ArtistRepository(connection)
artists = artist_repository.all()


for artist in artists:
    print(artist)
