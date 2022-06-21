class CreateKittens < ActiveRecord::Migration[7.0]
  def change
    create_table :kittens do |t|

      t.timestamps
    end
  end
end
