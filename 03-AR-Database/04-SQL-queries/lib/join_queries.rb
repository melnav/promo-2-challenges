require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
db.execute
"SELECT Track.name, Album.title, Artist.name
FROM Track
INNER JOIN Artist, Album
ON Track.AlbumId=Artist.ArtistId
AND Album.ArtistId == Artist.ArtistId;"
  # TODO: return the list of tracks with their album and artist
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  SELECT artist.name, COUNT(track.name)
  FROM artist
    JOIN album ON album.artistId == artistId
    JOIN track ON albumId == track.albumId
    JOIN genre ON genre.id == track.genreId
  WHERE genre.name == "Rock"

  GROUP BY artist.name


end