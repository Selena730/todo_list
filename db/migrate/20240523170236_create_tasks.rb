class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :category
      t.boolean :completed

      t.timestamps
    end
  end
end
