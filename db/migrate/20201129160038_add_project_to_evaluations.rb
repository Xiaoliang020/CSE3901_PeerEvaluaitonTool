class AddProjectToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :project, null: false, foreign_key: true
  end
end
