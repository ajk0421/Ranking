class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.string :title
      t.string :artist_name

      t.timestamps
    end
  end
end
