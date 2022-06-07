class CreateJoinTableDishIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_ingredients do |t|
      t.integer :calories
      t.references :dish, foreign_key: true
      t.references :ingredient, foreign_key: true
    end
  end
end