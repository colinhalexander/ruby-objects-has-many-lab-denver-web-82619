class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def author_name
        if self.author 
            self.author.name
        else
            nil
        end
    end

    def self.post_count

    end

end
