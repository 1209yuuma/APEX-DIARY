class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :fight
      t.string :win
      t.string :lose

      t.timestamps
    end
  end
end
