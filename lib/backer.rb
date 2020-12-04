require 'pry'
class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backed = ProjectBacker.all.select{|project_backer| project_backer.backer == self}
        projects_backed.map{|project_back| project_back.project}
    end

end
