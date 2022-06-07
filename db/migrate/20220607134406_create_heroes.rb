class CreateHeroes < ActiveRecord::Migration[7.0]
  def change
    create_table :heroes do |t|
      t.string :name, null: false, uniqueness: true
      t.string :gender, null: false
      t.references :universe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
