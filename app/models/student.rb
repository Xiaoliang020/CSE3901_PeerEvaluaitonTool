class Student < ApplicationRecord
    belongs_to :student_group
    belongs_to :user
    has_many :evaluations, foreign_key: "student_id"
    validates :lastN, presence:true
    validates :firstN, presence:true
    validates :dotNum, presence: true
    validates :user_id, uniqueness: true
end
