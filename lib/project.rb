class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects_backed = ProjectBacker.all.select{|project_backer| project_backer.project == self}
        projects_backed.map{|project_back| project_back.backer}
    end


end
