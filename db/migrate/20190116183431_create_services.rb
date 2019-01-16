class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :sub_title
      t.text :which_is
      t.text :who_can_use
      t.text :more_info

      t.timestamps
    end
  end
end
