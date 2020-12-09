class AddStudentToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :student, null: false, foreign_key: true
  end
end
