require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)

  (db.execute "SELECT COUNT(*)FROM #{table_name}").flatten.first
  #TODO: count number of rows in table table_name
end

def sorted_artists(db)
<<<<<<< HEAD
  (db.execute "SELECT name FROM Artist ORDER BY name").flatten
=======
>>>>>>> 4e19570c513fcfc81103830342e7b47efb97fc04
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  (db.execute "SELECT name FROM Track WHERE name LIKE '%love%'").flatten
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
<<<<<<< HEAD
  (db.execute "SELECT name FROM track WHERE milliseconds > #{min_length * 60000}").flatten
end

#puts number_of_rows(db, 'Artist')
#p sorted_artists(db)
#p love_tracks(db)
#p long_tracks(db, 3)
=======
end
>>>>>>> 4e19570c513fcfc81103830342e7b47efb97fc04
