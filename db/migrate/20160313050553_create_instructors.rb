class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :First_name
      t.string :Middle_name
      t.string :Last_name
      t.string :Email

      t.timestamps
    end
  end
end
