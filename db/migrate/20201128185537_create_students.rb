class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstN
      t.string :lastN
      t.string :dotNum

      t.timestamps
    end
  end
end
