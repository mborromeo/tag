class Project < ActiveRecord::Base
  
  def parent_name
    return "no parent" unless self.parent
    project = Project.find(self.parent)
    project ? project.name : "no parent"
  end
end
