class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.string :name

      t.timestamps
    end
  end
end
