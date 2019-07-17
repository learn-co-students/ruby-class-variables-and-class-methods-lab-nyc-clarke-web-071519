class Song

attr_accessor :name, :artist, :genre

@@count = 0

def self.count
    @@count
end

@@artists = []

@@genres = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@count += 1
    @@genres << genre
end

def self.artists
    @@artists.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count 
    hash = {}
    @@genres.each do |genre|
        if hash[genre] 
            hash[genre] += 1
        else 
            hash[genre] = 1
    end
end
    return hash
end

def self.artist_count 
    hash = {}
    @@artists.each do |artist|
        if hash[artist] 
            hash[artist] += 1
        else 
            hash[artist] = 1
    end
end
    return hash
end

end



