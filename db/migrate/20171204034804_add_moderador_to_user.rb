class AddModeradorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :moderador, :boolean
  end
end
