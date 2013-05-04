class CreateFrases < ActiveRecord::Migration
  def change
    create_table :frases do |t|
      t.references :user
      t.string :frase
      t.boolean :valida

      t.timestamps
    end
    add_index :frases, :user_id
  end
end
