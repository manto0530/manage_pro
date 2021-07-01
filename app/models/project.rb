class Project < ApplicationRecord
  has_many :project_user_relationships
  has_many :users, through: :project_user_relationships

  has_many :tasks
end
