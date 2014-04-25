require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def number_of_rows(db, table_name)

  (db.execute "SELECT COUNT(*)FROM #{table_name}").flatten.first
  #TODO: count number of rows in table table_name
end

def sorted_artists(db)
  (db.execute "SELECT name FROM Artist ORDER BY name").flatten
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  (db.execute "SELECT name FROM Track WHERE name LIKE '%love%'").flatten
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  (db.execute "SELECT name FROM track WHERE milliseconds > #{min_length * 60000}").flatten
end

#puts number_of_rows(db, 'Artist')
#p sorted_artists(db)
#p love_tracks(db)
#p long_tracks(db, 3)
