class AddColumnsToKittens < ActiveRecord::Migration[7.0]
  def change
    add_column :kittens, :name, :string
    add_column :kittens, :age, :integer
    add_column :kittens, :cuteness, :integer
    add_column :kittens, :softness, :integer
  end
end
