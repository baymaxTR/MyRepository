class CreateSoccers < ActiveRecord::Migration[5.1]
  def change
    create_table :soccers do |t|
      t.string :title
      t.integer :coach_id
      t.integer :pitch_id
      t.integer :sponsor_id
      t.string :founded
      t.string :trophy
      t.string :coverpath
      t.text :excerpt
      t.string :owner
      t.string :visit

      t.timestamps
    end
  end
end
