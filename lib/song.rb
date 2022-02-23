class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
        @@genre_count = @@genres.tally
        @@artist_count = @@artists.tally
         # @@genres.each do |genre|
        #     genre.tally

        #     each_genre_count = 1
        #     if genre 
        #         each_genre_count += 1
        #         @@genre_count.each {|genre| genre.value = each_genre_count}
        #     else 
        #         @@genre_count.push {genre: 1}
        #     end
        #     genre 
        # end 

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    

end
