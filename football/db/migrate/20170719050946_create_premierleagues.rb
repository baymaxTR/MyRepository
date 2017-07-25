class CreatePremierleagues < ActiveRecord::Migration[5.1]
  def change
    create_table :premierleagues do |t|

      t.timestamps
    end
  end
end
