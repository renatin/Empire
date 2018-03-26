class CreateMissionvisions < ActiveRecord::Migration[5.0]
  def change
    create_table :missionvisions do |t|
      t.string :picvision
      t.text :descvision
      t.string :picmission
      t.text :descmission

      t.timestamps
    end
  end
end
