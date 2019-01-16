class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.string :desc
      t.string :duration
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
