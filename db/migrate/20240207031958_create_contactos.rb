class CreateContactos < ActiveRecord::Migration[7.1]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :email
      t.string :celular
      t.text :mensaje

      t.timestamps
    end
  end
end
