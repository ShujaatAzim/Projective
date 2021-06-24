class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description, default: "Add a description of this task!"
      t.string :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
