class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :Name
      t.string :Abbrev
      t.string :Subject_id

      t.timestamps
    end
  end
end
