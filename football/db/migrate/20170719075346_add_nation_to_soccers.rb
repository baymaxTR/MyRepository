class AddNationToSoccers < ActiveRecord::Migration[5.1]
  def change
    add_column :soccers, :nation, :string
  end
end
