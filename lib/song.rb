class Song
    attr_accessor :name :artist :genre

    @@count = 0
    def initialize @@count
        @@count += 1
    end


        def self.count
            @@count
        end

        def @@genre
            []
        end
        