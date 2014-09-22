class CreateRecruitments < ActiveRecord::Migration
  def change
    create_table :recruitments do |t|
      t.string :company
      t.date :day
      t.time :start
      t.time :end
      t.string :location
      t.boolean :exceed

      t.timestamps
    end
  end
end
