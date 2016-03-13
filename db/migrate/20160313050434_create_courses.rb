class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :Term
      t.string :Code
      t.string :Description
      t.float :Credits
      t.boolean :Independent_study
      t.string :Requirements

      t.timestamps
    end
  end
end
