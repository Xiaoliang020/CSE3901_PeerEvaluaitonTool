class Project < ApplicationRecord
    has_many :evaluations, foreign_key: "project_id"
    validates :projectName, presence:true, uniqueness: true
end
