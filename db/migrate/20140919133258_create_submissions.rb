class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :company
      t.date :start
      t.date :end
      t.boolean :exceed

      t.timestamps
    end
  end
end
