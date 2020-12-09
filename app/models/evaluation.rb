class Evaluation < ApplicationRecord
    validates :score, presence:true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
    belongs_to :project
    belongs_to :student_group
    belongs_to :student
end