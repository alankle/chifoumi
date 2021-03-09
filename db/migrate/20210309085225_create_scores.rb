class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :playername
      t.string :playermove
      t.string :botname
      t.string :botmove
      t.string :result

      t.timestamps
    end
  end
end
