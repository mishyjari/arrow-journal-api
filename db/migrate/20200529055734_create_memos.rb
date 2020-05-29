class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :name
      t.string :content
      t.belongs_to :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
