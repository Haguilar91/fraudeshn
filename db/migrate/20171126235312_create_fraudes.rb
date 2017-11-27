class CreateFraudes < ActiveRecord::Migration[5.1]
  def change
    create_table :fraudes do |t|
      t.string :titulo
      t.string :donde
      t.text :descripcion
      t.text :links

      t.timestamps
    end
  end
end
