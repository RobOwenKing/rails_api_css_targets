class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :html
      t.text :css

      t.timestamps
    end
  end
end
