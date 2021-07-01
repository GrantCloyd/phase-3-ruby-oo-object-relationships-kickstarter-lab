class Backer 
    attr_reader :name
  @@all = []
  def self.all 
    @@all
    end

  def initialize(name) 
  @name = name
  @@all << self
  end

  def back_project(project) 
  ProjectBacker.new(project, self)
  end

  def backed_projects
  ProjectBacker.all.select {|pj| pj.backer == self}.map {|pj| pj.project }
  end

end