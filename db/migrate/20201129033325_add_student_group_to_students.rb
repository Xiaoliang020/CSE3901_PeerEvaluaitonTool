class AddStudentGroupToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :student_group, null: false, foreign_key: true
  end
end
