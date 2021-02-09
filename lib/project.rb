class Project

    attr_accessor :title, :backers

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
        @backers = []
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        @backers << backer
    end


end