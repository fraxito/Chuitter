class CreateChuits < ActiveRecord::Migration
  def change
    create_table :chuits do |t|
      t.string :text
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
