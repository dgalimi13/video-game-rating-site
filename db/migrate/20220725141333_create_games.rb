class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.belongs_to :console, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
