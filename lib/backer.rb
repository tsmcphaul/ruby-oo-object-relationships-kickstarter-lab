class Backer

    attr_accessor :name, :backed_projects

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @backed_projects = []
       
   
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        @backed_projects << project
     
    end

   
         
    


end
