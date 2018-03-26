class CreateEthics < ActiveRecord::Migration[5.0]
  def change
    create_table :ethics do |t|
      t.text :desc

      t.timestamps
    end
  end
end
