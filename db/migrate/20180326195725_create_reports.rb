class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :picreport
      t.string :title

      t.timestamps
    end
  end
end
