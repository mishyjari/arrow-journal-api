class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.belongs_to :journal, null: false, foreign_key: true
      t.datetime :date
      t.boolean :completed
      t.boolean :important

      t.timestamps
    end
  end
end
