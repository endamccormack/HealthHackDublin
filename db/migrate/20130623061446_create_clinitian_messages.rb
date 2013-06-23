class CreateClinitianMessages < ActiveRecord::Migration
  def change
    create_table :clinitian_messages do |t|
      t.text :message
      t.integer :mood_id

      t.timestamps
    end
  end
end
