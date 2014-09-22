class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :company
      t.date :day
      t.time :start
      t.time :end
      t.string :localtion

      t.timestamps
    end
  end
end
