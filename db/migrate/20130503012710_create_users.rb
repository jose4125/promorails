class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.string :ciudad
      t.string :fan
      t.boolean :acepta_t, default: false

      t.timestamps
    end

    add_index :users, :cedula, unique: true
  end
end
