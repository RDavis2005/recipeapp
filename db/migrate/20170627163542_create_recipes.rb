class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      t.string :directions
      t.integer :prep_time
      t.integer :cook_time
      t.integer :servings
      t.integer :amount
    end
  end
end
