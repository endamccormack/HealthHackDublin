class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :message
      t.integer :mood
      t.integer :user_id

      t.timestamps
    end
  end
end
