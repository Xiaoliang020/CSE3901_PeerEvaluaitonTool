class AddCommentStudentToEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :comment_student, :integer
  end
end
