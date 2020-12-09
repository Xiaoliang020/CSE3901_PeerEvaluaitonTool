class StudentGroup < ApplicationRecord
    has_many :students, foreign_key: "student_group_id"
    has_many :evaluations, foreign_key: "student_group_id"
    validates :group_name, presence:true, uniqueness: true
end