class CreateRues < ActiveRecord::Migration[5.0]
  def change
    create_table :rues do |t|
      t.string :rue
      t.text :histoire

      t.timestamps
    end
  end
end
