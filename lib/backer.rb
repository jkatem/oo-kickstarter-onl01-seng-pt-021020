require 'pry'


class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    #@backers << title
    title.add_backer(self) unless title.backers.include?(self)

  end


end
