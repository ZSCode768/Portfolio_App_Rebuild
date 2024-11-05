class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :text
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
