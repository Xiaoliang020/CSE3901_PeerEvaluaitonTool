class AddStudentGroupToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :student_group, null: false, foreign_key: true
  end
end
