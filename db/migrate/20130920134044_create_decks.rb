class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :category
      t.integer :userd_id
      t.timestamps
    end
  end
end
